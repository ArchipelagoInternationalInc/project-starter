# CONVERSION KIT — moving an in-progress project onto the Unattended Loop

Copy the four template files from this kit into the repo's root (`DEFINITION_OF_DONE_TEMPLATE.md`, `settings.template.json`, `verifier.template.md`, `verify.template.sh`), then paste the prompt below into a fresh Claude Code session in that repo. One session converts one project. The Builder does all the work; you review the report.

Convert order: the frontline products in `studio-hq/LINEUP.md` first, then any project as it returns to active work. Do not convert a project that is mid-slice — finish or pause the slice, then convert.

---

## The conversion prompt (paste verbatim)

```
You are converting this project to the studio's Unattended Loop (Kit v3 file 06).
Read CLAUDE.md, SESSION_HANDOFF.md, MASTER_PLAN.md, GOAL.md, INBOUND.md, and the project's
decision record (DECISIONS.md, or wherever CLAUDE.md says decisions live) first. Create any of
these anchor files that are missing, from the kit templates, before going on. Then read
06_THE_UNATTENDED_LOOP.md and the four template files in the repo root.

This session builds no product features. It builds the loop around the product.
Do these steps in order; do not skip any.

STEP 0 — Identity preflight. Run the five identity checks (repo config, global config,
last commit author, gh account, remotes). Everything must be the studio account. A
mismatch is a STOP.

STEP 1 — Inventory reality. Do not trust the docs. Run the existing tests, lint,
typecheck, build. List every check the repo can already run (test suite, guard-proof
scripts, policy tests, E2E, screenshot scripts). Note which pass and which fail today.
Write the result to artifacts/CONVERSION_INVENTORY.md.

STEP 2 — Definition of Done for the CURRENT phase. From MASTER_PLAN.md and
SESSION_HANDOFF.md, identify the current phase and its next real gate. Fill
DEFINITION_OF_DONE_TEMPLATE.md into DEFINITION_OF_DONE.md for the work between now and
that gate: numbered checks, each with the exact command that proves it; the do-not-build
list (carry over every parked item); stop conditions; a 25-iteration cap; a dollar stop
line if any check calls a paid API. Mark every check you could not make machine-runnable
as [NEEDS OWNER] with one sentence on why. Do not invent scope — if the plan is
ambiguous, mark it [NEEDS OWNER] rather than guessing.

STEP 3 — The checking script. Turn verify.template.sh into scripts/verify.sh: the
standard checks, then this project's real checks from Step 1, then the rubric and
evidence checks. Every failing check must appear in the failure list with a log path.
The script exits 0 only when everything is green, otherwise exits 2 with the list on
stderr.

STEP 4 — Prove the checker can fail. For at least three of the checks, plant a
deliberate defect (a broken test, a lint error, a removed file), run scripts/verify.sh,
confirm it reports exactly that failure, then restore the file. Record each proof in
artifacts/CONVERSION_INVENTORY.md. If the repo has a guard-proof script, run it too.
A checker that has not been seen failing does not count as installed.

STEP 5 — Dry run, with the door still open. Create .claude/agents/verifier.md from
verifier.template.md. Do NOT install the settings file yet. Start the loop for real on
one tiny, already-planned item (a documentation fix or a one-line spec amendment is
fine). Run scripts/verify.sh by hand; let it block you if it should. Call the verifier.
Produce artifacts/EVIDENCE.md and artifacts/RUBRIC.md.

STEP 6 — Install the door, last. Only now create .claude/settings.json from
settings.template.json, adjusting the allowed dependency and command lists to what this
project actually uses. Keep the ask-list and deny-list exactly as the template has them.
Keep the session-end report hook, ordered AFTER the verify hook. The door locks the
moment this file exists, and it needs the two files from Step 5 to open, which is why
this step comes after them.

STEP 7 — Update the anchors. CLAUDE.md gains a short "Unattended Loop" section stating:
the Builder loops until scripts/verify.sh exits 0, calls the verifier, and does not end
a session with work undone; the ask-list and deny-list; the iteration cap.
SESSION_HANDOFF.md states that the project now runs under the loop and names the current
DEFINITION_OF_DONE.md. DECISIONS.md records the conversion as a dated decision.

STEP 8 — Report. Push a dated report to the project's corpus repo (the hygiene list in
kit file 01) covering: the
inventory, which checks are machine-runnable and which are [NEEDS OWNER], the three
failure proofs, the dry-run result, and the exact list of owner decisions needed before
the first unattended campaign can begin.

Then stop. The first real unattended campaign starts only after the owner approves
DEFINITION_OF_DONE.md.
```

---

## What Scott does after the conversion report arrives

1. The Studio Head reads the report and the Definition of Done and presents every [NEEDS OWNER] item as one numbered list — most will be taste, copy, or money questions the loop cannot judge.
2. Scott answers the list and approves DEFINITION_OF_DONE.md. That approval is the "go."
3. The Studio Head starts the cloud Builder on automatic approval: `Run the unattended loop against DEFINITION_OF_DONE.md until scripts/verify.sh is green, call the verifier, file the report, and stop.`
4. Scott walks away. The result appears on the status board.

## What can go wrong in a conversion, and the answer

- **Half the plan is not machine-checkable.** Expected on design-heavy phases. Those items go to single-seat mode; the loop takes the rest. The [NEEDS OWNER] list makes the split explicit.
- **The existing tests are green but vacuous.** Step 4 exists for this. If planted defects sail through, the report says so, and the first loop item becomes "make the tests real."
- **The door locks before there is anything to check.** The checking script demands a reviewer's report card and an evidence file, and neither exists until the first loop has run. Install the settings file *after* the dry run (Step 6), never before, or the Builder is locked in from the moment it is installed.
- **The Builder converts and then keeps building features.** The prompt forbids it. If it happens anyway, the report shows it; treat as a Builder-refusal-doctrine failure and restart.
- **The project is mid-slice with uncommitted work.** Do not convert. Finish or stash the slice, push a report, then convert from a clean tree.
