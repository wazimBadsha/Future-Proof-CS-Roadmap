# Research Validation & Claim Audit

**Review date:** 2026-09-04

This document separates roadmap recommendations from externally verifiable claims. It is intentionally conservative: a resource can be valuable without every marketing statement about it being accepted as fact.

## 1. Claim status

| Claim | Disposition | Audit note |
|---|---|---|
| CS fundamentals remain useful when AI generates code | **Recommendation** | This is the roadmap's design premise, not a measurable universal law. |
| CS50x teaches C, algorithms, memory, data structures, Python, SQL and web development | **Verified** | Current CS50x materials support the broad curriculum. |
| TUF A2Z has 474 problems | **Verified at review time** | Current page shows 474; this number can change. |
| SWE-bench evaluates software-engineering agents/models on repository-level GitHub issues | **Verified** | Official benchmark materials support repository-level, test-backed evaluation. |
| MCP provides a standard protocol for model/application integration | **Verified** | Current MCP documentation and 2026 release material support this. |
| MCP itself guarantees privacy/security | **Rejected** | A protocol does not replace host authorization, consent, data handling or safe tool execution. |
| "Local" means all data stays on-device | **Rejected** | A local runtime can still call hosted models, OAuth providers, APIs, telemetry or remote tool servers. |
| AI agent = LLM + prompt | **Rejected** | Production agents can include tools, state, orchestration, permissions, policies and verification. |
| Cloud failure automatically means local fallback | **Unverified** | Fallback is an implementation property and must be demonstrated. |
| A benchmark score proves production reliability | **Rejected** | Benchmarks provide evidence under defined tasks; production reliability requires operational evidence. |
| GitHub Pages workflow in the repo proves the public site is live | **Rejected** | The workflow exists, but the latest deployment failed at Pages configuration because Pages is not enabled/configured for this repository. |

## 2. Current source checks

### Harvard CS50x

Current CS50x materials cover C, arrays, algorithms, memory, data structures, Python, SQL, AI, HTML/CSS/JavaScript and Flask, with a final project. This supports the roadmap's foundation-first sequence.

### MIT Missing Semester 2026

The current lecture set includes shell, command-line environment, development tools, debugging/profiling, version control and Git, packaging/shipping, agentic coding, beyond-the-code engineering and code quality. The agentic-coding material treats coding agents as tools that can read/write files, search the web and invoke shell commands.

### Data-structures practice

TakeUForward's current A2Z page reports 474 problems and covers arrays, binary search, strings, linked lists, recursion, bit manipulation, stacks/queues, sliding window/two pointers, heaps, greedy, trees, graphs, dynamic programming and tries. The roadmap treats the count as time-sensitive.

NeetCode's roadmap remains useful for pattern-based interview practice and review/re-solving rather than blindly accumulating problem counts.

### Model Context Protocol

The 2026-07-28 MCP release is materially newer than the 2025-11-25 baseline previously referenced by this repository. The roadmap therefore uses the current protocol line and treats version-specific capabilities as versioned facts rather than permanent properties.

Important boundary: MCP is an interoperability protocol, not a security boundary. Authorization, consent, credential handling, tool isolation and data minimization remain host/application responsibilities.

### OWASP GenAI and agent security

OWASP's 2026 GenAI LLM Top 10 is now a current reference alongside the separate Top 10 for Agentic Applications 2026. OWASP also announced a new Agent Control Standard in September 2026. The roadmap therefore treats prompt/indirect injection, sensitive information disclosure, supply chain, excessive agency, tool abuse, identity/authorization and runtime controls as first-class engineering topics.

### NIST

NIST's AI RMF remains the primary governance framework used by this roadmap, with the Generative AI Profile as a specialized reference. NIST is also developing a Trustworthy AI in Critical Infrastructure profile in 2026, reinforcing the roadmap's distinction between general governance principles and sector-specific controls.

### Agentic engineering and evaluation

Current agent frameworks emphasize tools, handoffs/orchestration, guardrails, state/session management, MCP integration and tracing. SWE-bench remains useful as repository-level engineering evidence, but benchmark results should not be treated as proof of production reliability.

### Observability

OpenTelemetry's current GenAI observability work supports tracing model calls, tool calls and AI workflow behavior. The roadmap therefore treats observability as an architectural capability and also asks whether telemetry itself crosses a trust boundary.

### GitHub Pages

GitHub Pages supports custom GitHub Actions workflows using the Pages configuration, artifact upload and deployment actions. The repository contains a dependency-free static site under `docs/` and a Pages workflow.

However, the latest observed deployment run failed at **Configure Pages** and did not reach artifact upload/deployment. The repository is also currently private. GitHub documents Pages availability by repository visibility and plan, so the public site must not be marked live until Pages is enabled/configured and a successful deployment is observed.

## 3. Red-team questions for any AI-native product

### Locality

- What runs locally?
- What runs remotely?
- Where is persistent state stored?
- Does authentication require a hosted service?
- Does telemetry leave the device?
- What happens with network access disabled?

### Context boundary

- What exact fields are serialized?
- Is the whole memory/database sent?
- Are retrieved documents filtered?
- Are secrets redacted?
- Are tool outputs treated as untrusted input?

### Agent authority

- What tools can the model call?
- Which are read-only?
- Which are destructive?
- Are permissions scoped per action?
- Are credentials isolated?
- Is approval required for high-impact actions?

### Reliability

- What happens on timeout, 429 and 5xx?
- What happens when a tool disappears?
- Can a request be retried safely?
- Is the operation idempotent?
- What happens after process restart?

### Persistence

- What state is committed before an external call?
- What state is committed after it?
- Can partial execution resume?
- Can duplicate execution corrupt state?

### Observability

- What gets logged?
- Are prompts or sensitive data logged?
- Are tool calls traceable?
- Can an operator reconstruct a failed task?
- Is telemetry itself an external dependency?

### Supply chain

- Which model providers are used?
- Which SDKs and MCP servers are trusted?
- How are dependencies pinned and updated?
- Are artifacts verified?

## 4. Evidence hierarchy

Prefer:

1. Primary specification/documentation
2. Official source repository
3. Maintainer issue/PR
4. Academic paper or benchmark
5. Reputable independent analysis
6. Community discussion

For fast-moving AI features, do not use a third-party summary when the primary implementation/specification can be inspected.

## 5. Claim update protocol

```text
Claim
→ source
→ date checked
→ evidence
→ counter-evidence
→ disposition
→ confidence
```

If a claim changes frequently, avoid hard-coding a number into the main roadmap unless it is pedagogically important.
