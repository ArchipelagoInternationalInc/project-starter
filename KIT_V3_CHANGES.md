# Kit v3 — what changed and why
*For Scott's ratification, October 29, 2026. Every change below is also visible as a marked difference in the repository's history (the `kit-v3` branch against `main`). Nothing in the kit's mechanisms was removed; the seating chart and a few operating assumptions were brought up to date, and the September field review's findings were folded in.*

## The seating chart (file 01)
- **Claude Duet is the Studio Head**: the one standing seat, running around the clock on Scott's account, reading the kit and `studio-hq` as standing orders. It replaces the per-project PM chats and the copy-paste courier role.
- **Builders run in the cloud by default**, from GitHub, on automatic approval. The Studio Mac is used only when a job needs files on it.
- **Fable chats are Consultants**: opened on purpose, no standing role, output is a document Scott ratifies. **No AI gives orders to another AI**; orders are approved files, and the Studio Head is the only seat that acts on them.
- **Madelyn is Operator and Account Executive** for every social-media client, on her own Claude account, with her phone. She has a standing voice: email with "STUDIO:" in the subject line is logged as her directive.
- One hygiene list, in file 01, that every other file points to.
- A future-proofing section: truth in files, nothing dependent on preview features, tools reviewed quarterly.

## The anchor files (file 02)
- Three new anchor files per project: `GOAL.md` (what finished-and-selling looks like), `INBOUND.md` (the dated log of outside input, with a scope-change flag), `DECISIONS.md` (the ruling record). Templates added.
- Builders read `INBOUND.md` before every session. "One session, one task" now points to file 06 for loop work.

## The tools (file 04)
- **The data-safety fix from the field review:** database lock tests run against a throwaway database, never the live project. (This was the review's highest-priority finding; the old wording told a Builder to point a destructive test at real customer data.)
- Two Claude accounts (Scott Max, Madelyn Pro) and why.
- Google Drive is the media library for social clients, handled only by Claude. Blotato is spoken to only by Claude. ChatGPT Plus on Madelyn's account is the video room. Per-client record (Drive folders + Content Log + Blotato history) and a published client dashboard.
- A shared password vault for every shared login.
- GSAP named in the motion stack; a project's deliberate bans are not "corrected."

## The portfolio (file 05)
- The three-workstream ceiling is replaced by **the lineup tiers** (frontline products, frontline clients, personal frontline, second line, third/parked), kept in `studio-hq/LINEUP.md`. The practical ceiling is the weekly usage budget and Scott's hours.
- Hand-work versus loop-work is marked per project, so overnight Builders never wait on a human.
- Four layers of truth: GitHub, Drive (documents and media), Blotato (posting record), published dashboards.
- The cadence now runs continuously through the Studio Head; "check" is retired; weekly review stays.

## The loop (file 06, templates, conversion kit)
- **Cloud Builders run on automatic approval**, with the repo's ask/deny lists as the backstop. This is the change that ends work sitting for hours waiting for "allow."
- **Where the Builder runs changes what it may judge:** the checking script now has a third outcome, CANNOT-RUN, which is never green. A cloud machine can't declare a stretch done if a check needs the database, keychain, or live site.
- **The iteration cap is now a mechanism:** the script counts its own runs and stops at 25.
- **The door no longer locks before there is anything to check:** the conversion kit installs the settings file *after* the first dry loop. Its "what can go wrong" text is corrected.
- The settings template keeps the session-end report hook (it had silently been dropped), labels the typecheck hook as advisory, and explains the 30-minute limit.
- The checking script works on the Mac's old built-in shell as well as current ones.
- Conversion order follows the lineup.

## Choosing (file 07)
- Filed as a numbered rule file and ratified, with a **grandfather clause**: products with real users or signed partners (CheckThenFix, ShallFinder, the SendMyLicense family) don't go back for a Market Brief; everything else does before another hour is spent.

## The reference card
- Four new entries from the field review: cloud machines are walled off and the wall moves; connections go stale after account changes; guards only protect the branches that have them; test the checking script on the Mac's shell once.

## Not changed
- File 03 (what we say in public): untouched.
- Every proven mechanism: reports notebook, Definition of Done, blind critic, account check, permission lists, evidence-not-narrative.

## Still Scott's to settle (not folded in)
- The partnership paper with Yoly and Angel on the nurses product: who owns what. The kit's rule is that the one-page written scope is the engagement; the engine is Scott's; applications on top may be shared.
- The names: the nurses product (filed as `sml-nurses` until named).
