# Output Template

The generated `technical-roadmap.md` should follow this structure:

```markdown
# Technical Interview Roadmap: <Company> — <Role>

> **Scope:** DSA/coding problems only. This roadmap does not cover system design, behavioral interviews, or domain-specific knowledge assessments.

## Company Engineering Profile

| Dimension | Finding | Source |
|-----------|---------|--------|
| JD Source | [URL / pasted text] | — |
| Primary Languages | ... | [URL] |
| Core Infrastructure | ... | [URL] |
| Key Problem Domains | ... | [URL] |
| Interview Format (if public) | ... | [URL] |

*Note: [Include thin-research disclaimer here if applicable]*

### Core Engineering Challenges

> Companies don't pick interview questions at random — they test the foundational concepts their engineers use daily. These are the core engineering problems this team solves, and the DSA concepts each one demands.

| Engineering Challenge | DSA Concepts Tested | Example |
|-----------------------|--------------------|---------|
| [e.g., Real-time payment routing] | [e.g., Graph traversal, shortest path, BFS/DFS] | [e.g., Finding optimal payment path across partner banks] |
| [e.g., Fraud detection in transaction networks] | [e.g., Connected components, Union-Find, DFS] | [e.g., Identifying rings of fraudulent accounts] |
| ... | ... | ... |

## Technical Signals from JD

| JD Signal | DSA Implication | Priority |
|-----------|----------------|----------|
| "distributed systems experience" | Graph algorithms, BFS/DFS | Tier 1 |
| "optimize data pipelines" | Dynamic Programming, Greedy | Tier 1 |
| ... | ... | ... |

## Learner Calibration

**Profile status:** [Found / Not found — defaulting to Intermediate]
**Detected level:** [Beginner / Intermediate / Advanced]
**Difficulty focus:** [Easy-Medium / Medium / Medium-Hard]

**Tracked weaknesses relevant to this roadmap:**
- [Weakness label] — [how it affects problem selection]
- ...

**Already-practiced patterns:** [list patterns with coverage from session history]

## Topic Roadmap

### Tier 1: Must-Know

#### [Pattern Name]
- **Why:** [Trace to a specific engineering challenge: "Their payment routing engine traverses partner bank networks → tests graph traversal fluency"]
- **Problems:** [N] problems
- **Difficulty:** [Easy-Medium / Medium / Medium-Hard]

### Tier 2: Likely

#### [Pattern Name]
- **Why:** [Reasoning tied to company archetype or role domain]
- **Problems:** [N] problems
- **Difficulty:** [Distribution]

### Tier 3: Stretch

#### [Pattern Name]
- **Why:** [Reasoning tied to adjacent engineering concern or differentiator]
- **Problems:** [N] problems
- **Difficulty:** [Distribution]

## Problem List

### Phase 1: Foundations (~[N] days)

*Use leetcode-teacher Learning Mode for new patterns.*

| # | Problem | Difficulty | Pattern | Freq | Why |
|---|---------|-----------|---------|------|-----|
| 1 | [Name] (LC #) | Easy | Hash Table | 75% | [Trace to company challenge: "Transaction dedup mirrors hash-based lookup in their payment pipeline"] |
| 2 | [Name] (LC #) | Medium | Two Pointers | — | [Trace to company challenge or learner weakness] |
| ... | ... | ... | ... | ... | ... |

### Phase 2: Core Depth (~[N] days)

*Use leetcode-teacher Learning Mode for new problems. Recall Mode for Phase 1 revisits.*

| # | Problem | Difficulty | Pattern | Freq | Why |
|---|---------|-----------|---------|------|-----|
| ... | ... | ... | ... | ... | ... |

### Phase 3: Edge Sharpening (~[N] days)

*Use leetcode-teacher Recall Mode for revisits. Focus on timed practice.*

| # | Problem | Difficulty | Pattern | Freq | Why |
|---|---------|-----------|---------|------|-----|
| ... | ... | ... | ... | ... | ... |

## Study Timeline

| Week | Phase | Focus | Daily Target |
|------|-------|-------|-------------|
| 1 | Foundations | [Topics] | 2-3 problems/day |
| 2 | Core Depth | [Topics] | 2 problems/day |
| 3 | Edge Sharpening | [Topics] | 1-2 problems/day + revisits |

## Weakness Remediation Plan

| Weakness | Target Problems | Phase | Strategy |
|----------|----------------|-------|----------|
| [From learner profile] | LC #, LC # | 1-2 | [How to address] |
| ... | ... | ... | ... |

## Sources

| # | URL | What It Informed |
|---|-----|-----------------|
| 1 | [URL] | Tech stack identification |
| 2 | [URL] | Interview format |
| ... | ... | ... |

## Raw JD

> Source: [URL or "pasted text"]
> Extracted: <date>

<full JD text preserved for reference>
```
