# Future-Proof CS Roadmap

> **A systems-first curriculum for becoming a strong software engineer in an AI-native world.**
>
> Learn the machine. Build the system. Verify the output. Then learn to orchestrate AI safely.

**Status:** Living research document · **Last reviewed:** 2026-09-04

---

## Research freshness

The roadmap was re-audited on **4 September 2026** against current primary sources for CS education, developer tooling, MCP, agentic engineering, AI security/governance, evaluation, observability and GitHub Pages. The detailed claim audit and publication status are maintained in [`RESEARCH.md`](RESEARCH.md) and [`VALIDATION.md`](VALIDATION.md).

**Important:** the GitHub Pages site is prepared in `docs/`, but public publication is not claimed until Pages configuration succeeds and an actual deployment is observed.

---

## Why this roadmap exists

AI-assisted software development changes the economics of writing code, but it does not remove the need to understand software.

The durable advantage is moving upward:

**syntax → implementation → debugging → system design → verification → orchestration → ownership**

This roadmap therefore uses a **dual-track model**:

1. **Computer science + software engineering fundamentals** — the parts that should remain understandable even when tools change.
2. **AI-native engineering** — LLM application design, agents, tool use, MCP, evaluation, observability, security, governance, and human-in-the-loop workflows.

The goal is not to memorize today's AI products. The goal is to build enough mental models that a new model, framework, protocol, or coding agent can be learned without rebuilding your engineering foundation.

---

## The core learning loop

For every major topic:

```text
Learn the model
      ↓
Implement a small version yourself
      ↓
Test it and measure it
      ↓
Use it in a real project
      ↓
Use AI to accelerate/review the work
      ↓
Verify AI output against first principles + tests
      ↓
Document trade-offs and failure modes
      ↓
Rebuild or debug a variant without assistance
```

**Rule:** an AI-generated solution is an input to engineering, not evidence that the engineer understands the solution.

---

## Roadmap at a glance

| Phase | Capability | Outcome |
|---|---|---|
| 0 | Learning & developer tooling | Can work effectively from a terminal, Git and debugger |
| 1 | Programming + CS foundations | Can reason about programs, memory, complexity and correctness |
| 2 | Data structures & algorithms | Can choose and justify algorithms rather than memorize them |
| 3 | Systems fundamentals | Understands OS, processes, memory, filesystems and concurrency |
| 4 | Networking & web | Can trace requests from application to wire and back |
| 5 | Databases & data systems | Can model data, transactions, indexes and consistency |
| 6 | Software engineering | Can build maintainable, tested and evolvable software |
| 7 | Security | Can threat-model and defend applications and infrastructure |
| 8 | Cloud, DevOps & SRE | Can ship, operate, observe and recover production systems |
| 9 | Distributed systems | Can reason about failure, consistency, queues, retries and scale |
| 10 | Architecture & product engineering | Can make explicit system trade-offs |
| 11 | ML foundations | Understands training, inference, evaluation and data pipelines |
| 12 | LLM engineering | Can build reliable model-backed applications |
| 13 | Agentic engineering | Can design tools, state, planning, permissions and workflows |
| 14 | AI evaluation & observability | Can measure agent/model behavior instead of trusting demos |
| 15 | AI security & governance | Can manage prompt injection, data exposure, agency and supply-chain risk |
| 16 | AI-native engineering practice | Can use coding agents while retaining ownership and verification |
| 17 | Portfolio & career | Can demonstrate systems thinking with production-grade evidence |

---

## Phase 0 — Developer tooling and learning mechanics

### Learn

- Shell: processes, pipes, redirection, environment variables, signals
- Git: commits, branches, rebases, merge conflicts, bisect, reflog
- Editors/IDEs and language servers
- Debuggers and profilers
- Package managers and dependency resolution
- Build systems and task runners
- Documentation search and source-code navigation
- Basic Linux administration
- Reproducible development environments

### Practical work

- Build a shell script that automates a repetitive task.
- Use `git bisect` to locate a deliberately introduced regression.
- Debug a memory/performance issue using a profiler.
- Reproduce a dependency conflict from a clean environment.

**Primary resource:** MIT's 2026 Missing Semester explicitly includes shell, development tools, debugging/profiling, Git, packaging/shipping, agentic coding and code quality.

---

## Phase 1 — Programming and CS foundations

### Learn

- Variables, types, control flow and functions
- Data representation
- Stack vs heap
- Pointers/references and object lifetime
- Memory allocation
- Recursion and call stacks
- Exceptions/errors
- Modules and packages
- Interfaces and abstraction
- Testing fundamentals
- Big-O, Big-Theta and Big-Omega
- Invariants and correctness arguments

