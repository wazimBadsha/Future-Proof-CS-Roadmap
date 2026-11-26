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

---

## Stage K — Discrete mathematics and mathematical reasoning

**Purpose:** build the mathematical language used by algorithms, databases, cryptography, compilers, distributed systems, machine learning and formal verification.

**Prerequisites:** basic algebra, arithmetic, and the ability to read simple program logic. Learners who are rusty should review algebra and functions first.

### K1. Logic and proof
- Propositions, predicates, quantifiers and logical equivalence
- Implication, contrapositive, contradiction and proof by cases
- Direct proof, induction, strong induction and structural induction
- Invariants and loop-correctness arguments
- Soundness, completeness and counterexamples

### K2. Sets, functions and relations
- Set operations, Cartesian products and power sets
- Functions, injectivity, surjectivity and bijections
- Equivalence relations and partitions
- Partial orders, lattices and dependency relations
- Cardinality and countability at an introductory level

### K3. Counting and discrete probability
- Sum and product rules
- Permutations, combinations and binomial coefficients
- Pigeonhole principle and inclusion–exclusion
- Conditional probability, independence and Bayes' rule
- Random variables, expectation and variance
- Concentration intuition and randomized algorithm analysis

### K4. Graphs, trees and recurrences
- Directed/undirected, weighted and bipartite graphs
- Paths, cycles, connectivity, trees and spanning trees
- Graph representations and traversal invariants
- Recurrence relations and asymptotic solutions
- Modular arithmetic and elementary number theory

### K5. Labs
1. Write proofs for binary search, loop invariants and a recursive tree algorithm.
2. Model a dependency scheduler as a directed acyclic graph and detect cycles.
3. Calculate collision probabilities for a hash space and explain the assumptions.
4. Implement a recurrence solver and compare its growth with measured runtime.
5. Build a small property-based test suite from algebraic laws.

### Deliverables
- A proof notebook containing at least eight short proofs and counterexamples.
- A graph-based dependency planner with cycle detection and topological ordering.
- A short written analysis of a randomized algorithm's expected behavior.

### Measurable exit assessment
- Translate English requirements into predicates and invariants.
- Produce a valid induction proof and identify an invalid proof step.
- Choose and justify a graph representation and traversal.
- Derive a simple recurrence and explain its asymptotic growth.
- Solve conditional-probability questions without confusing independence and mutual exclusivity.

**Exit gate:** pass a closed-notes assessment, submit the proof notebook, and explain one proof and one probability model orally.

