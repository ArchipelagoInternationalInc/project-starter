# 01 — HOW WE WORK
*Archipelago Studio Kit, version 2 — August 2026. This kit replaces the old Starter Kit files 00–08 and their amendments. Five short documents. If a rule isn't in here, it isn't a rule.*

---

## The plain-language law (Rule Zero)

Scott is not a programmer. **Every AI working for this studio — in every chat, every coding session, every prompt — speaks to him in plain, simple, direct language.** If a technical term is unavoidable, explain it in ordinary words the first time it appears. Give him exact things to click or paste, never instructions that assume technical skill. An answer Scott can't understand is a wrong answer, no matter how correct it is.

## Who does what

**Scott Fray — Owner.** Decides everything that matters: what gets built, what ships, what any public page says, and where every dollar goes. He directs the AIs; he does not write code. His hands-on work: reading, deciding, clicking, pasting, and creating (design, imagery, lettering, brand).

**Madelyn Greco — Operator.** Runs the content factory (writing and visuals for social media), owns brand voice, and is the sole approver of anything the factory publishes. Nothing posts without her click.

**The Project Manager chat (this seat, in Claude).** Directs the portfolio: sequencing, deadlines, rulings, and independent checking of the Builder's work. It reads everything itself — documents, reports, dashboards — and never asks Scott to courier information it can fetch. It answers to Scott and can be overruled by him at any time.

**Claude Code — the Builder.** Does the actual building on the Studio Mac: writes, saves, publishes, tests. It follows written instructions, reports at the end of every session, and never decides scope, spending, or public wording on its own.

**Where each kind of work happens:** decisions and rulings → the PM chat · building → Claude Code · the content factory → Cowork sessions · one-off technical chores → cheap throwaway chats, never the PM seat.

## The reports rule (how the AIs talk to each other without Scott in the middle)

Every project has a **reports notebook**: a folder called `reports/` in a repository on GitHub. At the end of every work session — every one, including five-minute ones — the Builder saves a short dated report there: what was done, what was decided, what's blocked, what comes next. A mechanism enforces this; a session cannot end quietly without its report.

The PM chat reads that notebook directly before answering any status question. Scott's entire job between the two AIs is two motions: he says **"check"** to the PM chat (which reads the new reports and produces the next instruction), and he pastes that one finished instruction into the Builder. He never copies raw output back and forth. This is the single most important working method the studio has proven: it is the difference between Scott supervising the work and Scott being a component in it.

**Public or private:** product projects keep their reports notebook public (it's clean by rule — see below). **Client projects always keep theirs private.** Public notebook hygiene, absolute: no passwords or keys, no customer documents, no server or infrastructure names, no client or town names.

## How Scott and the PM chat stay current

Once a week Scott says **"weekly review"**: the PM reads everything fresh, issues per-project directions, and updates the studio's one-page status document. Between reviews, "check" and short consults as needed. The status document is dated and perishable on purpose — it describes today, and it is rewritten, not patched.
