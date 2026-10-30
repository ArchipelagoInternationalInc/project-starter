# 06 — The Unattended Loop
*Studio Kit v3. Amends 01 How We Work and 02 Starting and Running a Project. Where they conflict, this file wins. Rule Zero applies: plain language.*

## What changes, in one paragraph

Until now, the Builder did one task and stopped, and Scott carried messages between the planning chat and the Builder. From now on the Builder keeps working, on its own, until a **checking script says the work is done** — and it is not allowed to stop before then. A second, separate reviewer that did not write the code then tries to prove the work is wrong. Only after both agree does the Builder file its report and stop. Scott's job shrinks to three things: approving the definition of "done" before work starts, answering decisions at gates, and reading evidence at the end. Nobody carries messages.

## Why we are doing it this way

The slowness was never the models. It was that "done" lived in Scott's head, so only Scott could judge it, so every step had to pass through him. When "done" is written as checks a script can run, the Builder can judge itself, fix itself, and try again as many times as it needs. Models will keep changing; this mechanism does not depend on which model is running.

## The four mechanisms (every product project gets all four)

**1. A Definition of Done for every stretch of work.** Before the Builder starts, the planning chat writes a short document that says exactly what finished looks like: numbered checks, each with the command that proves it, plus what must NOT be built, when the Builder may ask a human, and how many attempts it gets. Scott approves it. This replaces the old prose "paste-brief." Template: `DEFINITION_OF_DONE_TEMPLATE.md`.

**2. A checking script that is the only judge.** `scripts/verify.sh` runs every check and answers only pass or fail, with the list of what failed. It is the one source of truth for "done." It must be proven able to fail: before trusting it, plant a deliberate mistake and confirm the script catches it — a checker that cannot fail is worse than none (a lesson we already learned with guards).

**3. A door that will not close.** Claude Code has a setting called a Stop hook: a command that runs every time the Builder tries to end its session. Ours runs the checking script. If anything fails, the failures are handed back and the session continues. The Builder cannot quietly stop with work undone. Settings template: `settings.template.json`. The existing session-end report hook stays; the checking script runs first, then the report check.

**4. A reviewer who did not write the code.** After the script passes, the Builder must call a separate reviewer (a "subagent" — a fresh Claude with no memory of the build, read-only tools, instructed to be adversarial) that runs our gauntlet-verify skill and writes `artifacts/RUBRIC.md`. The checking script counts the rubric as one of its checks, so the Builder cannot skip the review. Template: `verifier.template.md`.

## Permissions: no more clicking "allow"

The settings file lists three groups of commands. **Allowed** (run silently): editing files, tests, lint, builds, installing the listed dependencies, ordinary commits and pushes, the checking script. **Ask** (stop and wait for Scott): anything touching Supabase migrations, Vercel production, Stripe, Doppler secrets, or a force-push. **Denied** (never, no matter what): deleting whole folders, resetting history, publishing to any account but the studio's. This is written into every repo instead of remembered.

**Cloud Builders run on automatic approval.** A Builder task started in the cloud (by the Studio Head or as a scheduled task in the Claude app) has its approval setting turned to automatic. Left on the default, a run stops at the first action that needs approval, and overnight nobody is there; that is the hours-of-waiting this whole file exists to end. The repo's ask-list and deny-list are the backstop: an automatic run still cannot deploy to production, migrate a database, touch billing, or force-push, because those commands are refused at the repo, not at the human.

## Where the Builder is running changes what it may judge

The Builder runs either on the Studio Mac or on a rented cloud machine. The cloud machine is deliberately walled off: it cannot reach the product's database, the keychain, or the live site directly. **A check that cannot run on the machine the Builder is using is not a pass and not a skip** — the checking script reports it as CANNOT-RUN and refuses to go green. A cloud Builder may loop freely on code, tests, and public pages, but it can never be the one to declare a stretch finished if any check needs the walled-off things. That final declaration happens on the Mac, or in a session that has what the check needs. The checking script template has three outcomes for this reason: pass, fail, and cannot-run.

## What each seat does now

| Seat | Before | Now |
|---|---|---|
| Executive Director (Scott) | Carried every message; judged every result | Approves each Definition of Done; answers gate decisions; reads the evidence report; says "check" |
| Planning chat (PM) | Wrote prose briefs; read narrative reports | Writes Definitions of Done; reads `EVIDENCE.md` and `RUBRIC.md`; challenges numbers; presents gate decision lists |
| Builder (Claude Code) | One task, then stop and wait | Loops until the checking script is green, calls the reviewer, fixes what the reviewer finds, files the report, then stops |

## Gates are unchanged, and now they are the only interruptions

The Three-Seat Campaign rule stands: one Definition of Done covers all work up to the next real gate — a taste decision, a public sentence, or money. Between gates the Builder does not ask. At a gate it stops, reports, and the PM presents one numbered decision list. Public copy and dollars are never covered by standing delegation.

## Safety valves (so an unattended Builder cannot run away)

- **Iteration cap** in every Definition of Done (default 25). The checking script counts its own runs in `artifacts/loop-count` and fails hard at the cap, so the cap is a mechanism, not a memory. Past it, the Builder commits `BLOCKED:`, writes `artifacts/BLOCKED.md` explaining the last three attempts, and stops.
- **Platform valve:** Claude Code stops honoring the closed door after eight consecutive blocked attempts and ends the turn anyway. If that happens, restart with "continue until verify.sh is green" and count it as an intervention worth investigating.
- **Money line:** any Definition of Done whose checks call paid APIs states a dollar stop line; the Builder meters a small pilot first and projects before spending (the ShallFinder rule).
- **Ask-list hard gates** above. An unattended Builder can never deploy to production, migrate a database, or touch billing on its own.

## When NOT to use the loop

Taste-dense work — a hero animation, a design system, art direction — cannot be judged by a script. That stays in single-seat mode (Amendment 02) with screenshots and a human eye. The rule of thumb: if the acceptance check would have to say "looks good," it is not a loop task; if it can say "exits 0," "byte-identical," "zero console errors," "passes the validator," it is.

## Evidence, not narrative

Every loop ends with `artifacts/EVIDENCE.md`: for each check, the command run, its exit code, and a pasted excerpt of its output. The corpus-repo report then summarizes and links it. The PM reads the evidence first and the narrative second. A claim without evidence in the file does not count as done.

## Converting a project already in progress

Use `CONVERSION_KIT.md`. It contains one prompt to paste into a Builder session on any existing repo; the Builder inventories the true current state, writes a Definition of Done for the current phase from the existing plan, builds the checking script from the tests that already exist, proves the script can fail, runs one dry loop, and only then installs the door (the settings file) — in that order, because the door locks the moment it is installed. Convert in lineup order: the frontline products first (CheckThenFix, ShallFinder, the SendMyLicense family), then the rest as each comes back into active work.
