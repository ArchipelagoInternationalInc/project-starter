# Anchor File Templates

Copy these templates into each project repo and fill them in for the specific project.

---

# CLAUDE.md template

```markdown
# [Project Name] — Claude Code Guide

Read this file and `SESSION_HANDOFF.md` at the start of every Builder session.

## What this is

[One or two sentences describing the product.]

## Project type

[SaaS application / brochure site / content site / e-commerce / client site / micro-app]

## Current stack

[Use the studio default stack unless this project documents a deviation.]

## Repo commands

```bash
[dev command]
[test command]
[lint/typecheck command]
[build command]
```

## Conventions

- Keep implementation modular.
- Prefer simple, readable code over clever abstractions.
- Handle missing, malformed, and edge-case input gracefully.
- Do not hard-code values that belong in configuration, content, or environment variables.
- Do not introduce new dependencies without a clear reason.
- Update docs when behavior or architecture changes.

## Boundaries

- Do not alter auth, billing, production data, destructive migrations, or compliance-sensitive copy unless the current task explicitly says so.
- Do not make medical, legal, financial, or regulated claims unless approved in this project's compliance document.
- Do not copy competitor language.

## Standard session behavior

1. Read `SESSION_HANDOFF.md`.
2. Restate the current task briefly.
3. Inspect relevant files before editing.
4. Explain the plan before major changes.
5. Make the smallest working change.
6. Run the relevant checks.
7. Update `SESSION_HANDOFF.md`.
8. Commit and push when the task is complete.
9. End with a concise summary.
```

---

# SESSION_HANDOFF.md template

```markdown
# [Project Name] — Session Handoff

## Current reality

[What is actually built and working now.]

## Just completed

[Last completed task and exact result.]

## Current roadblocks / gotchas

[Framework quirks, bugs, failed attempts, local setup issues, or "None." Include enough detail to prevent repetition.]

## Next exact task

[One bounded task.]

## Files likely involved next

[List likely files or folders.]

## Verification needed

[Checks, tests, browser flows, or manual review needed.]
```

---

# MASTER_PLAN.md template

```markdown
# [Project Name] — Master Plan

## Product thesis

[One paragraph.]

## Launch-worthy standard

[What users will compare this against and what must be credible at launch.]

## Non-goals for first version

- [Do not build this yet]
- [Do not build this yet]

## Phases

### Phase 1 — Foundation

[Repo, layout, design tokens, core technical validation.]

### Phase 2 — Core product loop

[The main user workflow.]

### Phase 3 — Account/payment/data layer

[Only if needed.]

### Phase 4 — Marketing and launch readiness

[Public pages, copy, SEO, FAQ, analytics, support, legal review.]

### Phase 5 — Post-launch improvements

[Future work, not launch blockers.]

## Open decisions

| Decision | Options | Current leaning | Owner |
|---|---|---|---|
```

---

# TASKS.md task format

```markdown
## Task [number]: [name]

### Goal

[One clear outcome.]

### Context

[Why this task matters and what prior work it depends on.]

### Builder instruction

[Exact Claude Code instruction.]

### Acceptance criteria

- [ ] [Observable result]
- [ ] [Check/test passes]
- [ ] [Docs updated]

### What not to do

- [Avoid expanding scope]
- [Avoid touching unrelated areas]
```