### Recommended sequence

1. **C** for memory and machine-level intuition.
2. **Python** for high-level problem solving.
3. One production language deeply — e.g. Go, TypeScript, Java/Kotlin or Rust.
4. Read standard-library source for selected components.

### Build

- Dynamic array
- Hash table
- Linked list
- Stack/queue
- File parser
- CLI application
- HTTP client
- Small service with tests

**Primary resources:** Harvard CS50x, MIT introductory programming material, and MIT Missing Semester.

---

## Phase 2 — Data structures and algorithms

Do not treat DSA as an interview-only ritual.

Learn the relationship:

**problem constraints → representation → invariant → algorithm → complexity → implementation → tests**

### Topics

- Arrays and strings
- Hashing
- Linked lists
- Stacks and queues
- Trees and BSTs
- Heaps and priority queues
- Graphs
- Union-find
- Tries
- Sorting and searching
- Two pointers
- Sliding window
- Prefix sums
- Greedy algorithms
- Backtracking
- Divide and conquer
- Dynamic programming
- Shortest paths
- Minimum spanning trees
- Topological ordering
- Amortized analysis
- Randomized algorithms

### Practice

Use a curated problem set rather than trying to solve thousands of disconnected questions. TUF's A2Z sheet currently exposes **474 problems** across the major DSA families.

Then do transfer problems where the surface changes but the underlying pattern remains.

---

## Phase 3 — Operating systems and systems fundamentals

### Learn

- Processes and threads
- Scheduling
- Virtual memory
- Page tables
- Filesystems
- System calls
- File descriptors
- Signals
- IPC
- Synchronization
- Locks, atomics and race conditions
- Deadlocks
- CPU caches
- I/O
- Containers vs virtual machines
- Basic kernel architecture

### Build

- Mini shell
- Process supervisor
- Thread pool
- Producer/consumer queue
- Simple key-value store
- File-backed log

**Target:** when an application becomes slow or unreliable, you can reason below the framework layer.

---

## Phase 4 — Networking and web systems

### Learn

- Ethernet/IP basics
- DNS
- TCP and UDP
- TLS
- HTTP/1.1, HTTP/2 and HTTP/3 concepts
- Connection pooling
- Proxies and load balancers
- WebSockets
- REST and RPC
- Authentication and authorization
- Cookies, sessions and tokens
- Caching
- CDNs
- Rate limiting

### Build

- HTTP server
- HTTP client
- Reverse proxy
- WebSocket service
- Authenticated API
- Rate limiter

### Debugging exercise

Trace one browser request end-to-end:

```text
Browser
  → DNS
  → TCP/QUIC
  → TLS
  → CDN/proxy
  → load balancer
  → application
  → cache/database
  → response
```

---

## Phase 5 — Databases and data systems

### Relational

- Data modeling
- Keys and constraints
- Normalization
- SQL
- Joins
- Indexes
- Query plans
- Transactions
- Isolation levels
- MVCC
- Locking
- Replication
- Backups/recovery

### Non-relational

- Key-value stores
- Document stores
- Wide-column systems
- Search indexes
- Time-series systems
- Object storage
- Caches

### Data-intensive systems

- Batch vs streaming
- Event logs
- Queues
- CDC
- ETL/ELT
- Data warehouses
- Data lakes
- Partitioning
- Retention and lifecycle policies

**Rule:** learn SQL and relational reasoning before relying on an ORM.

---

## Phase 6 — Software engineering

### Learn

- Requirements and acceptance criteria
- Domain modeling
- Modularity
- Interfaces
- Dependency inversion
- API design
- Versioning
- Testing pyramid
- Contract testing
- Integration testing
- Property-based testing
- Fuzzing
- Static analysis
- Code review
- Refactoring
- Documentation
- Dependency management
- Semantic versioning
- Release engineering

### Production quality gates

Every meaningful project should have:

- lint/static checks
- unit tests
- integration tests
- security scanning
- dependency checks
- reproducible builds
- CI
- structured logging
- metrics
- traces where appropriate
- rollback strategy
- operational documentation

---

## Phase 7 — Security engineering

Security should be learned as a design discipline, not a final checklist.

### Core topics

- Threat modeling
- Authentication
- Authorization
- Session security
- Secrets management
- Cryptography fundamentals
- Key management
- Secure serialization
- Input validation
- Output encoding
- SSRF
- Injection
- CSRF
- XSS
- Supply-chain security
- Dependency security
- Container security
- Network segmentation
- Audit logging
- Incident response

Use both the **OWASP Top 10:2025** for general application security and the current **OWASP GenAI/LLM security guidance** for AI systems.

---

