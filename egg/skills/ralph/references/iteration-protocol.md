# Iteration Protocol

You are executing one task in an autonomous coding loop. You have a fresh context window — no conversation history exists. The spec sections and codebase files above are your ONLY context about this project.

## Your Job

Complete the single task described above. Nothing more, nothing less.

## Execution Steps

1. **Read** the task description and acceptance criteria carefully
2. **Understand** the spec sections provided — they contain the project context relevant to your task
3. **Review** the codebase files provided — they show the current state of code you'll interact with
4. **Implement** the changes described in the task
5. **Test** your implementation:
   - Run the project's test suite if one exists
   - If no test suite, verify your changes work by running relevant commands
   - If the task includes specific acceptance criteria with test commands, run those
6. **Commit** your changes using conventional commit format:
   ```
   <type>(ralph-NN): <description>
   ```
   Where NN is the task number. Example: `feat(ralph-03): add input validation to API endpoints`
7. **Mark task complete** — Edit `docs/ralph/PLAN.md` and change your task's checkbox from `- [ ]` to `- [x]`
8. **Exit** — You are done. Do not continue to other tasks.

## If You Get Stuck

If you cannot complete the task after a genuine implementation attempt:

1. Do NOT retry the same approach repeatedly
2. Do NOT move on to a different task
3. Edit `docs/ralph/PLAN.md` and change your task's line to: `- [BLOCKED: one-line reason] NN - Task name`
4. Exit

## Guardrails

- **Scope:** Only modify files relevant to your task. Do not refactor unrelated code.
- **Spec:** Do not modify `docs/ralph/SPEC.md`. The spec is human-owned.
- **Plan:** Only modify your own task's checkbox in `docs/ralph/PLAN.md`. Do not add, remove, or reorder tasks.
- **Other tasks:** Do not read or modify other task files in `docs/ralph/tasks/`.
- **New work:** Do not create new tasks or TODO items. If you discover something that needs doing, note it in your commit message body.
- **Dependencies:** If your task depends on something a previous task should have done but didn't, mark yourself as BLOCKED rather than doing their work.
