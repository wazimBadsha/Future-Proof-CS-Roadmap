# Research Validation & Claim Audit

**Research snapshot:** 2026-11-27  
**Repository:** https://github.com/wazimBadsha/Future-Proof-CS-Roadmap  
**Method:** prioritize primary specifications, official university course pages, official project documentation and maintainer publications. This is a dated snapshot, not a guarantee that every linked project will remain current.

This document separates externally verifiable facts from curriculum recommendations and implementation claims. A resource can be useful without every marketing statement about it being accepted as fact.

## 1. Claim status

| Claim | Disposition | Audit note |
|---|---|---|
| CS fundamentals remain useful when AI generates code | **Recommendation** | The roadmap's design premise, not a universal empirical law. |
| MIT 6.042J covers proof methods, discrete structures and probability | **Verified** | Official MIT OCW course description and materials support the coverage. |
| MIT 18.404J covers automata, computability and complexity | **Verified** | Official syllabus lists formal languages, decidability, reductions and complexity topics. |
| OpenMP API 6.0 is the latest published specification listed on this snapshot | **Verified** | The official specifications page lists API 6.0 as the current specification and Technical Report 15 as a July 2026 public-comment draft of API 6.1. A draft is not a published normative specification. |
| CUDA is a GPU programming model with explicit device execution concepts | **Verified** | NVIDIA's official CUDA Programming Guide describes the programming model, GPU execution and advanced multi-GPU topics. |
| PEFT reduces the number of trainable parameters by adapting a pretrained model | **Verified** | Hugging Face Transformers PEFT documentation describes adapters and supported training workflows. |
| TRL supports SFT, DPO, GRPO and reward-model workflows | **Verified at review time** | Official TRL documentation lists these trainers; APIs and maturity labels evolve. |
| vLLM exposes production inference metrics | **Verified** | Official documentation lists request, queue, TTFT, inter-token latency, throughput and KV-cache metrics. |
| MCP provides a standard model/application integration protocol | **Verified** | Official specification and release materials support the protocol role. |
| MCP itself guarantees privacy/security | **Rejected** | Protocol interoperability does not replace host authorization, consent, data handling or safe tool execution. |
| "Local" means all data stays on-device | **Rejected** | A local runtime can still call hosted models, OAuth providers, APIs, telemetry or remote tool servers. |
| AI agent = LLM + prompt | **Rejected** | Production agents can include tools, state, orchestration, permissions, policies and verification. |
| Cloud failure automatically means local fallback | **Unverified** | Fallback is an implementation property and must be demonstrated. |
| A benchmark score proves production reliability | **Rejected** | Benchmarks provide evidence under defined tasks; production reliability requires operational evidence. |
| WCAG conformance can be established by an automated scanner alone | **Rejected** | WCAG conformance requires evaluation of applicable success criteria; automated checks do not cover every criterion or interaction. |
| GitHub Pages workflow in the repo proves the public site is live | **Rejected** | Workflow source alone does not prove successful deployment or public reachability. |

## 2. Current source checks

### CS foundations and theory

