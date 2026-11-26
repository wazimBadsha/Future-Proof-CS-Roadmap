# Repository Validation Report

**Validation snapshot:** 2026-11-27  
**Repository:** https://github.com/wazimBadSha/Future-Proof-CS-Roadmap  
**Working branch:** `roadmap/complete-curriculum-2026-11`

## Result

The curriculum and static site have been expanded on the working branch. A dependency-free structural/accessibility-basics validator is now part of CI and its first observed run passed. This report does **not** claim that the changes are merged to `main`, that every external URL has been exhaustively crawled, that WCAG conformance has been certified, or that GitHub Pages is live.

## Repository inventory

| Path | Purpose | Current status |
|---|---|---|
| `README.md` | Core roadmap entry point and advanced-track overview | Updated for 2026-11-27 |
| `ROADMAP.md` | Core stages A–J, advanced tracks K–S, prerequisites, labs and exit gates | Expanded |
| `RESEARCH.md` | Claim/evidence/red-team audit | Refreshed for 2026-11-27 |
| `RESOURCES.md` | Primary resource registry | Expanded and dated |
| `ENTITIES.md` | Canonical entity/source map | Expanded and dated |
| `SOCIAL.md` | Publishing drafts | Present; content refresh still recommended |
| `VALIDATION.md` | Repository and publication release gate | This report |
| `docs/index.html` | Responsive, accessible-basics static landing page | Rebuilt |
| `scripts/validate_site.py` | Dependency-free HTML structure and local-anchor checks | Added |
| `.github/workflows/validate.yml` | CI validation on pushes and pull requests | Added |
| `.github/workflows/pages.yml` | GitHub Pages deployment | Existing workflow retained |

## Curriculum scope

The detailed curriculum now contains:

- **Core stages A–J:** foundations, algorithmic reasoning, systems, software engineering, security, cloud/SRE, ML/LLM, agents, AI-native engineering and portfolio.
- **Advanced stages K–S:** discrete mathematics; theory of computation; compilers/languages; parallel/GPU computing; foundation-model engineering; data engineering; formal methods; embedded/edge systems; human-centered engineering.
- A progression contract mapping each stage to prerequisites, required evidence and an exit gate.
- A universal assessment rubric: explain, implement, test, measure, transfer and defend.

The stages are a curriculum design, not an accredited degree or a guarantee of mastery. Hardware-dependent labs identify alternatives; model-checking and benchmark evidence are bounded by their assumptions and workload.

## Research validation

The 2026-11-27 research snapshot adds or refreshes primary references for:

- MIT 6.042J discrete mathematics and MIT 18.404J theory of computation.
- LLVM Kaleidoscope and Crafting Interpreters.
- OpenMP API 6.1 (November 2026), NVIDIA CUDA and MPI.
- Hugging Face PEFT and TRL, NVIDIA TensorRT-LLM and vLLM production metrics.
- Kafka, Flink, Iceberg and dbt.
- TLA+, Alloy, Embedded Rust and W3C WCAG 2.2.
- OWASP GenAI LLM Top 10:2026, OWASP Agentic Applications:2026, MCP 2026-07-28, NIST AI RMF/Profile and OpenTelemetry GenAI conventions.

See `RESEARCH.md` for dated claims, dispositions and evidence limitations. Versioned specs, SDK APIs and metrics must be checked against the version actually used by a project.

## Automated site validation

Workflow: [Validate roadmap site](https://github.com/wazimBadsha/Future-Proof-CS-Roadmap/actions/runs/45913387799)

**Observed result:** success  
**Commit:** `b59ddef3d34bc6fe0b442a18b2b86cd4bb968b43`  
**Job:** `validate` — success  
**Python:** 3.12.16  
**Validator output:** `SITE VALIDATION PASSED: 13 unique ids, 30 links`

Checks currently include:

- HTML file exists and parses with Python's standard-library HTML parser.
- One language declaration, one main landmark and one title.
- Meta description and viewport metadata.
- Skip link to the main landmark.
- Duplicate IDs and broken in-page anchors.
- HTTPS-only external links (or mailto).
- Local relative-link targets.
- Image alt attributes.
- `target=_blank` links must include `noopener noreferrer`.

**Scope limitation:** this is a structural/accessibility-basics check. It does not perform a network crawl of external URLs, browser rendering, screen-reader testing, full WCAG 2.2 conformance evaluation, link-content suitability review or JavaScript runtime testing. Those remain separate release checks.

## Static site review

The landing page uses semantic landmarks, responsive grids, keyboard-visible focus styles, a skip link, reduced-motion support and responsive overflow for its resource table. The full curriculum remains in Markdown so the static landing page does not duplicate every lesson.

## GitHub Pages validation

Expected URL:

`https://wazimbadsha.github.io/Future-Proof-CS-Roadmap/`

The repository metadata currently reports **public** visibility. This differs from the private state recorded in the September report.

The latest previously observed Pages workflow is [run 21](https://github.com/wazimBadsha/Future-Proof-CS-Roadmap/actions/runs/33884679089), from 4 September 2026. It failed at `Configure Pages`; artifact upload and deployment were skipped. That failure predates the current public visibility state.

A live deployment is **not yet verified** in this audit. The Pages settings endpoint was not exposed by the connected repository actions, and an attempt to open the expected Pages URL through the available web reader did not return a usable page response. Neither observation proves the Pages site is disabled or enabled. A fresh workflow run and deployment record are required.

### Release gate

1. Open [Repository Settings → Pages](https://github.com/wazimBadsha/Future-Proof-CS-Roadmap/settings/pages).
2. Confirm **Build and deployment → Source = GitHub Actions**.
3. Trigger or rerun the Pages workflow after the branch is merged to `main`.
4. Confirm Configure Pages, artifact upload and Deploy to GitHub Pages all succeed.
5. Confirm a GitHub Pages deployment record exists and its URL is the expected URL.
6. Open the site in a normal unauthenticated browser.
7. Check the navigation, core phases, advanced tracks, resource links and mobile layout.
8. Only then mark the public site as live.

## Figma design

The existing editable Figma design has been updated with:

- Nine advanced-track cards (K–S).
- A reusable Advanced Track Card component with text properties.
- Dark-theme primitive and semantic variables.
- Updated subtitle and full-frame height so the previous 18-phase content and new tracks are not clipped.

The design is a separate Figma artifact, not a repository-controlled file. It must be visually reviewed against the final published website after Pages deployment.

Figma file: https://www.figma.com/design/jrcJif6fJp3nhcwSrq8pyi/Future-Proof-CS-Roadmap

## Remaining release risks

- The curriculum is broad by design; role-specific depth and time estimates are not yet prescribed.
- External link reachability is not fully automated; links can move or content can change.
- Accessibility basics are checked statically, not certified against WCAG.
- Figma and HTML are updated separately and can drift.
- GitHub Pages publication remains unverified pending a fresh successful deployment.

## Confidence

| Area | Assessment |
|---|---|
| Curriculum structure and progression contracts | High |
| Dated primary-source research snapshot | High for claims explicitly listed in `RESEARCH.md`; not a permanent freshness guarantee |
| Static HTML structural checks | Verified by GitHub Actions run 45913387799 |
| Full browser and assistive-technology validation | Not run |
| External-link network crawl | Not run |
| Figma structure and track-card insertion | Verified by metadata read-back and screenshot |
| Pages deployment | Not verified |
| Merge to main | Pending |
