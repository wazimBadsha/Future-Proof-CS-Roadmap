# Detailed Curriculum

This document expands the high-level roadmap into a practical progression.

## Stage A — Foundations

### A1. Computing model
**Learn:** binary, CPU, memory, instructions, processes, files, I/O.

**Build:** memory visualizer or small C programs.

**Exit criteria:** explain stack/heap, process memory and a system call at a conceptual level.

### A2. Programming
**Learn:** control flow, functions, types, modules, error handling, testing.

**Build:** CLI application with unit tests.

**Exit criteria:** can decompose a medium problem into testable modules.

### A3. Tooling
**Learn:** shell, Git, debugger, profiler, package managers.

**Build:** automated local development workflow.

**Exit criteria:** can reproduce and diagnose a bug without copy-pasting commands blindly.

---

## Stage B — Algorithmic reasoning

### B1. Core structures
Arrays → linked lists → stacks/queues → hash tables → trees → heaps → graphs.

### B2. Core techniques
Sorting → binary search → two pointers → sliding window → prefix sums → greedy → recursion → backtracking → dynamic programming.

### B3. Formal reasoning
For each non-trivial algorithm record:

```text
Problem
Constraints
Representation
Invariant
Algorithm
Correctness argument
Time complexity
Space complexity
Failure/edge cases
Tests
```

### B4. Transfer practice
After solving a problem with assistance, solve a structurally similar problem with the surface details changed and no solution visible.

---

## Stage C — Systems

### C1. Operating systems
Processes, threads, virtual memory, filesystems, synchronization, scheduling.

### C2. Networking
DNS, TCP/UDP, TLS, HTTP, proxies, load balancing, WebSockets.

### C3. Databases
Relational modeling, SQL, indexes, query plans, transactions, isolation, replication.

### C4. Distributed systems
Timeouts, retries, idempotency, queues, ordering, consistency, partitioning, backpressure.

**Capstone:** a distributed job system with:
- durable queue
- worker pool
- retry policy
- idempotency key
- dead-letter queue
- metrics/traces
- graceful shutdown
- recovery test

---

## Stage D — Software engineering

### D1. Design
Modularity, interfaces, dependency inversion, domain boundaries.

### D2. Testing
Unit, integration, contract, property-based, fuzzing and end-to-end tests.

### D3. Delivery
CI/CD, versioning, migrations, rollback and release notes.

### D4. Operations
Logging, metrics, tracing, SLOs and incident response.

**Capstone:** deploy a service and deliberately break:
- database connectivity
- downstream API
- queue
- DNS
- credentials
- disk space
- memory limits

Document how the system detects and recovers.

---

## Stage E — Security

### E1. Application security
Use OWASP Top 10 as the baseline.

### E2. Infrastructure security
IAM, network segmentation, secrets, container hardening, patching.

### E3. Threat modeling
For each feature:

```text
Assets
Actors
Trust boundaries
Entry points
Abuse cases
Controls
Detection
Recovery
```

### E4. AI security
Extend the model to:

```text
User input
→ retrieval
→ prompt/context
→ model
→ tool selection
→ tool execution
→ external system
```

Mark every trust boundary explicitly.

---

## Stage F — Cloud/SRE

### F1. Containers
Understand image layers, namespaces, cgroups, networking and volumes.

### F2. Kubernetes
Learn Pods, Deployments, Services, networking, storage, configuration, secrets, scheduling, health checks and security.

### F3. Infrastructure
Learn IAM, networking, object storage, compute, managed databases and queues.

### F4. Reliability
SLOs, error budgets, alerting, capacity planning, backups, disaster recovery.

**Capstone:** run a service with a documented SLO and a game-day exercise.

---

## Stage G — ML/LLM engineering

### G1. ML
Learn the minimum mathematics necessary to understand model behavior.

### G2. Embeddings and retrieval
Build semantic search, then add chunking, metadata filtering and reranking.

### G3. RAG
Measure retrieval quality separately from generation quality.

### G4. Structured generation
Use schemas and deterministic validation where possible.

### G5. Model routing
Compare models on:
- quality
- latency
- cost
- context capacity
- reliability
- privacy/data handling
- tool-use capability

### G6. Local vs hosted inference
Document:
- where model execution happens
- where state lives
- what crosses the network
- what external dependencies are required
- offline behavior
- fallback behavior

---

## Stage H — Agents

### H1. Single tool
Build an agent that can call one read-only tool.

### H2. Multiple tools
Add schema validation and permission checks.

### H3. Stateful workflow
Persist task state and resume after process restart.

### H4. Human approval
Require explicit approval for destructive or high-impact operations.

### H5. Failure handling
Inject:
- timeout
- 429
- 5xx
- malformed tool result
- unavailable tool
- duplicate request
- stale state
- partial completion

### H6. Evaluation
Create a task suite with expected outcomes and failure categories.

### H7. Security
Test prompt injection, indirect injection, tool abuse and data exfiltration.

---

## Stage I — AI-native engineering

Use AI for:

- repository exploration
- code generation
- test generation
- documentation
- refactoring proposals
- migration planning
- debugging hypotheses
- threat-model brainstorming
- review

But retain human ownership of:

- requirements
- architecture
- security decisions
- data boundaries
- production permissions
- acceptance criteria
- final verification
- operational responsibility

### AI review protocol

```text
1. State the requirement.
2. Ask AI for a plan.
3. Challenge the plan.
4. Ask AI to identify assumptions.
5. Implement in small changes.
6. Run deterministic tests.
7. Inspect the diff.
8. Review security and failure modes.
9. Test an adversarial case.
10. Commit only after verification.
```

---

## Stage J — Portfolio

Each capstone should contain:

- README
- architecture diagram
- threat model
- test strategy
- benchmark/performance notes
- failure-mode analysis
- deployment instructions
- observability screenshots or traces
- postmortem for one injected failure
- AI usage disclosure where relevant

This turns "I know X" into inspectable evidence.
