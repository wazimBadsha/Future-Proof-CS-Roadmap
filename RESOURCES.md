# Resource & Entity Registry

This registry prioritizes primary specifications, official documentation, university course material and maintained project documentation. A resource is a learning aid, not an endorsement of every tool or an assertion that its current API will remain stable.

**Research snapshot:** 2026-11-27  
**Verification policy:** links and claims below were checked against the linked official pages or primary maintainers' sources on the snapshot date where a dated release is stated. Versioned specifications must be rechecked before implementation.

## Computer science foundations

| Entity | Why it is here | Primary resource |
|---|---|---|
| Harvard CS50x | Broad introduction to C, memory, algorithms, data structures, Python, SQL, AI and web development | https://cs50.harvard.edu/x/ |
| MIT Missing Semester 2026 | Shell, tools, debugging, Git, packaging/shipping, agentic coding and code quality | https://missing.csail.mit.edu/2026/ |
| MIT 6.042J Mathematics for Computer Science | Proofs, logic, sets, functions, relations, graphs, counting and discrete probability | https://ocw.mit.edu/courses/6-042j-mathematics-for-computer-science-spring-2015/ |
| MIT 18.404J Theory of Computation | Automata, formal languages, computability, reductions and complexity theory | https://ocw.mit.edu/courses/18-404j-theory-of-computation-fall-2020/ |
| Princeton COS 226 (archived offering) | Algorithms and data structures with implementation/performance emphasis; course archive is a historical offering, not a claim of current-term availability | https://www.cs.princeton.edu/courses/archive/fall25/cos226/ |
| Princeton Algorithms | Algorithms and data structures reference/implementations | https://algs4.cs.princeton.edu/home/ |
| TakeUForward A2Z | Structured DSA practice; treat problem count and ordering as mutable page content | https://takeuforward.org/dsa/strivers-a2z-sheet-learn-dsa-a-to-z |
| NeetCode Roadmap | Pattern-based coding interview practice and review | https://neetcode.io/roadmap |
| Full Stack Open | Modern React/Node/GraphQL/TypeScript-oriented full-stack curriculum | https://fullstackopen.com/en/ |

## Compilers, languages and formal methods

| Entity | Why it is here | Primary resource |
|---|---|---|
| LLVM Kaleidoscope tutorial | Progressive implementation of a small language and compiler pipeline | https://llvm.org/docs/tutorial/ |
| Crafting Interpreters | Practical interpreters, parsing, runtime and virtual-machine concepts | https://craftinginterpreters.com/ |
| TLA+ learning materials | Formal modeling of concurrent/distributed algorithms and temporal properties | https://lamport.azurewebsites.net/tla/learning.html |
| TLA+ Wiki | Community-maintained learning and tooling documentation | https://docs.tlapl.us/ |
| Alloy | Relational modeling, bounded analysis and counterexample exploration | https://alloytools.org/ |

## Systems, architecture and infrastructure

| Entity | Why it is here | Primary resource |
|---|---|---|
| Linux Kernel Documentation | Processes, kernel interfaces, subsystems, locking and systems knowledge | https://docs.kernel.org/ |
| POSIX | Portable operating-system interfaces | https://pubs.opengroup.org/onlinepubs/9699919799/ |
| Docker Docs | Container fundamentals and workflows | https://docs.docker.com/ |
| Kubernetes | Production container orchestration concepts | https://kubernetes.io/docs/concepts/overview/ |
| PostgreSQL | Relational data modeling, SQL, transactions, concurrency and administration | https://www.postgresql.org/docs/current/ |
| Git | Version control and repository mechanics | https://git-scm.com/doc |
| OpenMP API 6.1 | Shared-memory parallel programming specification; released November 2026 | https://www.openmp.org/specifications/ |
| NVIDIA CUDA Programming Guide | GPU execution model, memory, kernels and performance | https://docs.nvidia.com/cuda/cuda-programming-guide/index.html |
| MPI Forum | Message-passing interface specifications | https://www.mpi-forum.org/docs/ |
| Embedded Rust Book | Bare-metal firmware, peripherals and safer embedded Rust practices | https://docs.rust-embedded.org/book/ |

## Data engineering and analytical systems

