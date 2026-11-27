#!/usr/bin/env bash
set -Eeuo pipefail

# Deploy the static site in docs/ to the explicitly selected Vercel project.
# Local usage: install Vercel CLI, run "vercel login", then execute this script.
# CI usage: provide VERCEL_TOKEN as a protected GitHub Actions secret.

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd -- "${SCRIPT_DIR}/.." && pwd)"
SITE_DIR="${REPO_ROOT}/docs"

VERCEL_CLI_VERSION="${VERCEL_CLI_VERSION:-67.0.0}"
VERCEL_PROJECT_NAME="${VERCEL_PROJECT_NAME:-future_cs_roadmap}"
VERCEL_SCOPE="${VERCEL_SCOPE:-wazimbadshas-projects}"
VERCEL_PRODUCTION_URL="${VERCEL_PRODUCTION_URL:-https://futurecsroadmap.vercel.app}"

for command_name in node npx curl; do
  if ! command -v "$command_name" >/dev/null 2>&1; then
    printf 'Required command not found: %s\n' "$command_name" >&2
    exit 1
  fi
done

if [[ ! -f "${SITE_DIR}/index.html" ]]; then
  printf 'Static site entry point not found: %s/index.html\n' "$SITE_DIR" >&2
  exit 1
fi

run_vercel() {
  npx --yes --package="vercel@${VERCEL_CLI_VERSION}" vercel "$@"
}

printf 'Checking Vercel CLI identity and access...\n' >&2
run_vercel whoami --format json >/dev/null

printf 'Deploying %s to project %s (team scope: %s)...\n' \
  "$SITE_DIR" "$VERCEL_PROJECT_NAME" "$VERCEL_SCOPE" >&2

# stdout from "vercel deploy" is the deployment URL; progress remains on stderr.
deployment_url="$(
  run_vercel deploy "$SITE_DIR" \
    --prod \
    --yes \
    --project "$VERCEL_PROJECT_NAME" \
    --scope "$VERCEL_SCOPE"
)"

if ! node - "$deployment_url" <<'NODE'
const value = process.argv[2];
try {
  const url = new URL(value);
  if (url.protocol !== "https:" || !url.hostname.endsWith(".vercel.app")) {
    throw new Error("Unexpected deployment URL");
  }
} catch {
  console.error("Vercel CLI did not return a valid HTTPS deployment URL.");
  process.exit(1);
}
NODE
then
  exit 1
fi

printf 'Deployment created: %s\n' "$deployment_url" >&2
printf 'Checking production domain: %s\n' "$VERCEL_PRODUCTION_URL" >&2

response_file="$(mktemp)"
trap 'rm -f "$response_file"' EXIT

verified=false
for attempt in 1 2 3 4 5 6 7 8; do
  if curl \
    --fail \
    --silent \
    --show-error \
    --location \
    --connect-timeout 10 \
    --max-time 30 \
    "$VERCEL_PRODUCTION_URL/" \
    --output "$response_file"; then
    if grep -Fq '<title>Future-Proof CS Roadmap</title>' "$response_file"; then
      verified=true
      break
    fi
    printf 'Production returned HTML, but the expected page title was not found (attempt %s/8).\n' "$attempt" >&2
  else
    printf 'Production URL is not ready yet (attempt %s/8).\n' "$attempt" >&2
  fi
  sleep 5
done

if [[ "$verified" != true ]]; then
  printf 'Deployment URL was created, but production-domain verification failed.\n' >&2
  exit 1
fi

printf 'Production verification passed: %s\n' "$VERCEL_PRODUCTION_URL"
printf 'Deployment URL: %s\n' "$deployment_url"

if [[ -n "${GITHUB_OUTPUT:-}" ]]; then
  printf 'deployment_url=%s\n' "$deployment_url" >> "$GITHUB_OUTPUT"
fi
