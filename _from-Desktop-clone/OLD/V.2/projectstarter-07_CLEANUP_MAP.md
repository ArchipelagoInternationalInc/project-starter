# Cleanup Map from Original Source Docs

This file explains how the original source documents should be treated after consolidation.

## Keep as reusable studio material

| Source | Keep | Change |
|---|---|---|
| Build Bible | Three-role workflow, three anchor files, one-task session loop, recovery protocol, token economy | Remove dated origin story, model-specific assumptions, and temporary anecdotes from reusable version |
| Portfolio Architecture | Stack defaults, project types, account separation, data/privacy separation, design system, auth/payment/database patterns | Remove rigid version references and timeline language; separate stable principles from temporary statuses |
| Document Map | Governance idea: which doc answers which question | Convert from dated reconciliation note into stable source hierarchy |
| Studio Context Brief | Identity, strategic context, portfolio overview | Split evergreen identity from changing portfolio status; do not feed to Builder |
| Stack.md | Account/access lookup structure | Keep as a separate living status file; do not mix with project architecture |
| Dev Workspace Guide | Machine setup and software inventory | Keep as mechanical setup doc; remove current machine-status assumptions from project packets |

## Archive or relocate

Temporary facts should move to current-state files:

```text
CURRENT_PORTFOLIO_STATUS.md
CURRENT_ACCESS_STATUS.md
CURRENT_DEV_WORKSPACE_STATUS.md
CURRENT_TOOLING_STATUS.md
```

These files may contain dates, priorities, deadlines, and status notes because their purpose is current-state tracking. They should not be treated as reusable project doctrine.

## Remove from reusable packets

- expiring model windows
- model rankings and model-specific names
- exact project deadlines unless the file is explicitly temporary
- active build percentages
- stale machine state
- account setup todo lists
- subscription-plan assumptions
- old chat-loss anecdotes unless they teach a durable rule
- copied competitor language

## Preserve as durable rules

- plan lives in files, not only in chat
- one task per Builder session
- `CLAUDE.md` + `SESSION_HANDOFF.md` every session
- `MASTER_PLAN.md` at phase planning and recovery
- code is reality; docs are intent
- small Builder context; big strategy outside Builder
- update handoff, commit, and push at clean milestones
- avoid overbuilding
- do not mix brand/user data across projects
- regulated claims need a project-specific compliance doc

## Suggested replacement folder

```text
/studio-ops
  /starter-kit
    00_READ_ME_FIRST.md
    01_STUDIO_OPERATING_PRINCIPLES.md
    02_STACK_AND_PROJECT_TYPES.md
    03_AI_DEVELOPMENT_WORKFLOW.md
    04_PROJECT_KICKOFF_AND_BUILD_PACKET.md
    05_ANCHOR_FILE_TEMPLATES.md
    06_PLUGIN_POLICY.md
  /current-state
    CURRENT_PORTFOLIO_STATUS.md
    CURRENT_ACCESS_STATUS.md
    CURRENT_DEV_WORKSPACE_STATUS.md
    CURRENT_TOOLING_STATUS.md
  /archive
    original-source-docs/
```