| Entity | Why it is here | Primary resource |
|---|---|---|
| Apache Kafka | Event streaming, producers/consumers, delivery and operations | https://kafka.apache.org/documentation/ |
| Apache Flink | Stateful stream processing, event time and checkpointing concepts | https://flink.apache.org/ |
| Apache Iceberg | Open table format, schema/partition evolution and table operations | https://iceberg.apache.org/docs/latest/ |
| dbt | SQL transformation workflows, testing and documentation | https://docs.getdbt.com/ |

## Security and governance

| Entity | Why it is here | Primary resource |
|---|---|---|
| OWASP Top 10:2025 | Baseline web application security awareness | https://owasp.org/Top10/2025/ |
| OWASP GenAI LLM Top 10:2026 | Current LLM application security risks and mitigations | https://genai.owasp.org/resource/owasp-genai-llm-top-10-2026/ |
| OWASP Top 10 for Agentic Applications:2026 | Agent-specific security risks | https://genai.owasp.org/resource/owasp-top-10-for-agentic-applications-for-2026/ |
| OWASP Agent Control Standard | Emerging controls for agentic AI systems; treat maturity/status as evolving | https://genai.owasp.org/ |
| NIST AI RMF | AI risk management | https://www.nist.gov/itl/ai-risk-management-framework |
| NIST GenAI Profile | Generative AI-specific risk management guidance | https://www.nist.gov/publications/artificial-intelligence-risk-management-framework-generative-artificial-intelligence |
| W3C WCAG 2.2 | Normative web accessibility success criteria | https://www.w3.org/TR/WCAG22/ |

## Cloud, operations and observability

| Entity | Why it is here | Primary resource |
|---|---|---|
| AWS Well-Architected | Architecture review across operational excellence, security, reliability, performance, cost and sustainability | https://docs.aws.amazon.com/wellarchitected/latest/framework/welcome.html |
| OpenTelemetry | Vendor-neutral traces, metrics and logs; GenAI semantic conventions are evolving | https://opentelemetry.io/docs/what-is-opentelemetry/ |
| OpenTelemetry GenAI semantic conventions | Model/tool operation attributes and telemetry conventions; review privacy guidance before recording content | https://github.com/open-telemetry/semantic-conventions/blob/main/docs/registry/attributes/gen-ai.md |

## AI engineering and model serving

| Entity | Why it is here | Primary resource |
|---|---|---|
| Model Context Protocol | Model/application integration with tools, resources, prompts and versioned extensions | https://modelcontextprotocol.io/ |
| MCP 2026-07-28 release | Release-specific changes including stateless core, authorization hardening and extensions | https://blog.modelcontextprotocol.io/posts/2026-07-28/ |
| Hugging Face Transformers PEFT | Parameter-efficient fine-tuning methods such as LoRA and adapter workflows | https://huggingface.co/docs/transformers/peft |
| Hugging Face TRL | SFT, DPO, GRPO, reward modeling and post-training workflows; APIs/maturity labels change | https://huggingface.co/docs/trl/index |
| NVIDIA TensorRT-LLM | Optimized LLM inference, multi-GPU serving and quantization techniques | https://docs.nvidia.com/tensorrt-llm/ |
| vLLM production metrics | Serving observability including queueing, TTFT, inter-token latency, throughput and KV-cache metrics | https://docs.vllm.ai/en/latest/usage/metrics/ |
| OpenAI Agents SDK | Agent primitives, tools, handoffs, guardrails, sessions, MCP and tracing | https://openai.github.io/openai-agents-python/ |
| SWE-bench | Repository-level software-engineering agent evaluation | https://github.com/SWE-bench/SWE-bench |

## Selection and maintenance rules

A resource enters this registry when it satisfies at least one:

- authoritative specification or standard
- high-quality academic curriculum
- maintained project documentation
- reproducible benchmark or research artifact
- strong practical engineering value

A resource should be removed or marked historical when:

- the official project is abandoned
- documentation is materially obsolete
- a newer canonical source replaces it
- the resource makes claims that cannot be independently supported

For fast-moving AI resources, record the exact specification/release date when possible. Do not copy a transient version number or benchmark count into the core curriculum unless it is pedagogically important. Distinguish stable concepts from vendor-specific implementation details.
