---
description: Critically evaluate a proposed plan to modify a Claude Code skill before implementation
argument-hint: <skill-path> <plan-file-or-description>
---

Evaluate a proposed skill improvement plan BEFORE implementation. Every addition to a skill burns context window forever — a plan that passes review earns that cost.

Parse `$ARGUMENTS` as follows:
- First argument: path to the skill directory being modified
- Remaining arguments: path to a plan file (`.md`, `.txt`) OR inline description of proposed changes

If the second argument looks like a file path, read that file as the plan. Otherwise, treat remaining arguments as the plan description. If no arguments provided, ask for both.

## Phase 0: Load Context

1. Read the **entire current skill** — `SKILL.md` and every file in the skill directory. You cannot evaluate a plan to change something you haven't read.
2. Read the **plan document**.
3. Count the current state: total files, total lines across all files, estimated token footprint.

## Phase 1: Necessity & Gap Validation

The plan claims gaps exist. Verify them against the actual codebase.

For each proposed **NEW file**:
- Does the current skill genuinely lack this capability?
- Does existing content partially cover it already?
- Is there evidence this gap causes real failures? Or is this an anticipated gap that may never materialize?

For each proposed **AUGMENTATION**:
- Read the specific file and section being modified. Is the plan's characterization of the gap accurate?
- Is the current content actually deficient, or is the addition "nice to have"?

**Standard:** "Create evaluations BEFORE writing extensive documentation. This ensures your Skill solves real problems rather than documenting imagined ones."

Flag any change that solves an imagined problem rather than a documented one.

## Phase 2: Scope & Proportionality

Most plans try to do too much. Count:
- New files proposed
- Existing files modified
- Total files in current skill
- Percentage of skill being touched (**if >30%, the plan is likely too broad**)

Check:
- Is this one coherent change or multiple unrelated changes bundled together?
- Could this plan be split into 2-3 smaller, independently testable plans?
- Is there a "Future Wishlist" section? Are items from it bleeding into the main plan?
- **The coupling test:** If any single change fails, can you ship the rest?

## Phase 3: Token Economy Impact

Quantify the cost of every addition.

For each new file or augmentation:
- Estimate token count of proposed content
- How often will this content be loaded? (Every session? 10%? 1%?)
- Could the content be absorbed into an existing file instead?
- Will this push any file past a length where Claude starts deprioritizing later content?

Calculate:
- Current estimated token footprint
- Post-implementation estimated token footprint
- Net token cost

**The test:** Is the token cost of each addition justified by (frequency of use × impact on output quality)?

## Phase 4: Progressive Disclosure Compliance

- After changes, will SKILL.md still be under 500 lines?
- Is the routing mechanism updated to include new files?
- Are new files pointed to from SKILL.md or the routing layer? (Unreferenced files are dead weight.)
- Are new references one level deep from SKILL.md?
- Do new files exceeding 100 lines have tables of contents?
- Is content at the right level? (Frontmatter for triggers, SKILL.md for workflows, references for domain knowledge.)

## Phase 5: Regression Risk

For each augmented file:
- What currently works that could break?
- Does the plan specify exact insertion points? If vague, flag it.
- Will the insertion disrupt the flow of existing instructions?
- Are there naming or terminology changes that conflict with existing references?

For frontmatter changes:
- Will new trigger phrases cause over-triggering on unrelated queries?
- Will modified trigger phrases break currently-working triggers?

**The revert test:** If you reverted just this one change, would the rest of the skill still work exactly as today?

## Phase 6: Implementation Order & Dependencies

- Does the proposed order respect dependencies?
- Are there changes that must ship atomically? (New file + routing entry + trigger test = one unit.)
- Is the highest-impact, highest-confidence change first?
- **Partial implementation test:** If you stopped after step N, would the skill be in a valid state?

## Phase 7: Evaluation Coverage

- Does the plan include test scenarios for every new capability?
- Do tests cover positive AND negative cases?
- Are tests specific enough to verify? ("Test the new section works" is useless. "Ask X → verify Y loads and Z behavior occurs" is testable.)
- Will existing tests still pass after changes?

## Phase 8: Determine Verdicts

For each numbered change in the plan, assign:
- **SHIP**: Gap is real, cost is justified, risk is low.
- **MODIFY**: Gap is real but proposed solution needs changes. Specify what.
- **DEFER**: Potentially valuable but not justified yet. Defer until usage data confirms demand.
- **CUT**: Not justified. Gap is imagined, cost exceeds value, or duplicates existing content.

## Output

```
## Executive Summary
[3-4 sentences. Is this plan ready to implement? Single biggest risk?]

## Recommendation: APPROVE / APPROVE WITH CHANGES / REVISE AND RESUBMIT / REJECT

## Skill Stats
|                    | Current | Post-Implementation | Delta   |
|--------------------|---------|---------------------|---------|
| Files              |         |                     | +N      |
| Total lines        |         |                     | +N      |
| Estimated tokens   |         |                     | +N      |

## Verdicts
| Dimension                    | Verdict | Priority |
|-----------------------------|---------|----------|
| Necessity & Gap Validation   | ✅/⚠️/❌ | P0-P3   |
| Scope & Proportionality      | ✅/⚠️/❌ | P0-P3   |
| Token Economy Impact         | ✅/⚠️/❌ | P0-P3   |
| Progressive Disclosure       | ✅/⚠️/❌ | P0-P3   |
| Regression Risk              | ✅/⚠️/❌ | P0-P3   |
| Implementation Order         | ✅/⚠️/❌ | P0-P3   |
| Evaluation Coverage          | ✅/⚠️/❌ | P0-P3   |

## Change-by-Change Assessment

### Change N: [name]
- **Verdict**: SHIP / MODIFY / DEFER / CUT
- **Necessity**: [Real gap or imagined? Evidence?]
- **Token cost**: [Estimated tokens added]
- **Load frequency**: [How often loaded?]
- **Regression risk**: [What could break?]
- **Issues**: [Specific problems]
- **Required modifications**: [If MODIFY — what to fix]

## Plan Revisions

### Cuts
[Changes to remove, with justification citing token cost, load frequency, and gap evidence.]

### Splits
[Changes to break into a separate follow-up plan.]

### Reorders
[Sequence changes, with dependency justification.]

### Missing
[Anything the plan should include but doesn't.]
```

## Constraints

- **Evaluate the plan, not the skill.** Stay focused on whether proposed changes are well-designed, correctly scoped, and safe to implement.
- **Every CUT must be justified.** Cite token cost, load frequency, and lack of evidence for the gap.
- **Every SHIP must be earned.** Clear gap, proportional token cost, low regression risk.
- **Trace against the actual codebase.** Don't take the plan's claims at face value. Read the files and verify.
- **Assume literal implementation.** If the plan says "add a section about X" without specifying where or how long, flag it as underspecified.
- **Protect what works.** The burden of proof is on each proposed change to demonstrate it won't break existing behavior.