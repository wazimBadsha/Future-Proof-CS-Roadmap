# Research Validation & Claim Audit

**Review date:** 2026-09-02

This document separates roadmap recommendations from externally verifiable claims. It is intentionally conservative: a resource can be valuable without every marketing statement about it being accepted as fact.

## 1. Claims carried forward from the previous README

| Claim | Disposition | Audit note |
|---|---|---|
| CS fundamentals remain useful when AI generates code | **Recommendation** | This is the roadmap's design premise, not a measurable universal law. |
| CS50x teaches C, algorithms, memory, data structures, Python, SQL and web development | **Verified** | Current CS50x syllabus supports the broad curriculum. |
| TUF A2Z has 474 problems | **Verified at review time** | Current TUF page shows 474 problems. This number may change. |
| SWE-bench evaluates software agents/models on real GitHub issues | **Verified** | Official SWE-bench materials describe real-world GitHub issues and test-based evaluation. |
| MCP standardizes model/application integration with external data and tools | **Verified** | Official MCP specification. |
| MCP itself guarantees privacy/security | **Rejected** | MCP documentation explicitly places consent, authorization and safe implementation responsibilities on hosts/implementors. |
| "Local" means all data stays on-device | **Rejected** | This is too broad. A local application can still call hosted models, OAuth providers, APIs, telemetry or remote tool servers. |
| AI agent = LLM + prompt | **Rejected** | Production agents normally involve tools, state, orchestration, permissions and runtime behavior. |
| Cloud failure automatically means local fallback | **Unverified** | Fallback is an implementation property. It must be demonstrated per product/repository. |

---

## 2. Current research updates

### MIT Missing Semester

The 2026 course explicitly includes:
- shell
- command-line environment
- development tools
- debugging/profiling
- Git
- packaging/shipping
- agentic coding
- beyond-the-code engineering
- code quality

This is a strong signal for the roadmap's decision to treat developer tooling and AI-enabled workflows as part of practical engineering education rather than as a separate "AI-only" track.

### Model Context Protocol

The published 2025-11-25 specification describes:
- JSON-RPC
- stateful protocol/lifecycle concepts
- capability negotiation
- authorization for HTTP transports
- resources
- prompts
- tools
- sampling
- elicitation
- tasks

The MCP specification also stresses user consent, data privacy, tool safety and explicit controls. Therefore this roadmap treats MCP as a **capability/integration protocol**, not as a substitute for authorization or security architecture.

The MCP project also has 2026-era implementation work around a 2026-07-28 protocol revision in its TypeScript SDK documentation. The roadmap does **not** label that draft/implementation line as the stable baseline unless the specification itself establishes it.

### OWASP GenAI security

The OWASP project has evolved beyond the historical "LLM Top 10" framing into a broader GenAI Security Project. Current materials cover risks including prompt injection, sensitive information disclosure, supply chain, data/model poisoning, improper output handling, excessive agency, system prompt leakage and other AI-specific concerns.

The roadmap therefore treats AI security as a first-class engineering phase rather than a prompt-engineering appendix.

### NIST AI RMF

NIST's AI Risk Management Framework and Generative AI Profile provide a governance/risk-management lens across the AI lifecycle. The roadmap uses this as a governance reference, not as a substitute for engineering controls.

### SWE-bench

SWE-bench's central lesson is methodological: software-engineering agents should be evaluated against real repository-level tasks and executable tests. This supports the roadmap's emphasis on deterministic tests, transfer tasks and repository-level evaluation.

### OpenTelemetry

OpenTelemetry is a vendor-neutral framework/toolkit for generating, collecting and exporting telemetry such as traces, metrics and logs. This supports the roadmap's recommendation to learn observability independently of any single backend vendor.

---

## 3. Red-team questions for any "AI-native" product

Before accepting claims about an AI system, ask:

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
- Are tool outputs trusted?

### Agent authority

- What tools can the model call?
- Which are read-only?
- Which are destructive?
- Is human approval required?
- Are permissions scoped per action?
- Are credentials isolated?

### Reliability

- What happens on timeout?
- What happens on 429?
- What happens on 5xx?
- What happens when a tool disappears?
- Can a request be retried safely?
- Is the operation idempotent?
- What happens after process restart?

### Persistence

- What state is committed before external calls?
- What state is committed after external calls?
- Can partial execution be resumed?
- Can duplicate execution corrupt state?

### Observability

- What gets logged?
- Are prompts or sensitive data logged?
- Are tool calls traceable?
- Can operators reconstruct a failed task?
- Is telemetry itself an external dependency?

### Supply chain

- Which model providers are used?
- Which SDKs are trusted?
- Which MCP servers/extensions are installed?
- How are dependencies updated?
- Are versions pinned?
- Are artifacts verified?

---

## 4. Evidence hierarchy

Prefer:

1. Primary specification/documentation
2. Official source repository
3. Maintainer issue/PR
4. Academic paper / benchmark
5. Reputable independent analysis
6. Community discussion

For fast-moving AI features, do not use a third-party summary when the primary implementation/specification can be inspected.

---

## 5. Update policy

When adding a claim:

```text
Claim
→ source
→ date checked
→ evidence
→ confidence
→ counter-evidence
→ conclusion
```

If a claim changes frequently, avoid hard-coding a number into the main roadmap unless the number is pedagogically important.
