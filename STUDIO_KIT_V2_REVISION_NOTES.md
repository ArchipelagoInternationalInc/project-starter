# Studio Kit v2 — revision notes for the writer

**From:** the SendMyLicense Builder session, 16 September 2026
**About:** the `project-starter` repository — the five numbered rules, the Platform Reference Card, file 06 (The Unattended Loop), the conversion kit, and the four templates
**Why this exists:** the kit was read cover to cover and then checked against a real project that is mid-flight (SendMyLicense). Reading it alone, it holds together. Applying it to a live repository is where the gaps show.

Everything below is a finding, its location, why it matters, and — where I can give one — suggested replacement wording. Nothing in the kit has been edited. The writer owns those files.

A note on labels, per the kit's own rule about calling a guess a guess: items marked **verified** were tested or read directly. Items marked **inference** are reasoned but untested, and say what would prove them.

---

## 1. The one that could destroy data

**Where:** `04_OUR_TOOLS.md`, the Supabase section.

**What it says now:** *"every lock is tested, by trying to break it, against the real database."*

**Why it matters (verified):** read literally, that sentence tells a Builder to point a destructive test at the live product database. On SendMyLicense, the lock-testing script creates fake user accounts and writes rows into records that are **deliberately impossible to delete afterwards** — that is the whole point of those records. Running it against the live project would permanently pollute real customer history, and no amount of cleanup afterwards would remove it. SendMyLicense's own project rules forbid this in bold. The studio kit currently says the opposite, and the kit is supposed to outrank the project.

**Suggested replacement:**

> Every lock is tested by *trying to break it* — a second account attempting to read, change and delete the first account's data, with a control test proving the lock isn't simply refusing everyone. That test runs against a **throwaway database**: either a local one created fresh for the test, or a disposable copy of the project made for the purpose and deleted afterwards. **It is never pointed at the live project.** Test scripts of this kind create records that cannot be removed; a single careless run permanently contaminates real customer history.

This is the highest-priority item in this document. The others cost time; this one costs data.

---

## 2. The gap that stops the loop working at all

**Where:** `01_HOW_WE_WORK.md` and `04_OUR_TOOLS.md` both assume the Builder runs on the Studio Mac. `06_THE_UNATTENDED_LOOP.md` and `verify.template.sh` inherit that assumption.

**What's missing:** the Builder now also runs in the cloud — a temporary rented computer, not the Mac. That machine is deliberately walled off. Verified, in this session, on a real project:

