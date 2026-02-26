# JD Signal Mapping

Maps job description keywords and technical requirements to DSA topic areas and problem patterns. Pattern names align with leetcode-teacher's `references/frameworks/problem-patterns.md` taxonomy.

---

## Hard Skills → DSA Topics

### Programming Languages & Paradigms

| JD Keyword | DSA Topics | Primary Patterns | Reasoning |
|-----------|------------|-----------------|-----------|
| Python, scripting | Array manipulation, string processing | Hash Table, Two Pointers, Sliding Window | Python-heavy roles test fluency in these bread-and-butter patterns |
| C++, systems programming | Memory-efficient algorithms, pointer manipulation | Two Pointers, Binary Search, Union-Find | Low-level roles emphasize space efficiency and pointer-based thinking |
| Java, object-oriented | Design patterns in algorithm context, class-based solutions | DFS/BFS, Backtracking, Heap / Priority Queue | Java roles often test tree/graph traversal and OOP-aware solutions |
| Functional programming | Recursion, immutable data transformations | Dynamic Programming, DFS/BFS, Backtracking | FP roles emphasize recursive thinking and stateless transformations |
| SQL, database queries | Set operations, join-like logic | Hash Table, Two Pointers | DB-adjacent roles test lookup efficiency and data joining patterns |

### Infrastructure & Systems

| JD Keyword | DSA Topics | Primary Patterns | Reasoning |
|-----------|------------|-----------------|-----------|
| Distributed systems | Graph connectivity, partitioning, consensus | DFS/BFS, Union-Find, Greedy | Distributed thinking maps to graph traversal and component analysis |
| Microservices | Dependency ordering, routing | DFS/BFS (topological sort), Hash Table | Service dependencies are directed graph problems |
| Cloud (AWS/GCP/Azure) | Scalability-aware algorithms, batch processing | Heap / Priority Queue, Sliding Window, Greedy | Cloud roles care about streaming, scheduling, and resource allocation |
| Containers, Kubernetes | Resource scheduling, bin packing | Greedy, Binary Search, Dynamic Programming | Orchestration maps to scheduling and optimization problems |
| CI/CD, DevOps | Dependency graphs, ordering | DFS/BFS (topological sort) | Pipeline ordering is topological sort |
| API design, REST, GraphQL | Request routing, data transformation | Hash Table, DFS/BFS, Greedy | API design roles test lookup patterns and graph-like schema traversal |
| Testing, TDD, QA automation | Coverage analysis, state verification | Hash Table, DFS/BFS, Backtracking | Testing roles value thoroughness; interviews test graph traversal and constraint problems |

### Embedded / Hardware-Adjacent

| JD Keyword | DSA Topics | Primary Patterns | Reasoning |
|-----------|------------|-----------------|-----------|
| Embedded systems, firmware | Bit manipulation, memory-efficient algorithms, fixed-size buffers | Two Pointers, Binary Search, Greedy | Embedded roles emphasize space efficiency and low-level operations |
| RTOS, real-time constraints | Scheduling, priority management, deadline optimization | Heap / Priority Queue, Greedy, Binary Search | Real-time systems map to priority scheduling and constraint optimization |
| IoT, sensors, signal processing | Streaming data, windowed computation, threshold detection | Sliding Window, Binary Search, Two Pointers | Sensor data processing = streaming windows and threshold searches |

### Data & ML

| JD Keyword | DSA Topics | Primary Patterns | Reasoning |
|-----------|------------|-----------------|-----------|
| Machine learning, AI | Matrix operations, optimization, search | Dynamic Programming, Binary Search, DFS/BFS | ML roles test optimization thinking and efficient search |
| Data pipelines, ETL | Stream processing, transformation chains | Sliding Window, Hash Table, Greedy | Pipeline problems map to streaming and aggregation patterns |
| Recommendation systems | Similarity computation, ranking | Hash Table, Heap / Priority Queue, Dynamic Programming | Recommendation = lookup + ranking + optimization |
| NLP, text processing | String algorithms, pattern matching | Sliding Window, Hash Table, Dynamic Programming | Text problems emphasize string manipulation and sequence analysis |
| Computer vision | Matrix traversal, BFS on grids | DFS/BFS, Dynamic Programming | Image processing maps to grid/matrix algorithms |
| Real-time processing | Streaming algorithms, windowed computation | Sliding Window, Heap / Priority Queue | Real-time = process data as it arrives with bounded memory |

### Quantitative & Finance

| JD Keyword | DSA Topics | Primary Patterns | Reasoning |
|-----------|------------|-----------------|-----------|
| Quantitative analysis | Mathematical optimization, numerical methods | Dynamic Programming, Binary Search, Greedy | Quant roles test optimization and mathematical reasoning heavily |
| Trading systems, low latency | Cache-friendly algorithms, efficient lookups | Hash Table, Binary Search, Heap / Priority Queue | Latency-sensitive = O(1) or O(log n) access patterns |
| Risk modeling | Simulation, graph analysis | DFS/BFS, Dynamic Programming | Risk = dependency analysis + probabilistic computation |
| Portfolio optimization | Knapsack variants, optimization | Dynamic Programming, Greedy | Portfolio selection is a constrained optimization problem |
| Time series | Sequential processing, windowed statistics | Sliding Window, Two Pointers, Dynamic Programming | Time series processing = sequential window operations |

---

## Soft Skill Signals → Interview Complexity Indicators

These don't map to specific DSA topics but indicate interview style and difficulty expectations:

| JD Signal | Interview Implication |
|-----------|---------------------|
| "Fast-paced", "startup environment" | Expect breadth over depth; medium difficulty, many topics |
| "Rigorous", "high bar" | Expect hard problems, optimality proofs |
| "Collaborative", "pair programming" | Interview may be collaborative coding; practice communication |
| "Ambiguous problems" | Expect underspecified problems; practice clarification questions |
| "Scale", "millions of users" | Expect follow-up questions about complexity and scaling |
| "Research-oriented" | May include novel problem formulations; practice problem decomposition |

---

## Gap Analysis → Study Priorities

When JD analysis reveals skill gaps, map them to urgent study topics:

| Gap Type | Priority Boost | Reasoning |
|----------|---------------|-----------|
| Hard requirement gap (listed as required in JD) | Tier 1 → top of Phase 1 | Interviewer will specifically probe this area |
| Preferred skill gap | Tier 2 → include in Phase 2 | May come up; being prepared differentiates |
| Domain knowledge gap | Research company further; may not need DSA coverage | Domain gaps are sometimes tested via domain-specific problems |
| Experience level gap (underleveled) | Focus on Medium problems; demonstrate competence | Proving capability at expected level is critical |
| Experience level gap (overleveled) | Include Hard problems to show depth | Interviewers may challenge with harder variants |
