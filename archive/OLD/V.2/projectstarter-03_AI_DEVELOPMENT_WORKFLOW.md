# AI Development Workflow

This is the standard workflow for AI-assisted building. It is model-neutral and tool-conscious: the human owns judgment, the planning chat owns strategy and task shaping, and Claude Code or another builder edits the repo.

## The three roles

| Role | Who / what | Job |
|---|---|---|
| Executive Director | Human product owner | Decides what to build, tests outcomes, protects scope, holds the vision |
| Project Manager | Planning chat or strong reasoning model | Holds the plan, writes tight build prompts, interprets results, plans next steps |
| Builder | Claude Code or current AI coding tool | Reads the repo, edits files, runs commands, tests, commits, and reports completion |

Do not make the Builder do broad strategy unless the task requires direct codebase inspection. Do not make the Project Manager micromanage trivial Builder fixes.

## The three anchor files

Every active project should have three small anchor files:

| File | Purpose | Read when | Updated when |
|---|---|---|---|
| `CLAUDE.md` | Rules of the road: stack, conventions, commands, boundaries | Start of every Builder session | Rarely, when conventions change |
| `SESSION_HANDOFF.md` | Current mile marker: what is true now, what just changed, roadblocks, exact next step | Start of every Builder session | End of every Builder session |
| `MASTER_PLAN.md` | Whole road: phases, feature order, launch path, future work | Planning sessions and major tasks | Phase boundaries or major scope changes |

For complex projects, add `FULL_SPECIFICATION.md` for deeper feature design, formulas, workflows, or business logic.

## Builder session loop

1. Open a fresh Builder session.
2. First instruction: read `CLAUDE.md` and `SESSION_HANDOFF.md`.
3. Give exactly one task.
4. Require a brief plan before edits.
5. Build the smallest complete unit.
6. Run the relevant checks.
7. Update `SESSION_HANDOFF.md`.
8. Commit and push when the task is working.
9. End with a short completion summary.
10. Quit the session and plan the next task outside the Builder.

## Why one task per session

Long sessions accumulate context that gets re-sent on each exchange. The anchor files let the Builder restart cleanly without losing project memory.

## What the Builder should read

Normally read:

```text
CLAUDE.md
SESSION_HANDOFF.md
specific task file or prompt
```

Sometimes read:

```text
MASTER_PLAN.md
FULL_SPECIFICATION.md
CLAIMS_AND_COMPLIANCE.md
DESIGN_DIRECTION.md
```

Avoid feeding the Builder:

```text
whole studio operating manuals
account maps
biographical studio context
large competitor research dumps
stale planning conversations
```

## Permissions and safety

Use an efficient permission posture for normal edits and safe commands, but keep destructive actions prompted. Deletions, irreversible migrations, production changes, credential changes, billing/auth changes, and data-destructive operations require explicit human confirmation.

## Recovery protocol

When a chat is lost or the docs seem wrong:

1. Do not build anything new.
2. Inspect the actual repo, schema, and tests.
3. Reconstruct `SESSION_HANDOFF.md` from what is actually true.
4. Compare against `MASTER_PLAN.md`.
5. Resume only after reality and docs are reconciled.

## Drift control

If the Builder finds that the plan is wrong, stale, or unsafe, it should stop and report:

- what conflicts
- what the code actually shows
- the smallest safe next step
- whether `MASTER_PLAN.md`, `SESSION_HANDOFF.md`, or `CLAUDE.md` needs an update

## Token and attention economy

The most expensive behavior is asking the Builder to reason through large, vague, context-heavy problems. The most efficient behavior is planning outside the Builder, then giving the Builder one precise task with the relevant files and acceptance criteria.
