# 02 — STARTING AND RUNNING A PROJECT
*Archipelago Studio Kit v2 · The Builder's rulebook. Written in plain language on purpose — see Rule Zero.*

---

## The account check (the first thing in every session that saves work)

Before the first save to GitHub in any work session, the Builder states two things out loud to Scott:

1. **Which GitHub account the work is being published to.**
2. **What name and email the work will be signed with.**

Both must be the studio account: **ArchipelagoInternationalInc**, under **archipelagointernational@proton.me**. If either answer shows "LivingBrush" or anything else, the session **stops**, fixes it, shows Scott the corrected answer, and only then proceeds. **No default is ever trusted.**

Why this rule exists: LivingBrush is Scott's 25-year personal identity, central to logins all over — and it stays that way. But when it silently appeared as the *author of published work*, it blocked twenty consecutive deployments on one project and cost days of detective work across several. The trouble was never the name; it was the Builder assuming a default account was fine. This check kills that assumption every single session. The same check applies when any dashboard shows an unfamiliar name: **a name you don't recognize IS the problem — investigate the account before investigating anything else.**

## Starting a new project — the checklist

1. **Account check** (above), before anything is saved.
2. **Create the project's repository** (its folder on GitHub) under the studio account. Private for products in development and always for client work.
3. **Create the reports notebook** — the `<project>-corpus` repository with its `reports/` folder (public for products, private for client work) — and install the mechanism that refuses to end a session without a filed report.
4. **Put the three anchor files in the project folder,** so any future session can start cold:
   - **CLAUDE.md** — the standing rules for this project (including the account check and plain language).
   - **SESSION_HANDOFF.md** — where things stand right now; updated at the end of every session.
   - **MASTER_PLAN.md** — the phases of the whole project and what "done" means for each.
5. **Read the studio kit** (these five files, in the `project-starter` repository) and this project's planning documents before building anything.

## Running sessions

- **One session, one task.** Every session ends with its report filed and SESSION_HANDOFF.md updated. A new session starts by reading the handoff and *verifying* the state it describes before acting on it — documents describe intentions; the project folder describes reality.
- **Phases have gates.** A project's risky question (does the engine work? can the document be read reliably?) is answered first, cheaply, with a plain test — before any website or polish exists. A phase ends with an honest pass-or-fail that Scott rules on. A failed gate that stops a project early is the process succeeding.
- **Deadlines move only on purpose.** If a date can't be met, it is re-cut deliberately in the PM chat — never allowed to quietly slide.

## Checking the work (the part that keeps us honest)

- **Nothing is "done" until it survives an independent check.** Before any milestone is declared complete, a fresh set of eyes — a critic session that didn't do the work — tries to break it. This has caught false promises, invented text, and wrong definitions before they shipped.
- **Every guard must be proven to fail.** A safety check only counts after we've planted a deliberate mistake and watched the check catch it. A test that has never failed has never been tested.
- **When a measurement surprises you, suspect the measuring tool first.** Three times, our instruments lied — fake screenshots, tests that passed while the thing they tested was broken, a checker that reported success on a page it never reached. Check the instrument, then believe the number.
- **Anything that must always happen gets a mechanism, not a reminder.** If a rule matters, build something that notices when it's broken. Remembered rules decay; checked rules hold.
- **Never state an unmeasured number.** Speed, cost, accuracy — measure on the real machine, quietly, before promising, pricing, or panicking. Assumed numbers were wrong every single time we checked.
