# Social Media Drafts

**Updated:** 2026-11-27 · Use the public website URL only after a successful GitHub Pages deployment is verified. Until then, share the repository URL.

## X — single post

I’ve been working on a question that keeps coming up in AI-assisted software engineering:

**What should a software engineer actually learn when writing code is becoming cheaper?**

I turned the answer into a living roadmap:

CS fundamentals → discrete math → theory of computation → compilers → systems → distributed/data engineering → parallel/GPU computing → ML/LLM → agents → evaluation → AI security → accessibility.

The key idea is simple:

**AI should raise the abstraction level of the engineer, not remove the engineer from the system.**

The roadmap focuses on what remains durable:
- mental models
- debugging
- architecture
- failure analysis
- security
- testing
- verification
- system ownership
- mathematical reasoning and formal methods
- compilers and language runtimes
- parallel/GPU computing
- data engineering and model serving
- accessibility and human-centered design

And then it layers modern agentic engineering on top: tools, MCP, state, evaluation, observability and human approval.

I’m keeping it evidence-driven and updating the resource/claim audit as the ecosystem changes.

Repo:
https://github.com/wazimBadsha/Future-Proof-CS-Roadmap

---

## X — thread

**1/**

I started building a "future-proof CS roadmap".

Not another list of 200 technologies.

The real question is:

**If AI can generate a lot of code, what should engineers become exceptionally good at?**

**2/**

My answer starts with the boring stuff:

OS  
Networking  
Databases  
Algorithms  
Concurrency  
Security  
Distributed systems  
Testing  
Observability

Because abstractions are useful only when you can reason about what happens underneath them.

**3/**

Then comes the AI-native layer:

LLMs  
RAG  
tool calling  
agents  
MCP  
memory/state  
evaluation  
observability  
AI security  
human-in-the-loop workflows

The second layer doesn't replace the first.

It depends on it.

**4/**

One principle I’m especially interested in:

Don't define "local" by where the UI runs.

Ask:

Where does identity live?  
Where does memory live?  
Where does inference happen?  
What crosses the network?  
Which external services are required?  
What still works when the network disappears?

That boundary matters.

**5/**

I also added a research/claim audit.

For every important claim:

**claim → source → evidence → counter-evidence → conclusion**

Especially for fast-moving AI infrastructure, I don't want a roadmap that quietly becomes obsolete because a product page changed.

**6/**

The detailed curriculum now includes nine advanced tracks: discrete mathematics, theory of computation, compilers, parallel/GPU computing, foundation-model engineering, data engineering, formal methods, embedded/edge systems and human-centered engineering.

The repo is intentionally a living document.

I'm building it around one loop:

**learn → build → test → use AI → verify → red-team → ship → observe**

Not:

**prompt → generate → paste → ship**

https://github.com/wazimBadsha/Future-Proof-CS-Roadmap

---

## LinkedIn

I’ve been rethinking what a “future-proof” software engineering education should look like.

The obvious response to AI-assisted development is to learn more AI tools.

I think that is incomplete.

A durable engineer needs two tracks:

**Track 1 — Computer science + systems**
- programming fundamentals
- data structures and algorithms
- operating systems
- networking
- databases
- distributed systems
- security
- cloud/SRE
- software architecture
- discrete mathematics and theory of computation
- compilers and programming-language implementation
- parallel/GPU and embedded systems
- formal methods and model checking

**Track 2 — AI-native engineering**
- ML/LLM fundamentals
- RAG and retrieval
- structured generation
- tool calling
- agents
- MCP
- state and memory
- evaluation
- observability
- AI security
- governance
- human-in-the-loop workflows
- foundation-model post-training and inference optimization
- data engineering and multimodal systems
- accessibility, privacy and engineering ethics

The important shift isn't from “coding” to “AI”.

It is from **implementation as the primary bottleneck** toward **reasoning, verification and system ownership** becoming even more important.

So I built a living roadmap around:

**Learn → Build → Test → Use AI → Verify → Red-team → Ship → Observe**

I’m also maintaining a separate claim/research audit so the roadmap distinguishes facts, interpretations, recommendations and unverified claims.

Repository:
https://github.com/wazimBadsha/Future-Proof-CS-Roadmap

I’d especially love feedback from engineers who are building agentic systems in production: **what belongs in the foundation that most AI-era roadmaps are currently missing?**