**Primary resource:** [MIT 6.042J Mathematics for Computer Science](https://ocw.mit.edu/courses/6-042j-mathematics-for-computer-science-spring-2015/). Its official course description covers proofs, sets, functions, relations, graphs, state machines, modular arithmetic, counting and discrete probability.

---

## Stage L — Theory of computation and formal models

**Purpose:** understand the limits of computation, the structure of formal languages, and why some problems cannot be solved efficiently—or at all—by algorithms.

**Prerequisites:** Stage K (logic, proof techniques, sets, functions and graphs), basic programming and algorithm analysis.

### L1. Finite-state computation
- Alphabets, strings, languages and language operations
- Deterministic and nondeterministic finite automata
- Regular expressions and regular languages
- Closure properties and pumping lemma intuition
- Practical connection: lexical analysis, protocol parsers and input validators

### L2. Grammars and pushdown computation
- Context-free grammars and parse trees
- Pushdown automata
- Ambiguity, precedence and associativity
- Normal forms and grammar transformations
- Practical connection: parser design and language tooling

### L3. Computability
- Turing machines and equivalent computation models
- Church–Turing thesis as a model thesis
- Decidable, recognizable and undecidable languages
- Halting problem and reductions
- Practical connection: limits of static analysis and automated program reasoning

### L4. Complexity theory
- Time and space complexity classes
- P, NP, co-NP and polynomial-time reductions
- NP-completeness and proof structure
- Hierarchy intuition and tractability
- Randomized and interactive computation at survey depth
- Practical connection: recognizing intractable optimization and choosing approximation, heuristics or constraints

### Labs
1. Implement a DFA simulator and test accepted/rejected strings.
2. Write a lexer for a small expression language using token definitions.
3. Implement a recursive-descent parser for arithmetic expressions.
4. Reduce a small decision problem to a known problem and explain the reduction.
5. Classify examples as decidable, recognizable or not known to be decidable, with justification.

### Deliverables
- A finite automaton simulator with a test corpus.
- A lexer/parser for a documented mini-language.
- A short complexity notebook containing reductions and tractability analyses.

### Measurable exit assessment
- Construct a DFA for a specified regular language.
- Explain why a grammar is ambiguous and remove ambiguity for a bounded expression grammar.
- Distinguish decidability from practical tractability.
- Explain the halting problem and the role of reduction without claiming that every difficult problem is undecidable.
- Identify when a problem is a poor fit for exact polynomial-time optimization.

**Exit gate:** submit the parser, pass a language/automata exercise, and defend one reduction or complexity argument.

**Primary resource:** [MIT 18.404J Theory of Computation](https://ocw.mit.edu/courses/18-404j-theory-of-computation-fall-2020/). The official syllabus lists automata, regular and context-free languages, decidability, reductions, time/space complexity, completeness and probabilistic computation.

---

## Stage M — Compilers, interpreters and programming-language implementation

**Purpose:** understand how source code becomes executable behavior, and how language design choices affect correctness, performance, safety and developer experience.

**Prerequisites:** Stage A programming foundations, Stage K proofs/induction and Stage L grammars/automata. Familiarity with C, C++ or Rust is useful but not mandatory for the first interpreter.

### M1. Language design
- Syntax versus semantics
- Static and dynamic typing; nominal and structural typing
- Type inference, generics and polymorphism
- Scope, closures, evaluation order and mutability
- Memory ownership, garbage collection and lifetimes
- Error models, exceptions and algebraic data types

### M2. Front ends
- Lexing and token streams
- Parsing: recursive descent, Pratt parsing and parser generators
- Abstract syntax trees and source locations
- Name resolution, symbol tables and scopes
- Type checking and semantic analysis
- Diagnostics and error recovery

### M3. Intermediate representations and optimization
- AST versus intermediate representation (IR)
- Control-flow graphs and basic blocks
- Static single assignment (SSA) intuition
- Data-flow analysis and liveness
- Constant folding, dead-code elimination and inlining
- Optimization correctness and debug information

### M4. Back ends and execution
- Bytecode interpreters and virtual machines
- Instruction selection and register allocation concepts
- Calling conventions, stack frames and linking
- JIT versus ahead-of-time compilation
- Runtime systems, garbage collectors and deoptimization
- WebAssembly and portable execution models

### Labs
1. Implement a tokenizer and Pratt parser for arithmetic and boolean expressions.
2. Add lexical scopes, variables, functions and closures to a tree-walk interpreter.
3. Add a static type checker for a deliberately small type system.
4. Compile the language to bytecode and implement a stack VM.
5. Add one semantics-preserving optimization and prove it with differential/property tests.

### Deliverables
- A documented mini-language with grammar and semantics.
- An interpreter plus test suite.
- A bytecode VM or LLVM-based compiler prototype.
- A short design note explaining type, memory and error-model choices.

### Measurable exit assessment
- Explain the difference between parsing, semantic analysis, IR lowering and code generation.
- Trace a source expression through tokens, AST, IR and execution.
- Identify a scope/type error before runtime.
- Explain why an optimization preserves observable behavior under stated assumptions.
- Diagnose a stack-frame, calling-convention or runtime-lifetime bug.

**Exit gate:** implement the language pipeline end-to-end and pass tests for precedence, scoping, type errors, runtime errors and optimization equivalence.

**Primary resources:** [LLVM Kaleidoscope tutorial](https://llvm.org/docs/tutorial/) for a progressive language implementation; [Crafting Interpreters](https://craftinginterpreters.com/) for interpreters and runtime design. These are complementary practical references, not substitutes for compiler theory.

---

## Stage N — Parallel, concurrent and GPU computing

**Purpose:** reason about performance when work executes across cores, vector lanes, accelerators and multiple devices. Parallelism is not automatically faster: synchronization, memory movement, contention and workload shape determine the result.

**Prerequisites:** programming, data structures, operating-system processes/threads, memory hierarchy and basic algorithm analysis.

### N1. Concurrency and parallelism
- Concurrency versus parallel execution
- Shared-memory and message-passing models
- Data races, race freedom and happens-before
- Locks, atomics, barriers, condition variables and semaphores
- Deadlock, livelock, starvation and false sharing
- Work decomposition, task scheduling and work stealing
- Amdahl's law, Gustafson's law and scalability limits

### N2. CPU architecture and vectorization
- Cache hierarchy, cache lines and locality
- SIMD/vector instructions and alignment
- Branch prediction and instruction-level parallelism
- NUMA awareness and memory bandwidth
- Profiling, flame graphs and hardware counters
- Roofline-model intuition: compute-bound versus bandwidth-bound

### N3. Parallel programming models
- Thread pools, futures and structured concurrency
- OpenMP work-sharing, tasks and synchronization
- Message passing and MPI concepts
- Map/reduce and distributed data-parallel patterns
- Cancellation, bounded queues and backpressure
- Deterministic testing of concurrent behavior

### N4. GPU programming
- CPU/GPU execution and host/device memory
- Kernels, grids, blocks, warps and threads
- Memory coalescing, shared memory and occupancy
- Synchronization, atomics and race detection
- Transfers, batching and launch overhead
- Multi-GPU communication and collective operations
- GPU profiling and numerical precision trade-offs

### N5. AI/HPC connection
- Tensor operations and matrix multiplication
- Mixed precision and accumulation behavior
- Data parallelism, tensor parallelism and pipeline parallelism
- Gradient synchronization and checkpointing
- KV-cache memory, batching and serving throughput
- Benchmarking throughput, latency, utilization and cost

### Labs
1. Implement a parallel reduction and compare it with a serial reference.
2. Reproduce a race condition, then remove it using a documented synchronization strategy.
3. Benchmark CPU vectorization and memory-layout alternatives.
4. Implement a GPU vector-add or matrix-multiplication kernel when compatible hardware is available; otherwise use a simulator or inspect a provided kernel.
5. Profile an inference workload and identify whether it is compute-, memory-, transfer- or scheduling-bound.

### Deliverables
- A serial-versus-parallel benchmark with reproducible workload and hardware notes.
- A race-free concurrent worker pool with cancellation and bounded backpressure.
- A GPU kernel report with correctness tests and profiler evidence, or a clearly labeled hardware-unavailable analysis.

### Measurable exit assessment
- Distinguish concurrency, parallelism and asynchronous I/O.
- Explain a data race using happens-before reasoning.
- Estimate the theoretical speedup limit for a workload using Amdahl's law.
- Identify cache false sharing or memory-bandwidth bottlenecks from measurements.
- Explain GPU occupancy, memory coalescing and transfer overhead at a conceptual level.
- Report performance with warm-up, repeated trials, variance and correctness checks.

**Exit gate:** submit a reproducible benchmark, demonstrate race-free behavior under stress, and explain one optimization whose benefit is supported by measurements rather than assumption.

**Primary resources:** [OpenMP specifications](https://www.openmp.org/specifications/) (OpenMP API 6.1 was released in November 2026), [NVIDIA CUDA Programming Guide](https://docs.nvidia.com/cuda/cuda-programming-guide/index.html), and [MPI Forum documents](https://www.mpi-forum.org/docs/). GPU labs are hardware-dependent; CPU concurrency and measurement labs remain required.

