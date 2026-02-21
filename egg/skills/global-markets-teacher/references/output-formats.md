# Output Formats

This file defines the templates used for study notes generated at the end of each session. All sessions for a given topic live in a single file named `[topic-name].md`. Recall and Mock Interview sessions are appended to the existing file rather than creating new files.

---

## Filename Convention

All sessions for a topic use a single file: `[topic-name].md`

- Use lowercase, hyphen-separated names (e.g., `duration-and-convexity.md`, `fx-carry-trade.md`)
- The file begins with the first Learning session
- Recall and Mock Interview sessions are appended as new dated sections
- This allows the file to serve as a longitudinal learning record for the topic

---

## Learning Mode Output

Use this template when a session ends in Learning Mode. Create the file if it does not exist; otherwise append.

```markdown
# [Topic Name]

**Topic:** [name]
**Asset Class:** [Rates / FX / Equities / Commodities / Credit / Crypto / Macro]
**Difficulty:** [Introductory / Intermediate / Advanced]
**Date:** [Today's date]
**Mode:** Learning

---

## 1. Layman Intuition

[A real-world analogy that captures the core idea — 2-3 sentences. Avoid jargon entirely. The goal is to make the concept memorable and grounded.]

---

## 2. Naive Model

[The first thing a smart person with no markets training would think — the simplified but partially correct mental model.]

- **What it gets right:** [...]
- **What it misses:** [...]

---

## 3. Market Framework

[One or two sentences capturing the key insight that separates the correct market view from the naive model.]

**Step-by-Step Framework:**

1. [First step or condition]
2. [Second step or condition]
3. [Continue as needed]

**Key Relationships and Formulas:**

[State the core relationship or formula. Follow with an intuitive derivation — explain why the formula is true in plain language, not just what it is.]

**Real-World Examples:**

- [Specific historical episode or instrument — date, market, what happened]
- [Second example if useful]

---

## 4. Alternative Views

[Present 1-2 alternative frameworks or schools of thought. For each, explain what it emphasizes differently and when it might be more applicable than the primary framework.]

**View A — [Name or Label]:** [Summary]

**View B — [Name or Label]:** [Summary]

**Comparison:** [When does each view dominate? What conditions favor one over the other?]

---

## 5. Summary

| Concept | Key Relationship | When It Matters | Common Mistake |
|---------|-----------------|-----------------|----------------|
| [Concept 1] | [Relationship or formula] | [Market condition or context] | [Frequent error] |
| [Concept 2] | [Relationship or formula] | [Market condition or context] | [Frequent error] |
| [Concept 3] | [Relationship or formula] | [Market condition or context] | [Frequent error] |

**Key Takeaway:** [One sentence that captures the most important idea from this session.]

**Related Concepts:** [Concept A], [Concept B], [Concept C]

---

## 6. Interview Tips

- **How to present this concept:** [Opening framing, structure to use, what to lead with]
- **Common follow-up questions:** [List 2-3 questions interviewers typically ask after this topic comes up]
- **Firm-type specific emphasis:**
  - *Sales and Trading (Flow):* [What they care about — execution, hedging, client context]
  - *Macro / Global Markets Research:* [What they care about — frameworks, views, conviction]
  - *Structuring / Exotics:* [What they care about — model mechanics, edge cases, Greeks]
  - *Quant / Strat:* [What they care about — math, assumptions, derivations]

---

## Reflection Questions

1. What was the key insight that distinguishes the correct market view from the naive model?
2. What broader framework does this concept belong to?
3. How would you explain this to a non-finance person in one minute?
```

---

## Recall Mode Output

Use this template when a session ends in Recall Mode. Append to the existing topic file under a new dated section.

