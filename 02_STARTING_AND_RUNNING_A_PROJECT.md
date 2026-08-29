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

## Look again (the SendMyLicense lessons — nearly every day lost traced to acting on a picture of the world instead of the world)

- **Every session and every status report opens with a fresh look.** "I checked earlier" is not a check. The project once sat blocked for two days while three parties argued from three outdated snapshots; the thing they were arguing about had already happened.
- **Tools can be blind, and a blind tool sounds confident.** After any account, plan, or organization change on any platform, reconnect every integration immediately. And when a tool can't see something, the honest sentence is "not visible to me" — never "it doesn't exist."
- **One change per test.** When two fixes land together and things start working, the cause is unknown — label it unknown, or it will silently break again. The platform's own activity record is the authority, over anyone's theory, always.
- **Read the machine's stated reason word for word before inventing theories.** A blocked deployment once spawned three competing theories over several days; the platform had been stating the real reason the whole time.
- **The stranger test.** Operators cannot see what strangers see: production once served a login wall to the entire public for days while everyone logged in saw a working site. At launch, and after any plan or protection change, view the site in a private/incognito window — as a stranger — and confirm the certificate, not just the settings.
- **The Builder may refuse, and its refusals are valuable.** Destructive or irreversible steps require evidence the diagnosis is correct first. A problem discovered at the finish line blocks "done" — no quiet closes. Write sequencing constraints down with their reasons.
- **Big moves are ordered runbooks.** Domain changes and migrations are written as numbered steps with the *reason* for each ordering, and the Builder states plainly what it has deliberately not done yet.
- **Secrets never travel through chat.** Any secret that passes through a transcript gets rotated — it's cheap. And every secret change ends with a fresh deployment, or the running site keeps using the old one.
- **Between seats, plain text only.** Reports and documents relay as plain text or .md files; a receiver who gets an empty or unreadable attachment says so immediately and never pretends to have read it.
- **Ship to one real user before building more from imagination.** The first real user re-ranks the roadmap on contact. Their feedback sets backlog order, and the launch test walks the exact path *they* will travel — not the path we built.
- **A designed feature isn't done until it's been seen working on the live site.** A fully specified animation once shipped as a frozen frame and read as broken for weeks. Anything animated carries a static fallback that looks acceptable as the permanent state.