- it cannot reach the product's database at all
- it has no access to the keychain, so anything needing a password can't run
- it cannot open the live website directly (it has to go in through the hosting company's own tooling)
- it can photograph public pages, but not any signed-in screen, because the app can't reach the database to render one

**Why it matters:** the loop's entire premise is *"the checking script is the only judge."* A cloud Builder running the template script would see every check it **can** run come back green, and would then be entitled to declare the work done — while the checks that matter most had simply been skipped. That is precisely the failure `02_STARTING_AND_RUNNING_A_PROJECT.md` warns about twice: *"a checker that cannot fail is worse than none"* and *"when a measurement surprises you, suspect the measuring tool first."*

**Suggested addition to file 06, as a new short section:**

> **Where the Builder is running changes what it may judge.**
> The Builder runs either on the Studio Mac or on a rented cloud machine. The cloud machine is deliberately walled off from the database, the keychain and the live site. A check that cannot run on the machine the Builder is using is **not a pass and not a skip** — the checking script reports it as CANNOT-RUN and refuses to go green. A cloud Builder may therefore loop freely on code, tests and public pages, but it can never be the one to declare a stretch finished if any check needs the walled-off things. That declaration happens on the Mac.

**And a matching change to `verify.template.sh`:** it needs a third outcome beyond pass and fail. Today a check either passes or fails; there is no way to say "this machine cannot answer that question," so the honest answer gets recorded as one of the two dishonest ones.

---

## 3. The process bug: Step 5 locks the door before Step 6 walks through it

**Where:** `CONVERSION_KIT.md`, the conversion prompt, Steps 5 and 6 — and `settings.template.json`.

**What happens (verified by reading the template against the script):**

- Step 5 installs the settings file. That file makes the checking script run **every time the Builder tries to end its session**, and blocks the ending if the script isn't green.
- The checking script requires two files that only exist *after* a completed loop: the reviewer's report card, and the evidence file.
- Step 6 — the dry run that produces those two files — comes *after* Step 5.

So from the moment Step 5 finishes, the Builder cannot end its session at all, for any reason, including to tell Scott something went wrong. It is locked in until it manufactures the two files. The platform eventually forces the session to end after eight blocked attempts, which file 06 already calls "an intervention worth investigating" — except here it isn't a symptom, it's the guaranteed outcome of following the instructions in order.

**The kit says the opposite, in writing.** `CONVERSION_KIT.md`'s "what can go wrong" section says *"the verify hook has nothing to gate against until the DoD is approved."* That is not correct: the report-card and evidence checks gate from the first second.

**Suggested fix — two changes:**

1. Reorder: install the settings file **after** the dry run, as the last thing before the report. Or install it with the door propped open, and close it as a separate final step.
2. Replace the "what can go wrong" bullet with an honest one:

> **The door locks before there is anything to check.** The checking script demands a reviewer's report card and an evidence file, and neither exists until the first loop has run. Install the settings file *after* the dry run, never before, or the Builder is locked in from the moment it is installed.

---

## 4. Files the kit assumes exist, which don't

**Verified against a real project.** Both cause a Builder to stop and ask, or worse, to invent.

| Kit location | Assumes | Reality |
|---|---|---|
| `CONVERSION_KIT.md` prompt, Step 0 read-list and Step 7 | a `DECISIONS.md` in every repo | SendMyLicense keeps decisions inside its packet index instead. No such file. |
| `verifier.template.md`, item 1 | a `CLAIMS_AND_COMPLIANCE.md` | Doesn't exist. The equivalent is a language-rules section in the project's own `CLAUDE.md` plus a section of the product brief. |

**Suggested handling:** either make both files part of the standard three anchor files in `02_STARTING_AND_RUNNING_A_PROJECT.md` — so new projects create them and old ones get them during conversion — or change both references to *"the project's decision record, wherever it lives — named in `CLAUDE.md`."* The first is cleaner. Right now the kit names files that the kit itself never tells anyone to create, which is the same shape of problem as a rule with no mechanism.

---

## 5. Places the prose and the templates disagree

These are small individually. Together they mean a Builder that follows the templates gets a different result from a Builder that follows the words.

**5a. "The three template files" — there are four.**
`CONVERSION_KIT.md`, opening line: *"Copy the three template files from this kit"* — then lists four (`DEFINITION_OF_DONE_TEMPLATE.md`, `settings.template.json`, `verifier.template.md`, `verify.template.sh`). Straight count fix.

**5b. The report hook silently disappears.**
File 06 says: *"The existing session-end report hook stays; the checking script runs first, then the report check."* But `settings.template.json` contains **only** the checking script, with no second entry and no note. And the conversion prompt's Step 5 tells the Builder to *"keep the ask-list and deny-list exactly as the template has them."* A Builder copying the template as instructed drops the report hook — which is the mechanism file 01 calls the studio's most important working method. The template needs the second hook entry present, even if commented, with a line saying to keep it and put it last.

**5c. The iteration cap is a reminder, not a mechanism.**
File 06 and the Definition of Done template both set a cap of 25 attempts, after which the Builder is supposed to stop and write a blocked report. Nothing anywhere counts attempts. The Builder is asked to remember a number across dozens of cycles — and `02_STARTING_AND_RUNNING_A_PROJECT.md` states the studio's own rule against exactly this: *"Anything that must always happen gets a mechanism, not a reminder. Remembered rules decay; checked rules hold."* Either the checking script counts its own runs and fails at 25, or the kit should say plainly that the cap is a judgment call and not a guarantee.

**5d. Two different hygiene lists.**
File 01 says public notebooks carry *"no passwords or keys, no customer documents, no server or infrastructure names, no client or town names."* `CONVERSION_KIT.md` Step 8 says *"no secrets, no document contents, no hostnames, no entities named."* They mostly agree, but "entities" and "town names" aren't the same word and one list is what gets checked. Pick one, put it in file 01, and have everything else point at it.

**5e. File 02 still states the old rule in its own voice.**
File 06 says it amends 01 and 02 and wins where they conflict. But file 02 still reads *"One session, one task"* with nothing nearby to say that's been superseded for loop work. Anyone reading 02 alone — which is what a fresh Builder does — gets the old behaviour. One pointer line inside 02 fixes it.

---

## 6. Wording worth a second look

**6a. The motion stack doesn't match what's actually built.**
`04_OUR_TOOLS.md` names Vite, ScrollTrigger and Lenis as the approved extras for rich motion. SendMyLicense's marketing site is built on GSAP with ScrollTrigger and MotionPathPlugin, and its rules explicitly ban the alternative it used to use. GSAP isn't mentioned in the kit at all. Not a contradiction exactly, but a future Builder reading only the kit could "correct" a decision that was made on purpose. Naming GSAP would settle it.

**6b. The conversion order has no rule for projects not on the list.**
`CONVERSION_KIT.md` says ShallFinder first, CheckThenFix second, *"then the rest as each comes back into active work."* SendMyLicense is the project with a live public site and the nearest path to a paying customer, and it isn't named. This may be deliberate. If it is, one sentence saying why would stop the question being reopened every time. **This is an owner decision, not a writer decision** — see the last section.

---

## 7. Technical items someone should verify on the Mac

I can't test these from a cloud machine, so they are flagged rather than asserted.

**7a. The checking script may not run on the Mac's built-in shell (inference).**
`verify.template.sh` uses a strict mode together with an empty list, and older versions of the Mac's default shell treat that combination as an error and quit immediately — meaning the script would die on its first line of real work rather than checking anything. It runs correctly on newer shells; I confirmed that much here. **How to settle it:** run `bash --version` on the Studio Mac and, if it reports version 3, have the script tested there before any project relies on it. The fix is one line either way.

**7b. The half-hour limit on the door.** The settings template gives the checking script 30 minutes. On a project with a full build and a browser test suite that is not obviously generous, and the kit doesn't say what happens if the limit is hit. It should say.

**7c. One of the two hooks does nothing.** Besides the door, the settings template adds a check after every file edit — but it only prints a warning and never stops anything. That may be intended. If it is, a word saying "advisory" prevents someone later believing it's a guard.

---

## 8. Suggested additions to the Platform Reference Card

The card is the best document in the kit — it's the one that pays for itself. Three traps this project hit that aren't on it yet, all verified in this session:

- **Cloud Builders are walled off, and the wall moves.** A rented cloud machine may be blocked from reaching the database, the live site, or both — and the block can appear *partway through a session* that was working fine an hour earlier. The honest sentence when it happens is "not visible to me," never "it doesn't exist." (File 01 already says this; the card is where a Builder will actually look.)
- **Connections go stale after account changes.** A tool that worked yesterday can come back needing to be re-authorised, and an automated session cannot do that itself — it can only say so. This matches the card's existing advice to reconnect every integration after any account or plan change; it's worth naming the symptom, which is a tool suddenly refusing rather than failing.
- **A repository's own safety mechanisms only protect the branches that have them.** SendMyLicense's report gate and its commit-signature guard live on an unmerged branch. On the main line, the setting that points at them points at a folder that isn't there — so neither runs. Nothing went wrong, because the underlying setting held, but the guards were decorative for days. Worth a card line: *after installing any guard, check that it exists on the branch people actually work from.*

---

## Not for the writer — two things only Scott can settle

Listing them here so they don't get quietly folded into an editing pass:

1. **The real-database ruling (item 1).** My proposal is throwaway-or-disposable-copy only, never the live project. That is a change to how the studio tests its locks, so it needs an owner's yes, not an editor's.
2. **Where SendMyLicense sits in the conversion order (item 6b).** The kit says ShallFinder first. SendMyLicense is the one with a live site, and it is currently sitting at a decision gate with a clean, green branch — which is a legal moment to convert it. Whether it jumps the queue is a portfolio decision.

---

## What was and wasn't done

**Done:** read all five numbered rules, the Platform Reference Card, file 06, the conversion kit and all four templates; checked the `unattended-loop-kit` copies against the root copies (byte-identical, so there is only one version to revise); tested every command the checking script calls against a real project; read that project's existing rules, hooks and test suite to find the collisions above.

**Not done, deliberately:** nothing in the kit was edited, and no project was converted. The kit is the writer's to change, and converting a project while its rulebook is being rewritten would mean building against a document that's about to move.