```markdown
---

# Recall Session — [Topic Name]

**Date:** [Today's date]
**Mode:** Recall
**Verdict:** [Strong Pass / Pass / Borderline / Needs Work]

---

## Explanation Quality

**Approach taken:** [How the user structured their explanation — did they lead with intuition, formula, or example?]

**Conceptual depth:** [Did the user demonstrate understanding of the mechanics, or only surface familiarity?]

**Corrections issued during session:** [List any corrections made by the teacher during the session, or "None"]

---

## Scenario Responses

| Scenario | User Response | Expected Response | Result |
|----------|--------------|-------------------|--------|
| [Scenario 1] | [What the user said] | [What was expected] | [Correct / Partial / Incorrect] |
| [Scenario 2] | [What the user said] | [What was expected] | [Correct / Partial / Incorrect] |
| [Scenario 3] | [What the user said] | [What was expected] | [Correct / Partial / Incorrect] |

---

## Concept Precision

| Concept | User's Definition | Correct Definition | Result |
|---------|------------------|--------------------|--------|
| [Concept 1] | [What the user said] | [Precise definition] | [Precise / Acceptable / Imprecise] |
| [Concept 2] | [What the user said] | [Precise definition] | [Precise / Acceptable / Imprecise] |
| [Concept 3] | [What the user said] | [Precise definition] | [Precise / Acceptable / Imprecise] |

---

## Classification

**Topic area recalled correctly:** [Yes / Partially / No]

**Related concepts mentioned:** [List any adjacent concepts the user brought up unprompted]

**Framework applied:** [Which framework did the user use to structure their answer?]

---

## Variation Response

[If a variation or edge case was introduced during the session, summarize the user's response here. Did they adapt their framework correctly? What did they miss?]

---

## Gaps to Review

1. [Gap 1 — specific concept or relationship the user was unclear on]
2. [Gap 2]
3. [Gap 3 — add or remove as needed]

---

## Review Schedule

**Next recall recommended:** [Tomorrow / In 3 days / In 1 week / In 2 weeks]

**Rationale:** [One sentence explaining the scheduling decision based on verdict and gaps]

---

## Mode Transitions

[Note any mode transitions that occurred mid-session. For example: "Session began in Recall Mode; user requested a hint on duration, so a brief Learning Mode explanation was given before returning to Recall."]

If no transitions occurred, write: None.

---

## Reference Explanation

> Only included for Borderline or Needs Work verdicts.

[Provide the authoritative explanation of the topic as it should be delivered in an interview. This serves as a concrete target for the user to compare against their own recall. Write it as if answering the interview question directly.]

---

## Reflection Questions

1. Which part of your explanation was weakest, and why?
2. What is the one relationship or formula you need to be able to state precisely from memory?
3. If this topic came up in an interview tomorrow, what would you do differently?
```

---

## Mock Interview Mode Output

Use this template when a session ends in Mock Interview Mode. Append to the existing topic file under a new dated section.

```markdown
---

# Mock Interview Session — [Topic Name]

**Date:** [Today's date]
**Mode:** Mock Interview
**Firm Type:** [Bulge Bracket Sales and Trading / Boutique / Macro Hedge Fund / Quant Fund / Prop Trading / Asset Manager / Other]
**Target Role:** [Summer Analyst / Full-Time Analyst / Associate / Senior / Other]
**Verdict:** [Strong Hire / Hire / On the Fence / No Hire]

---

## Section-by-Section Scoring

Each section is scored 1-5:
- 5 — Exceptional. Confident, precise, structured, and insightful.
- 4 — Strong. Solid grasp with minor gaps or imprecision.
- 3 — Adequate. Correct but surface-level; lacks depth or structure.
- 2 — Weak. Meaningful gaps; would raise concern in a real interview.
- 1 — Insufficient. Fundamental misunderstanding or inability to answer.

### M1 — Conceptual Foundation

**Score:** [1-5]

**Notes:** [Did the user correctly define the concept and demonstrate understanding of the mechanics? Were key terms used precisely?]

**Key Quotes:**
- "[Direct quote or paraphrase of a strong or weak moment from the user's response]"
- "[Second quote if applicable]"

---

### M2 — Quantitative Fluency

**Score:** [1-5]

**Notes:** [Could the user state and apply the relevant formulas? Did they demonstrate comfort with the numbers, even rough order-of-magnitude intuition?]

**Key Quotes:**
- "[Quote]"

---

### M3 — Market Application

**Score:** [1-5]

**Notes:** [Did the user connect the concept to real market behavior? Could they cite a relevant example, historical episode, or current market context?]

**Key Quotes:**
- "[Quote]"

---

### M4 — Scenario Handling

**Score:** [1-5]

**Notes:** [How did the user respond to the hypothetical or stress scenario? Did they adapt their framework correctly? Did they think on their feet or freeze?]

**Key Quotes:**
- "[Quote]"

---

### M5 — Communication and Structure

**Score:** [1-5]

**Notes:** [Was the answer structured clearly? Did the user lead with a direct answer before explaining? Was the pacing appropriate? Did they use precise language without being robotic?]

**Key Quotes:**
- "[Quote]"

---

## Overall Performance Summary

**Total Score:** [Sum of M1-M5] / 25

**Composite Rating:** [Exceptional (21-25) / Strong (16-20) / Adequate (11-15) / Weak (6-10) / Insufficient (1-5)]

[2-3 sentence narrative summary of the overall interview performance. What was the overall impression? What drove the verdict?]

---

## Strengths

- [Strength 1 — specific and concrete]
- [Strength 2]
- [Strength 3 — add or remove as needed]

---

## Weaknesses

- [Weakness 1 — specific, with an actionable improvement note]
  - *Improvement:* [What the user should practice or study to address this]
- [Weakness 2]
  - *Improvement:* [Specific action]
- [Weakness 3 — add or remove as needed]
  - *Improvement:* [Specific action]

---

## Recommended Focus Areas

1. [Area 1 — the highest-priority gap to close before the next mock]
2. [Area 2]
3. [Area 3]

---

## Suggested Follow-Up Topics

[List 2-4 topics that naturally connect to this session and should be covered in future sessions, ordered by priority.]

1. [Topic 1 — and why it is relevant]
2. [Topic 2]
3. [Topic 3]
4. [Topic 4 — optional]
```