- [MIT 6.042J Mathematics for Computer Science](https://ocw.mit.edu/courses/6-042j-mathematics-for-computer-science-spring-2015/) describes an introduction to discrete mathematics oriented toward CS, including proofs, sets, functions, relations, graphs, state machines, modular arithmetic, counting and discrete probability.
- [MIT 18.404J Theory of Computation](https://ocw.mit.edu/courses/18-404j-theory-of-computation-fall-2020/) lists automata and language theory, computability, decidability, reductions, time/space complexity, completeness and probabilistic computation.
- [MIT Missing Semester 2026](https://missing.csail.mit.edu/2026/) includes shell, developer tools, debugging/profiling, Git, packaging/shipping, agentic coding and code quality.
- [Harvard CS50x](https://cs50.harvard.edu/x/) remains the broad introductory CS resource used by the core curriculum. Its current course page should be consulted for the active term's exact syllabus.

### Compilers and formal methods

- [LLVM's Kaleidoscope tutorial](https://llvm.org/docs/tutorial/) is a maintained, practical introduction to implementing a small language and compiler pipeline.
- [Crafting Interpreters](https://craftinginterpreters.com/) provides practical coverage of parsing, interpreters, runtime behavior and virtual machines.
- [Leslie Lamport's TLA+ learning materials](https://lamport.azurewebsites.net/tla/learning.html) and the [TLA+ Wiki](https://docs.tlapl.us/) cover specification and model-checking workflows.
- [Alloy](https://alloytools.org/) describes a relational modeling language and analyzer. Its bounded exploration can find counterexamples within declared scopes; failure to find one is not automatically an unbounded proof.

### Parallel and GPU computing

- The [OpenMP specifications page](https://www.openmp.org/specifications/) lists OpenMP API 6.0 as the latest published specification and Technical Report 15 as a July 2026 public-comment draft of API 6.1. Do not describe the 6.1 draft as a released specification. Check the official page for subsequent status changes before implementation.
- NVIDIA's [CUDA Programming Guide](https://docs.nvidia.com/cuda/cuda-programming-guide/index.html) is the primary guide for CUDA execution and GPU programming. GPU labs in the roadmap are hardware-dependent; CPU concurrency and measurement remain required.
- The [MPI Forum](https://www.mpi-forum.org/docs/) is the canonical source for message-passing specifications.

### Model training, inference and serving

- Hugging Face [Transformers PEFT](https://huggingface.co/docs/transformers/peft) documents adapter-based parameter-efficient fine-tuning, including LoRA-family workflows and distributed-training integrations.
- Hugging Face [TRL](https://huggingface.co/docs/trl/index) documents SFT, DPO, GRPO, reward modeling and related post-training methods. The page's trainer taxonomy and maturity status are version-sensitive.
- NVIDIA [TensorRT-LLM](https://docs.nvidia.com/tensorrt-llm/) documents LLM inference optimization, multi-GPU/multi-node support and quantization options.
- [vLLM production metrics](https://docs.vllm.ai/en/latest/usage/metrics/) documents request success, queueing, TTFT, inter-token latency, throughput, preemption and KV-cache-related metrics. Use metric definitions from the installed serving version when building dashboards.

### Data engineering

The curriculum adds official entry points for [Kafka](https://kafka.apache.org/documentation/), [Flink](https://flink.apache.org/), [Iceberg](https://iceberg.apache.org/docs/latest/) and [dbt](https://docs.getdbt.com/). Their specific APIs and compatibility matrices should be checked for the chosen deployment versions. The curriculum emphasizes portable concepts: replay, schema evolution, idempotency, event time, lineage and quality contracts.

### Security, governance and accessibility

- OWASP's [GenAI LLM Top 10:2026](https://genai.owasp.org/resource/owasp-genai-llm-top-10-2026/) was published in August 2026 according to the project resource page.
- OWASP's [Top 10 for Agentic Applications:2026](https://genai.owasp.org/resource/owasp-top-10-for-agentic-applications-for-2026/) is tracked separately from the LLM application list.
- OWASP announced an Agent Control Standard in September 2026. The roadmap treats this as evolving guidance; it does not claim that an emerging standard is universally adopted or independently certified.
- [NIST AI RMF](https://www.nist.gov/itl/ai-risk-management-framework) and the [NIST Generative AI Profile](https://www.nist.gov/publications/artificial-intelligence-risk-management-framework-generative-artificial-intelligence) remain governance references. Sector-specific and later NIST work should be checked against current NIST publications before use.
- [W3C WCAG 2.2](https://www.w3.org/TR/WCAG22/) is the normative accessibility reference included in the new human-centered engineering stage. Automated scans are useful but insufficient for complete conformance evaluation.

### MCP, agents and observability

- The [MCP 2026-07-28 release](https://blog.modelcontextprotocol.io/posts/2026-07-28/) describes a stateless protocol core, multi-round-trip requests, header-based routing, cacheable list results, authorization hardening, extensions and SDK updates. Implementers must negotiate/inspect the version supported by their client and server rather than assume every deployment has every capability.
- Current [OpenAI Agents SDK documentation](https://openai.github.io/openai-agents-python/) is used as one concrete reference for tools, handoffs, guardrails, sessions, MCP integration and tracing. The curriculum is vendor-neutral.
- [OpenTelemetry GenAI semantic conventions](https://github.com/open-telemetry/semantic-conventions/blob/main/docs/registry/attributes/gen-ai.md) are evolving. Input/output message attributes may contain sensitive or personal data; instrumentation should filter, redact or avoid content capture according to policy.
- [SWE-bench](https://github.com/SWE-bench/SWE-bench) remains a useful repository-level engineering-agent benchmark. A benchmark score is not a substitute for production acceptance tests and operational evidence.

## 3. Research-driven curriculum changes in this snapshot

The detailed curriculum now contains dedicated stages for:

- K — discrete mathematics and mathematical reasoning
- L — theory of computation and formal models
- M — compilers, interpreters and programming-language implementation
- N — parallel, concurrent and GPU computing
- O — foundation-model engineering and production inference
- P — data engineering and analytical systems
- Q — formal methods and model checking
- R — embedded, edge and resource-constrained systems
- S — human-centered software, accessibility and engineering ethics

Each stage includes prerequisites, topics, labs, deliverables, measurable exit assessment and an exit gate. A progression contract maps stages A–S to observable evidence.

## 4. Red-team questions for any AI-native product

### Locality
- What runs locally?
- Where does persistent state live?
- Where does inference happen?
- Does authentication require a hosted service?
- Does telemetry leave the device?
- What still works with network access disabled?

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

## 5. Evidence hierarchy

Prefer:

1. Primary specification/documentation
2. Official source repository
3. Maintainer issue/PR
4. Academic paper or benchmark
5. Reputable independent analysis
6. Community discussion

For fast-moving AI features, do not use a third-party summary when the primary implementation/specification can be inspected.

## 6. Claim update protocol

```text
Claim
→ source
→ date checked
→ evidence
→ counter-evidence
→ disposition
→ confidence
```

If a claim changes frequently, avoid hard-coding a number into the main roadmap unless it is pedagogically important. Preserve historical versions when a change affects compatibility or security decisions.

## 7. Known evidence limitations

- This is a research/documentation audit, not a formal accreditation of the curriculum.
- A source page being reachable does not prove that every linked sub-resource is reachable or suitable for every learner.
- GPU, embedded and real-time labs depend on hardware and toolchain availability; alternatives are explicitly identified where possible.
- Model-checking results are bounded by the model, assumptions and explored state space.
- Benchmark and vendor documentation claims must be independently measured for the workload being built.
- Public repository state does not prove a Pages deployment is live; the deployment URL and GitHub deployment record must be checked separately.
