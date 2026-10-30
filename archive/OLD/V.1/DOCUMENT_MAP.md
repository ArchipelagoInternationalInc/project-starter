# DOCUMENT MAP.md
## Which studio document governs what — read this if you're ever unsure

*Created June 30, 2026, after the Build Bible v2.0 superseded parts of the original Portfolio Architecture document. This file exists so no future session — human or Claude — follows stale guidance because it grabbed the wrong doc.*

---

## The short version

**Portfolio Architecture (PORTFOLIO_ARCHITECTURE.md)** answers: *what do we build, and with what patterns?*
Stack choices, project types, auth/payments/database patterns, design system, brand tokens, security, legal, deployment targets. Mostly stable — doesn't change often.

**The Build Bible (Build_Bible_v2.docx)** answers: *how do we actually run a Claude Code session, day to day?*
The three-role chain of command, the three-anchor-file system, the session loop, token economy, permissions, chat continuity, recovery. Written from real build nights. Evolves as the studio learns.

**STACK.md** answers: *who owns which account, and where do I log in?*
Pure reference lookup. No reasoning, no workflow — just the map.

**Studio Context Brief** answers: *who are we and what's the whole portfolio?*
Strategic orientation for a brand-new conversation. Read once at the start of a planning session, never fed to the Builder.

**DEV_WORKSPACE_GUIDE.md** answers: *what's installed on which machine, and how do I set up a new one?*
Hardware layout, software inventory, machine setup steps. Purely mechanical.

If two documents ever seem to disagree, **the Build Bible wins on workflow questions** (it's the more recent, battle-tested source) and **Portfolio Architecture wins on stack/pattern questions** (it's the more complete technical reference). See the specific supersessions below.

---

## Where the Build Bible supersedes Portfolio Architecture

Portfolio Architecture Section 6 ("The Claude Code Workflow") was written before any real building happened — it was theory, drawn from general best practice. The Build Bible was written after ten real sessions and one real chat-loss recovery (NeurōTone, lost at ~70% complete). Where they overlap, **defer to the Build Bible**:

