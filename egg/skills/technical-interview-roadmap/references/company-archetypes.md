# Company Archetypes

Interview patterns by company type. Use as a proxy when company-specific research (Step 3) yields thin results. Select the best-fit archetype based on available signals.

---

## FAANG / Big Tech

**Examples:** Google, Meta, Amazon, Apple, Microsoft, Netflix

**Interview Characteristics:**
- 2-3 coding rounds (45-60 min each)
- Emphasis on optimal solutions — brute force alone is insufficient
- Follow-up questions on complexity, trade-offs, and scaling
- Interviewers expect clean code and clear communication

**DSA Focus:**

| Pattern | Weight | Notes |
|---------|--------|-------|
| Dynamic Programming | Very High | Multi-dimensional DP, state optimization |
| DFS/BFS | Very High | Tree and graph traversal, connected components |
| Hash Table | High | Expected as fundamental building block |
| Two Pointers | High | Array and string manipulation |
| Sliding Window | High | Substring and subarray problems |
| Binary Search | High | Classic and "search on answer" variants |
| Backtracking | Medium | Permutations, combinations, constraint satisfaction |
| Greedy | Medium | Interval problems, optimization |
| Heap / Priority Queue | Medium | Kth element, merge K sorted, streaming |
| Union-Find | Low | Occasionally for graph connectivity problems |

**Difficulty Distribution:** 30% Medium, 60% Medium-Hard, 10% Hard

**Special Notes:**
- Google: Known for graph problems and DP; may ask novel problems not on LC
- Meta: Array/string heavy; practical coding focus
- Amazon: Leadership principle alignment; coding is Medium-level but tests completeness
- Apple: Emphasis on clean code and design awareness alongside algorithms

---

## Quant / HFT / Prop Trading

**Examples:** Citadel, Jane Street, Two Sigma, DE Shaw, Jump Trading, IMC, Optiver, Hudson River Trading

**Interview Characteristics:**
- 1-3 coding rounds + math/probability rounds
- Speed and optimality are paramount — O(n log n) may not be good enough
- May include live pair programming or whiteboard
- Strong emphasis on mathematical reasoning alongside DSA
- Brain teasers and probability puzzles are common in non-coding rounds

**DSA Focus:**

| Pattern | Weight | Notes |
|---------|--------|-------|
| Dynamic Programming | Very High | Optimal strategies, game theory, sequence optimization |
| Binary Search | Very High | Precision search, numerical methods, bisection |
| Heap / Priority Queue | High | Order matching, streaming problems |
| Hash Table | High | Fast lookup, caching patterns |
| Greedy | High | Optimization under constraints, scheduling |
| Two Pointers | Medium | Pair finding, sorted array operations |
| Sliding Window | Medium | Time-series windowing, streaming statistics |
| DFS/BFS | Medium | Graph problems when they appear |
| Backtracking | Low | Constraint satisfaction variants |
| Union-Find | Low | Rarely tested |

**Difficulty Distribution:** 10% Medium, 50% Medium-Hard, 40% Hard

**Special Notes:**
- Jane Street: OCaml-focused; problems may have mathematical elegance requirements
- Citadel: Known for hard DP and optimization problems
- Two Sigma: Mix of practical engineering + algorithmic depth
- HFT firms (Jump, IMC, Optiver): Emphasis on speed-optimal solutions and bit manipulation

---

## AI Labs / ML-First Companies

**Examples:** Anthropic, OpenAI, DeepMind, Cohere, Hugging Face, Scale AI

**Interview Characteristics:**
- Coding rounds test general DSA + ML-specific implementation
- May include "implement X from scratch" (e.g., attention mechanism, tokenizer)
- Emphasis on understanding algorithmic complexity in ML contexts
- Some rounds may blend coding with ML knowledge

**DSA Focus:**

| Pattern | Weight | Notes |
|---------|--------|-------|
| Dynamic Programming | High | Sequence problems, optimization (connects to ML optimization) |
| DFS/BFS | High | Graph traversal, tree operations (computation graphs) |
| Hash Table | High | Memoization, feature hashing, lookup |
| Binary Search | Medium | Hyperparameter search analogy, threshold problems |
| Sliding Window | Medium | Sequence processing, windowed features |
| Heap / Priority Queue | Medium | Beam search, top-K, nearest neighbor |
| Two Pointers | Medium | Array manipulation, merge operations |
| Greedy | Low-Medium | Greedy selection, scheduling |
| Backtracking | Low | Search problems, feature selection |
| Union-Find | Low | Clustering-related problems |

**Difficulty Distribution:** 20% Medium, 60% Medium-Hard, 20% Hard

**Special Notes:**
- May test ML implementation (backprop, attention, loss functions) alongside standard DSA
- Python is the dominant language; numpy-aware solutions sometimes expected
- Problems may be "applied" — framed in ML context (e.g., "implement efficient KNN")

---

## High-Growth Startup

**Examples:** Series A-D startups in any vertical

**Interview Characteristics:**
- 1-2 coding rounds (often shorter, 30-45 min)
- Emphasis on practical coding ability over algorithmic puzzle-solving
- May include take-home assignments
- Values breadth and ability to ship

**DSA Focus:**

| Pattern | Weight | Notes |
|---------|--------|-------|
| Hash Table | Very High | Most practical; maps to real engineering problems |
| DFS/BFS | High | Tree/graph traversal for real features |
| Two Pointers | Medium | String and array manipulation |
| Sliding Window | Medium | Data processing, rate limiting |
| Greedy | Medium | Practical optimization, scheduling |
| Binary Search | Medium | Sorted data operations |
| Dynamic Programming | Low-Medium | Rarely Hard DP; more focused on practical optimization |
| Heap / Priority Queue | Low | When relevant to the product domain |
| Backtracking | Low | Rarely tested |
| Union-Find | Low | Rarely tested |

