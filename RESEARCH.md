# Research Validation & Claim Audit

**Review date:** 2026-09-04

This document separates roadmap recommendations from externally verifiable claims. It is intentionally conservative: a resource can be valuable without every marketing statement about it being accepted as fact.

## 1. Claim status

| Claim | Disposition | Audit note |
|---|---|---|
| CS fundamentals remain useful when AI generates code | **Recommendation** | This is the roadmap's design premise, not a measurable universal law. |
| CS50x teaches C, algorithms, memory, data structures, Python, SQL and web development | **Verified** | Current CS50x 2026 materials support the broad curriculum. |
| TUF A2Z has 474 problems | **Verified at review time** | Current page shows 474; this number can change. |
| SWE-bench evaluates software-engineering agents/models on repository-level GitHub issues | **Verified** | Official benchmark materials support repository-level, test-backed evaluation. |
| MCP provides a standard protocol for model/application integration | **Verified** | Current MCP documentation and the 2026-07-28 release support this. |
| MCP itself guarantees privacy/security | **Rejected** | A protocol does not replace host authorization, consent, data handling or safe tool execution. |
| "Local" means all data stays on-device | **Rejected** | A local runtime can still call hosted models, OAuth providers, APIs, telemetry or remote tool servers. |
| AI agent = LLM + prompt | **Rejected** | Production agents can include tools, state, orchestration, permissions, policies and verification. |
| Cloud failure automatically means local fallback | **Unverified** | Fallback is an implementation property and must be demonstrated. |
| A benchmark score proves production reliability | **Rejected** | Benchmarks provide evidence under defined tasks; production reliability requires operational evidence. |

## 2. Current source checks

### Harvard CS50x 2026

The current course lists C, arrays, algorithms, memory, data structures, Python, SQL, AI, HTML/CSS/JavaScript and Flask, with a final project. This supports the roadmap's foundation-first sequence.

### MIT Missing Semester 2026

The current lecture set includes shell, command-line environment, development tools, debugging/profiling, version control and Git, packaging/shipping, agentic coding, beyond-the-code engineering and code quality. The agentic-coding lecture explicitly treats coding agents as tools that can read/write files, search the web and invoke shell commands.

### Data-structures practice

TakeUForward's current A2Z page reports 474 problems and breaks them into arrays, binary search, strings, linked lists, recursion, bit manipulation, stacks/queues, sliding window/two pointers, heaps, greedy, trees, graphs, dynamic programming and tries. The roadmap treats the count as time-sensitive.

NeetCode's current guidance emphasizes learning patterns, using an intuitive topic order and reviewing/re-solving rather than blindly accumulating problems.

### Model Context Protocol

The current 2026-07-28 MCP release is materially newer than the 2025-11-25 baseline previously referenced by this repository. It introduces a stateless protocol core, self-describing requests, header-based routing, cache hints, authorization hardening, a formal extensions framework and a deprecation policy. Tasks are an extension, and Roots, Sampling and Logging are deprecated in that release.

**Roadmap correction:** future references should use the current MCP specification line rather than treating 2025-11-25 as the current baseline.

### OWASP GenAI and agent security

OWASP now publishes separate 2026 guidance for LLM/GenAI applications and agentic applications. The roadmap therefore treats prompt injection, sensitive information disclosure, supply chain, excessive agency, tool abuse and related risks as first-class engineering topics.

### NIST

NIST's AI RMF and Generative AI Profile remain useful governance/risk-management references. The GenAI Profile page reports an April 8, 2026 update.

### GitHub Pages

GitHub Pages supports publishing an existing repository through a branch or a custom GitHub Actions workflow. This repository now contains a dependency-free static site under `docs/` and a workflow using `actions/checkout`, `actions/configure-pages`, `actions/upload-pages-artifact` and `actions/deploy-pages`.

The repository metadata was still reporting `has_pages=false` during this review, so the site is **prepared but not proven live** until Pages is enabled and a successful deployment is observed.

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