| Topic | Old guidance (Portfolio Architecture §6) | Current guidance (Build Bible) |
|---|---|---|
| Session memory | Implied one CLAUDE.md-style file plus a loose "feature brief" per task | **Three anchor files**: CLAUDE.md (rules), SESSION_HANDOFF.md (current state), MASTER_PLAN.md (whole roadmap). This is the fix for the single worst failure mode the studio has hit. |
| What to feed Claude Code | Suggested attaching the Portfolio Architecture doc itself to build sessions | **Never** feed STACK.md, Studio Context Brief, or Portfolio Architecture to the Builder — pure token waste. The Builder reads only CLAUDE.md + SESSION_HANDOFF.md (+ MASTER_PLAN.md only when planning a specific feature that needs it). |
| Model selection | Opus for architecture, Sonnet for execution, Haiku for small edits | Refined into the **three-role chain of command**: Executive Director (you) → Project Manager (Claude in browser, cheap) → Builder (Claude Code, expensive). Do ALL thinking with the Project Manager; give the Builder only the tightest final instruction. Trivial fixes go straight to the Builder without a Project Manager detour. |
| Permission mode | "Start with Before Edits, switch to Edit Automatically when confident" | More specific: **accept-edits ON as baseline**, PLUS git/npm/dev-server added to the always-allow list in `.claude/settings.local.json` (this is the actual fix for 15–20 approval clicks per session — accept-edits alone doesn't cover commands). Never full bypass mode. Deletion always stays prompted. |
| Session length | Not specified | **One task per session, then quit.** A long session silently inflates cost because context is re-sent on every exchange. Quitting is safe because the anchor files hold everything — nothing is lost. |
| Chat continuity | Not addressed | **Explicit handoff protocol**: before a chat gets heavy, update the anchor files, open a fresh chat, attach them, and say "you are my project manager, pick up where we left off." |
| Recovery from a lost chat | Not addressed | **Explicit recovery protocol**: don't build anything new — inspect the actual code first (Claude Code reads the whole repo), cross-check against surviving docs, rebuild SESSION_HANDOFF.md from what's *actually true*, then resume. Code is reality; docs are intent. |

**Action for existing projects:** NeurōTone and Harmonia are already running under the three-anchor-file system per the Build Bible — no changes needed there. Any project still using only a loose "feature brief" pattern (check each product repo) should be migrated to the three-anchor-file system at the next natural session boundary.

---

## Where Portfolio Architecture still governs (unchanged, still authoritative)

The Build Bible doesn't touch these — Portfolio Architecture remains the single source of truth:

- **Section 3** — The shared stack (exact tool list, what's explicitly excluded)
- **Section 4** — Project type templates (SaaS / brochure / content / e-commerce / client / micro-app) and when a project needs Supabase at all (see the correction below)
- **Section 5** — Account separation rules (what's shared studio-wide vs. per-project)
- **Sections 7–8** — Design system foundation and the brand tokens system
- **Sections 9–14** — Auth, payments, database conventions, AI integration, email, file storage patterns
- **Sections 15–17** — Admin dashboard, content/CMS pattern, cross-project integration
- **Sections 18–20** — Deployment workflow, security, legal/compliance patterns
- **Sections 21–24** — Maintenance, client engagement, cost monitoring, when to deviate

The Build Bible's Part 2 ("The Fixed Technology") and Part 13 ("Architecture Principles" — one-engine-multiple-surfaces, shared-foundation-but-extract-later) are **restatements and sharpenings** of Portfolio Architecture Sections 3 and 10, not contradictions. Both can stand; the Build Bible versions are punchier and closer to daily use.

---

## The correction this reconciliation surfaces

One thing neither document said clearly enough until the Supabase-sprawl conversation (June 29–30, 2026): **not every project needs a Supabase project.**

Add this rule explicitly to Portfolio Architecture Section 4 (Project Type Templates): a Supabase project is created **only** when a project actually needs user accounts or persistent server-side data. Static brochure sites, content sites, and Claude-API-only micro-apps do not get a Supabase project — ever. This has already caused real cost and confusion (multiple Supabase orgs, a paused NeurōTone project, near-miss on creating unnecessary new projects). The Build Bible's Part 2 table lists "Database & Auth: Supabase (one project per app)" — read "app" narrowly. A brochure site is not an app in this sense.

**Reference case:** madelyngreco.com correctly identified in its own project summary that it needs zero database — Cal.com holds bookings, Stripe holds the shop, Brevo holds the list, files hold content. That's the model to point to whenever this question comes up again.

---

## Doppler — the gap the Dev Workspace Guide surfaced

DEV_WORKSPACE_GUIDE.md introduces Doppler as the studio's secrets manager (streamed at runtime, no plain `.env` files on disk across four machines) — this is a real addition to the stack that predates it wasn't in Portfolio Architecture's environment variable guidance (Section 26), which assumed local `.env.local` files.

**Resolution:** Doppler is now the studio standard for secrets across all machines. Portfolio Architecture Section 26 should be read as superseded on this point — secrets live in Doppler, streamed at runtime, not in local `.env.local` files. Add a step to Part 5 of the Build Bible ("Starting a New Project"): before any environment variables are needed, create the project's Doppler config and add secrets there first. This is a genuine gap in the current "Step 1 through Step 7" sequence and should become Step 1.5.

---

## Quick-reference: what to attach to what kind of conversation

| Conversation type | Attach |
|---|---|
| New planning/strategy conversation (Project Manager role) | Studio Context Brief + this DOCUMENT_MAP.md if orientation is needed |
| Starting a brand-new project | Portfolio Architecture (relevant sections) + Build Bible Part 5 |
| Any Claude Code build session (the Builder) | **Only** that project's CLAUDE.md + SESSION_HANDOFF.md (+ MASTER_PLAN.md if planning a specific feature) |
| Recovering a lost chat | Build Bible Part 12, then inspect the actual repo before touching anything |
| Account/access questions | STACK.md |
| "How do I set up a new machine" | DEV_WORKSPACE_GUIDE.md |

---

*This document lives in the docs repo (project-starter) alongside the other anchor documents. Update it whenever a new document is added to the studio's operating system, or whenever two documents are found to disagree.*
