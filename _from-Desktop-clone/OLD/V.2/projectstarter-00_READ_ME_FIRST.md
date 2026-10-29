# Studio Starter Kit — Read Me First

This packet is the durable, reusable operating system for AI-assisted product development across the studio. It is intentionally model-neutral, date-neutral, and project-neutral.

## What this packet is for

Use this packet when starting, restarting, or evaluating a project. It should help a planning model, project-manager chat, Claude Code, or another AI coding tool understand the studio's stable rules without dragging temporary status, model hype, or outdated deadlines into the project.

## What this packet is not for

This packet is not a current portfolio status report, a machine inventory, an account credential map, or a substitute for the project repo's own anchor files.

Do not paste the entire packet into every Claude Code session. Claude Code should normally read only the small project anchor files inside the repo.

## Stable source hierarchy

When documents disagree, use this order:

1. Project repo reality: the actual code, tests, database schema, and deployed behavior.
2. Project anchor files: `CLAUDE.md`, `SESSION_HANDOFF.md`, `MASTER_PLAN.md`, and any project-specific specification.
3. Studio workflow rules: the session loop, handoff protocol, recovery protocol, and token economy.
4. Studio architecture rules: stack defaults, project type templates, account separation, design-system rules, security, compliance, and deployment patterns.
5. Temporary status notes: current priorities, deadlines, machine state, and account access details.

Code is reality. Docs are intent. When they diverge, inspect the code first, then update the docs.

## Who should read what

| Reader | Reads | Does not need |
|---|---|---|
| Product owner | This packet, project brief, project status | Raw implementation details unless deciding scope |
| Planning chat / project manager | This packet, project brief, content/research, current handoff | Full codebase unless diagnosing a failure |
| Claude Code / builder | `CLAUDE.md`, `SESSION_HANDOFF.md`, specific task file, and sometimes `MASTER_PLAN.md` | Studio context brief, account map, full operating manuals |
| Frontier planning model | Clean studio packet + project materials | Temporary machine state, stale model comparisons, old timelines |

## Standard project docs

Every meaningful project repo should contain:

```text
CLAUDE.md
SESSION_HANDOFF.md
MASTER_PLAN.md
README.md
PROJECT_BRIEF.md
```

Larger projects may also need:

```text
FULL_SPECIFICATION.md
CLAIMS_AND_COMPLIANCE.md
DESIGN_DIRECTION.md
CONTENT_PLAN.md
TASKS.md
DECISIONS.md
```

## Rule of thumb

Do not give an AI more background because you are anxious. Give it the smallest accurate packet that contains the rules, context, current state, and exact next task.
