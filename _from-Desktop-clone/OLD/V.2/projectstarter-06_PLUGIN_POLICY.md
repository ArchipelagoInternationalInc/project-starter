# Claude Code Plugin Policy

Plugins can improve execution, but they must not replace the project docs or override the project architecture.

## When to install plugins

Install useful Claude Code plugins before major build execution if they are clearly relevant and low-risk. They do not need to be installed before a planning-model Build Packet session unless the planning session is happening inside Claude Code.

The planning model should create the product strategy and task docs. Plugins help the Builder execute tasks later.

## Recommended small set

### Superpowers

Use for structured brainstorming, execution planning, systematic debugging, test-driven development, review checkpoints, and skill authoring.

### Frontend Design

Use when Claude Code is building visible UI, landing pages, dashboards, settings screens, onboarding, pricing, or polished application surfaces. It is a Claude Code plugin, not a Claude Design feature and not a normal chat feature.

### Context7

Use when implementation depends on current, version-specific library documentation or examples.

### Code Review

Use after meaningful implementation chunks, before merging or before a risky refactor is considered complete.

## Relationship to Claude chat, Claude Design, and Claude Code

| Tool | Best role | Plugin relevance |
|---|---|---|
| Claude chat | strategy, copy, synthesis, project management | Plugins generally do not govern normal chat unless the plugin is explicitly built for chat |
| Claude Design | visual design, prototypes, layout exploration, design handoff | Use Claude Design's own canvas/workflow; Claude Code frontend plugins are not a substitute |
| Claude Code | repo implementation, file editing, tests, commands | Plugins are most relevant here |

## Plugin authority rule

If plugin guidance conflicts with `CLAUDE.md`, `MASTER_PLAN.md`, `SESSION_HANDOFF.md`, or `CLAIMS_AND_COMPLIANCE.md`, stop and ask for human direction.

## Safe plugin instruction block

Add this to project `CLAUDE.md` when plugins are installed:

```markdown
## Optional Claude Code plugins

You may use installed Claude Code plugins for frontend design, systematic debugging, planning, documentation lookup, TDD, and code review when appropriate.

Plugins do not override this project's architecture, compliance rules, task scope, or acceptance criteria.

When plugin guidance conflicts with project docs, stop and ask before proceeding.
```

## Avoid plugin sprawl

Do not install many plugins merely because they are free. Each plugin can influence behavior and add complexity. Install the few that serve the current project.
