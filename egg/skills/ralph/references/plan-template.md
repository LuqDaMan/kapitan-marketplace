# Plan Template

Use this template when generating `docs/ralph/PLAN.md` and task files in `docs/ralph/tasks/`.

## PLAN.md (Lightweight Index)

The generated PLAN.md should follow this structure:

```
# Implementation Plan: [Project Name]

## Tasks

- [ ] 01 - [Task title]
- [ ] 02 - [Task title]
- [ ] 03 - [Task title]
```

Rules:
- Task numbers are zero-padded two digits (01, 02, ... 99)
- Task titles are short (under 60 characters)
- Checkboxes start unchecked: `- [ ]`
- Completed tasks: `- [x] 01 - Task title`
- Blocked tasks: `- [BLOCKED: reason] 01 - Task title`
- No other content in this file — it's a machine-readable index

## Task Files (Per-Task Details)

File naming: `docs/ralph/tasks/NN-kebab-case-title.md`

Each task file has this structure:

```
---
spec-sections: [goal, section-name-1, section-name-2]
codebase-files: [src/path/to/file.ext, src/path/to/other.ext]
---

# Task NN: [Title]

## What to do

[Clear, actionable description. 3-10 lines. What to build, not how to build it — Claude figures out the how.]

## Acceptance criteria

- [ ] [Specific, verifiable criterion]
- [ ] [Another criterion]
- [ ] [Tests pass / specific test command]

## Notes

[Optional. Gotchas, hints, or context that doesn't fit elsewhere. Keep it brief.]
```

## Frontmatter Rules

### spec-sections
- Array of `##` heading names from SPEC.md
- Always include `goal` unless the task is purely mechanical
- Only include sections the task actually needs
- Order doesn't matter

### codebase-files
- Array of file paths relative to project root
- Only include files Claude needs to READ to understand context
- Files Claude will CREATE don't need to be listed (they don't exist yet)
- For later tasks, include files that earlier tasks created if this task builds on them
- Keep the list short — every file consumes context budget

## Task Sizing Guidelines

Each task must be completable in one Claude context window. Rules of thumb:

- **Max 1-3 files created or modified** per task
- **Max 3-5 codebase-files** in frontmatter (more = less room for Claude to work)
- **Max 2-4 spec-sections** in frontmatter
- If a task needs more context than this, decompose it into smaller tasks
- If unsure, err toward smaller tasks — two small tasks > one overloaded task

## Task Ordering

- Tasks should be ordered so that earlier tasks don't depend on later ones
- Each task's `codebase-files` can only reference files that exist at that point (created by earlier tasks or already in the repo)
- Group related tasks together but keep each task atomic