## Phase 8 — Cloud, DevOps and SRE

### Learn

- Containers
- Docker
- Kubernetes
- Infrastructure as code
- CI/CD
- Artifact registries
- Secrets/configuration
- IAM
- VPC/networking
- Load balancing
- Autoscaling
- Serverless
- Queues and event buses
- Object storage
- Managed databases
- Backups
- Disaster recovery
- SLO/SLI/SLA
- Incident response
- Capacity planning
- Cost management

### Operability model

```text
Deploy
  ↓
Observe
  ↓
Detect
  ↓
Diagnose
  ↓
Mitigate
  ↓
Recover
  ↓
Learn
  ↓
Improve
```

Use the AWS Well-Architected Framework as one architecture review lens; do not confuse a vendor framework with universal architecture law.

---

## Phase 9 — Distributed systems

### Learn

- Partial failure
- Timeouts
- Retries
- Exponential backoff
- Jitter
- Idempotency
- Deduplication
- Ordering
- Delivery semantics
- Leader election
- Consensus concepts
- Replication
- Sharding
- Consistency models
- CAP trade-offs
- Event-driven architecture
- Sagas
- Outbox/inbox patterns
- Circuit breakers
- Backpressure
- Distributed tracing

### The most important exercise

For every distributed feature, answer:

1. What can fail?
2. What happens if the network is slow?
3. What happens if a request is duplicated?
4. What happens if a response is lost after the operation succeeds?
5. What state is authoritative?
6. How do we recover?
7. How do we prove the behavior with tests?

---

## Phase 10 — Architecture and product engineering

Learn to make trade-offs explicit.

### Architecture vocabulary

- Modular monolith
- Microservices
- Event-driven systems
- CQRS
- Event sourcing
- Hexagonal architecture
- Clean architecture
- Domain-driven design
- API gateways
- Service mesh
- Multi-region systems
- Multi-tenancy
- Feature flags
- Progressive delivery

### Architecture review template

```text
Requirements
→ constraints
→ workload model
→ data model
→ failure model
→ security model
→ architecture
→ operational model
→ cost model
→ migration plan
→ verification plan
```

Do not choose an architecture because it is fashionable.

---

## Phase 11 — Machine learning foundations

You do not need to become a research scientist to be an excellent AI application engineer, but you need enough ML literacy to reason about model behavior.

### Learn

- Linear algebra basics
- Probability/statistics
- Optimization
- Train/validation/test splits
- Loss functions
- Gradient descent
- Overfitting
- Regularization
- Feature engineering
- Embeddings
- Classification/regression
- Neural-network basics
- Transformers
- Attention
- Fine-tuning concepts
- Inference
- Evaluation
- Data pipelines
- Model serving

### Build

- Classical ML model
- Embedding search
- Small transformer experiment
- Model evaluation harness
- Batch inference pipeline

---

## Phase 12 — LLM application engineering

### Learn

- Tokens and context windows
- Prompt design
- Structured outputs
- Function/tool calling
- Retrieval-augmented generation
- Embeddings
- Reranking
- Chunking
- Context selection
- Conversation state
- Memory design
- Model routing
- Streaming
- Caching
- Rate limits
- Cost/latency optimization
- Provider abstraction
- Local vs hosted inference

### Critical distinction

Do not define "local" merely as "the UI runs on my laptop."

Instead ask:

- Where does identity live?
- Where does persistent memory live?
- Where does the model execute?
- Where are prompts assembled?
- What data crosses the network?
- Which external services receive it?
- Who controls authorization?
- What happens when the network disappears?
- What continues to work offline?

This is the **local-state / external-capability boundary**.

---

## Phase 13 — Agentic engineering

An agent is not simply "an LLM with a prompt."

A production agent usually involves some combination of:

```text
Goal
 ↓
Context selection
 ↓
Model reasoning
 ↓
Tool selection
 ↓
Tool execution
 ↓
Observation
 ↓
State update
 ↓
Next decision
 ↓
Verification / human approval
```

### Learn

- Tool schemas
- Tool permissions
- Planning
- Replanning
- Handoffs
- State machines
- Long-running tasks
- Memory
- Checkpointing
- Human-in-the-loop
- Sandboxing
- Approval gates
- Idempotent actions
- Cancellation
- Timeouts
- Retry policy
- Budget limits
- Agent-to-agent communication
- Workflow orchestration

### MCP

Model Context Protocol provides a standardized way for applications to connect models to resources, prompts and tools. Its current published specification line includes JSON-RPC, capability negotiation, authorization, resources, prompts, tools, sampling, elicitation and task-oriented workflows.

MCP is an integration protocol, **not a security boundary by itself**. The host still needs explicit consent, authorization, data controls and safe tool execution.

