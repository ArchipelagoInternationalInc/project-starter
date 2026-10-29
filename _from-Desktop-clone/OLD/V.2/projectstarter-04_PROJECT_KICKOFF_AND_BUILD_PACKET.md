# Project Kickoff and Build Packet

Use this process when asking a strong planning model to turn a project idea into a durable build plan.

## Before the planning model sees the project

Prepare a clean packet:

```text
1. Short project idea or existing product summary
2. Target user
3. Desired business model
4. Existing repo status, if any
5. Known constraints
6. Competitive references or market research, if any
7. Compliance boundaries, if any
8. Visual or brand references, if any
9. This Studio Starter Kit, or the relevant excerpts from it
```

Do not include temporary model comparisons, expiring deadlines, old project percentages, machine setup notes, or account credentials.

## Questions every new project must answer

Create or update `PROJECT_BRIEF.md` with:

1. What is the project in one sentence?
2. Who is the specific user?
3. What painful or valuable job does it do?
4. What existing alternative will users compare it against?
5. What project type is it?
6. What is the smallest launch-worthy version?
7. What is explicitly not in the first version?
8. What data does it collect or store?
9. Does it need auth, payments, a database, AI, file storage, or email?
10. What claims or compliance risks exist?
11. What is the core technical risk to validate first?
12. What does a successful first demo prove?

## Build Packet deliverables

Ask the planning model to produce:

```text
PROJECT_BRIEF.md
CLAUDE.md
SESSION_HANDOFF.md
MASTER_PLAN.md
TASKS.md
ARCHITECTURE.md
DATA_MODEL.md
CLAIMS_AND_COMPLIANCE.md when relevant
DESIGN_DIRECTION.md when relevant
CONTENT_PLAN.md when relevant
DECISIONS.md
```

## First task sequence

For the first set of Builder tasks, each task should include:

```text
Task name
Goal
Context
Files likely affected
Exact Builder instruction
Acceptance criteria
Checks to run
What not to do
How to update SESSION_HANDOFF.md
```

## Macro planning prompt

Use this prompt with a strong planning model:

```text
You are the senior product architect and build strategist for this project.

Your job is to convert the project materials into a durable repo-ready Build Packet that can guide Claude Code or another AI Builder after this conversation is gone.

Use the Studio Starter Kit as the operating system, but do not copy temporary details into the project. Remove or generalize dates, model names, subscription windows, current priorities, and stale status notes unless they are project-specific and explicitly marked temporary.

Create a complete Build Packet with:
1. PROJECT_BRIEF.md
2. CLAUDE.md
3. SESSION_HANDOFF.md
4. MASTER_PLAN.md
5. TASKS.md
6. ARCHITECTURE.md
7. DATA_MODEL.md if needed
8. CLAIMS_AND_COMPLIANCE.md if relevant
9. DESIGN_DIRECTION.md if relevant
10. CONTENT_PLAN.md if relevant
11. DECISIONS.md

For TASKS.md, write the first 10 to 15 implementation tasks in a sequence suitable for Claude Code. Each task must be small, testable, and bounded. Do not write a giant "build everything" task.

Before finalizing, audit the output for:
- stale dates
- specific model names
- copied competitor language
- unsupported claims
- overbuilt features
- missing acceptance criteria
- instructions that belong in a temporary handoff instead of permanent docs
```
