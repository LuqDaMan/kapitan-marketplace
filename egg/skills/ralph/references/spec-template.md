# Spec Template

Use this template when generating `docs/ralph/SPEC.md`. Every `##` heading is a **referenceable section** — task files declare which sections they need via `spec-sections` frontmatter, and the loop script extracts only those sections into each iteration's prompt.

## Template

The generated SPEC.md should follow this structure:

### Header
```
# Project Spec: [Name]
```

### Required Sections

**goal** — One paragraph. What are we building and why? What does "done" look like?

**context** — Current state of the codebase. Key architectural decisions already made. Tech stack. Relevant existing code patterns.

### Domain-Specific Sections

Add 2-6 sections named after the project's domains. Examples by project type:
- Web API: `api-contracts`, `data-model`, `auth`, `error-handling`
- CLI tool: `commands`, `config`, `output-format`
- Library: `public-api`, `internals`, `types`
- Frontend: `components`, `state-management`, `routing`
- ML pipeline: `data-pipeline`, `model-architecture`, `training`, `evaluation`

Each section should contain enough detail for Claude to implement tasks that reference it, but not so much that it bloats the context window. Target: 20-50 lines per section.

### Required Closing Sections

**acceptance-criteria** — Global acceptance criteria that apply to the whole project, not individual tasks. Example: "All endpoints return JSON", "100% of public functions have docstrings", "CI passes".

**constraints** — What's explicitly out of scope. Tech constraints (must use Python 3.11+, must not add new dependencies). Performance requirements. Compatibility requirements.

## Guidelines for the Planning Skill

- **Section names must be lowercase kebab-style** — They're used as identifiers in task frontmatter
- **Keep each section under 50 lines** — Bloated sections defeat per-task context optimization
- **The `goal` and `constraints` sections are almost always needed** — Most tasks will reference these
- **Domain sections are project-specific** — Ask the user what their project's domains are; don't guess
- **The human owns this file** — Generate a draft, present it, let the human edit. Never auto-finalize.