**Difficulty Distribution:** 40% Easy-Medium, 50% Medium, 10% Medium-Hard

**Special Notes:**
- Take-home projects may replace or supplement live coding
- System design and practical engineering skills often weighted equally with DSA
- Culture fit and "can you build things" matters more than optimal solutions

---

## Unicorn / Late-Stage Tech

**Examples:** Stripe, Databricks, Cloudflare, Figma, Notion, Discord, Ramp

**Interview Characteristics:**
- 2-3 coding rounds, well-structured process
- Moderate difficulty — harder than startups, slightly easier than FAANG
- Often domain-relevant problems (e.g., Stripe asks payment-related algorithmic problems)
- Clean code and communication valued

**DSA Focus:**

| Pattern | Weight | Notes |
|---------|--------|-------|
| Hash Table | Very High | Fundamental to all backend/product engineering |
| DFS/BFS | High | Graph and tree problems |
| Two Pointers | High | Array/string manipulation |
| Sliding Window | High | Data processing, rate limiting |
| Binary Search | Medium | Search and optimization |
| Dynamic Programming | Medium | Moderate DP; rarely very hard |
| Greedy | Medium | Practical optimization |
| Heap / Priority Queue | Medium | Scheduling, priority systems |
| Backtracking | Low | Occasional constraint problems |
| Union-Find | Low | Networking/connectivity if domain-relevant |

**Difficulty Distribution:** 20% Easy-Medium, 60% Medium, 20% Medium-Hard

**Special Notes:**
- Stripe: Known for practical, domain-relevant problems (payment systems, API design)
- Databricks: Heavier on data processing and optimization
- Figma: May include canvas/rendering-related algorithmic problems

---

## Enterprise SaaS / Large Non-Tech

**Examples:** Salesforce, ServiceNow, JPMorgan Chase, Walmart Labs, Capital One, Intuit

**Interview Characteristics:**
- 2-3 coding rounds (45-60 min each)
- Moderate difficulty — practical engineering over algorithmic puzzles
- Emphasis on clean, maintainable code and API-aware thinking
- May include domain-specific questions (payments, workflows, enterprise integrations)

**DSA Focus:**

| Pattern | Weight | Notes |
|---------|--------|-------|
| Hash Table | Very High | Lookup, caching, data transformation |
| DFS/BFS | High | Tree traversal, dependency graphs |
| Two Pointers | High | String and array manipulation |
| Sliding Window | Medium | Data processing, streaming |
| Binary Search | Medium | Sorted data operations |
| Greedy | Medium | Scheduling, resource allocation |
| Dynamic Programming | Low-Medium | Moderate DP; rarely multi-dimensional |
| Heap / Priority Queue | Low-Medium | Task scheduling, priority queues |
| Backtracking | Low | Rarely tested |
| Union-Find | Low | Rarely tested |

**Difficulty Distribution:** 30% Easy-Medium, 55% Medium, 15% Medium-Hard

**Special Notes:**
- Salesforce/ServiceNow: API design and data modeling questions alongside DSA
- JPMorgan/Capital One: May include finance-domain problems; test practical engineering judgment
- Walmart Labs: Scale-aware questions — expect follow-ups about handling millions of records

---

## Government / Defense Tech

**Examples:** Palantir, Anduril, Raytheon, Northrop Grumman, Booz Allen Hamilton

**Interview Characteristics:**
- 2-3 coding rounds, often with systems programming emphasis
- Graph and optimization problems are common
- May include low-level implementation questions (memory, concurrency)
- Security awareness and correctness valued over speed of delivery

**DSA Focus:**

| Pattern | Weight | Notes |
|---------|--------|-------|
| DFS/BFS | Very High | Graph traversal, network analysis, connected components |
| Dynamic Programming | High | Optimization, resource allocation, path finding |
| Binary Search | High | Search and optimization on sorted/monotonic data |
| Hash Table | High | Lookup, deduplication, caching |
| Union-Find | Medium | Network connectivity, component analysis |
| Greedy | Medium | Scheduling, allocation, approximation |
| Two Pointers | Medium | Array/string manipulation |
| Heap / Priority Queue | Medium | Priority scheduling, top-K analysis |
| Backtracking | Low-Medium | Constraint satisfaction, configuration search |
| Sliding Window | Low | Streaming when relevant |

**Difficulty Distribution:** 15% Easy-Medium, 50% Medium, 35% Medium-Hard

**Special Notes:**
- Palantir: Known for hard graph problems and data-infrastructure questions
- Anduril: Systems programming emphasis; may test C++ or Rust alongside algorithms
- Defense contractors: Correctness and edge-case handling valued more than raw speed

---

## How to Select an Archetype

1. **Check company directly** — if research yields clear interview data, use that over archetypes
2. **Match by company stage and domain:**
   - Public tech company with 10K+ employees → FAANG / Big Tech
   - Trading/finance with quantitative focus → Quant / HFT
   - AI/ML as core product → AI Labs
   - <500 employees, venture-backed → High-Growth Startup
   - 500-5000 employees, well-known brand → Unicorn / Late-Stage Tech
   - Large SaaS, banks, or enterprise software → Enterprise SaaS / Large Non-Tech
   - Defense, intelligence, or government-adjacent tech → Government / Defense Tech
3. **Blend when needed** — a fintech startup might combine Startup + Quant characteristics; a defense AI company might combine Government/Defense + AI Labs
4. **When in doubt, default to Unicorn / Late-Stage Tech** — it has the broadest, most balanced coverage