---

## Phase 14 — AI evaluation and observability

This is where many AI projects remain immature.

### Evaluate more than "does the demo look good?"

Measure:

- task success
- correctness
- groundedness
- tool-call correctness
- tool-call safety
- hallucination/error rate
- latency
- token usage
- cost
- retries
- fallback rate
- refusal behavior
- regression rate
- security failures
- human escalation rate

### Evaluation layers

```text
Unit tests
   +
Component tests
   +
Golden datasets
   +
LLM-as-judge (where appropriate)
   +
Human evaluation
   +
Adversarial tests
   +
Production telemetry
```

SWE-bench is a useful reference for the principle: evaluate software-engineering agents against real repository issues and executable tests, not only conversational quality.

OpenTelemetry is a useful vendor-neutral observability foundation for traces, metrics and logs.

---

## Phase 15 — AI security and governance

### Threat model

Treat model input, model output, tool descriptions, retrieved content and external data as potentially untrusted.

Study:

- Prompt injection
- Indirect prompt injection
- Sensitive information disclosure
- Supply-chain attacks
- Data/model poisoning
- Improper output handling
- Excessive agency
- System-prompt leakage
- Vector/embedding risks
- Unbounded consumption
- Tool abuse
- Cross-tenant data leakage
- Credential exposure
- Sandbox escape
- Insecure MCP integrations

The current OWASP GenAI work should be treated as a living security reference rather than a one-time checklist. OWASP's 2026 work also includes agent-specific guidance and emerging control standards.

For governance and risk management, study NIST AI RMF and its Generative AI Profile.

---

## Phase 16 — AI-native engineering practice

### The new engineering loop

```text
Specify
  ↓
Decompose
  ↓
Delegate to AI where useful
  ↓
Inspect generated plan/code
  ↓
Run deterministic tests
  ↓
Red-team assumptions
  ↓
Review security + failure modes
  ↓
Measure
  ↓
Ship
  ↓
Observe
  ↓
Iterate
```

Human ownership remains mandatory for:

- requirements
- architecture
- security boundaries
- permissions
- acceptance criteria
- production decisions
- incident response
- final verification

The objective is **AI-accelerated engineering**, not AI-outsourced engineering judgment.

---

## Phase 17 — Portfolio and career proof

Do not build a portfolio of toy CRUD applications only.

Build a progression that demonstrates increasing engineering depth.

### Project ladder

1. **CLI/data-structure project** — correctness + tests
2. **HTTP server** — networking + concurrency
3. **SQL-backed API** — transactions + indexes
4. **Production service** — Docker + CI/CD + observability
5. **Distributed worker system** — queues + retries + idempotency
6. **RAG system** — retrieval + evaluation + security
7. **Tool-using agent** — permissions + state + verification
8. **Resilient agent platform** — orchestration + fallback + auditability

For the final project, document:

- architecture
- threat model
- failure model
- test strategy
- evaluation methodology
- observability
- cost model
- operational runbook
- postmortem for at least one induced failure

---

## A practical weekly loop

### Day 1 — Learn

Study one concept deeply enough to explain it without notes.

### Day 2 — Implement

Build a small version without relying on a framework abstraction.

### Day 3 — Break it

Introduce failures and edge cases.

### Day 4 — Apply it

Use the concept in a real project.

### Day 5 — Use AI

Ask an AI coding tool to solve/review/extend the problem.

### Day 6 — Verify

Compare the AI solution against your own model, tests and failure cases.

### Day 7 — Teach

Write what you learned, including what was wrong in your first mental model.

---

## Verification checklist

Before claiming mastery of a topic:

- [ ] I can explain the core model without an AI assistant.
- [ ] I implemented a minimal version.
- [ ] I can identify its failure modes.
- [ ] I wrote tests.
- [ ] I measured something meaningful.
- [ ] I used it in a real project.
- [ ] I reviewed an AI-generated implementation.
- [ ] I found at least one case where the AI solution was wrong/incomplete.
- [ ] I documented the trade-offs.

---

## Research policy

This roadmap distinguishes:

- **Fact** — supported by a primary or high-quality source.
- **Interpretation** — reasoned synthesis of multiple facts.
- **Recommendation** — a curriculum/design choice.
- **Unverified claim** — something that requires implementation-level evidence.

See [`RESEARCH.md`](RESEARCH.md), [`RESOURCES.md`](RESOURCES.md), [`ENTITIES.md`](ENTITIES.md) and [`VALIDATION.md`](VALIDATION.md) for the current evidence registry and audit.

## License

This roadmap is intended as a living educational/research document. Preserve attribution when reusing substantial portions.
