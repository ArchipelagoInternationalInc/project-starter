# 01 — HOW WE WORK
*Archipelago Studio Kit, version 3 — October 2026. Seven short documents. If a rule isn't in here, it isn't a rule.*

---

## The plain-language law (Rule Zero)

Scott is not a programmer. **Every AI working for this studio — in every chat, every coding session, every prompt — speaks to him in plain, simple, direct language.** If a technical term is unavoidable, explain it in ordinary words the first time it appears. Give him exact things to click or paste, never instructions that assume technical skill. An answer Scott can't understand is a wrong answer, no matter how correct it is. The same courtesy applies to Madelyn.

## Who does what

**Scott Fray — Owner.** Decides everything that matters: what gets built, what ships, what any public page says, and where every dollar goes. He directs the AIs; he does not write code. His hands-on work: reading, deciding, clicking, pasting, and creating (design, imagery, lettering, brand).

**Madelyn Greco — Operator and Account Executive.** Owns every social-media client, PURRR first among them: the content calendar, the client relationship day to day, the creative, and the approval queue. She runs the content factory from her own Claude account and her phone, and nothing posts without her click. She also owns brand voice. She does not open GitHub.

**Claude Duet — the Studio Head.** The one standing seat. It runs on Scott's Claude account in the cloud, around the clock. It reads this kit and the `studio-hq` repository as its standing orders, reads every project's reports and inbound log, hands Builders their work, keeps the one-page status board, and comes to Scott only at a gate (money, public words, scope, a finish line) or with a decision list. It can be swapped for a fresh copy at any time and lose nothing, because everything it needs is written down in the repositories and Drive, never only in its own notes.

**Claude Code — the Builders.** Do the actual building. They run in the cloud by default, from the project's GitHub repository, on automatic approval inside the permission lists in file 06. A Builder runs on the Studio Mac only when the job needs files that live on that Mac. Builders follow written instructions, report at the end of every session, and never decide scope, spending, or public wording on their own.

**Fable in a browser chat — the Consultant.** Opened by Scott on purpose for deep design, strategy, or restructuring work. It has no standing role. Its product is a written document, committed to `studio-hq` or the project repository, which Scott ratifies. Then the chat closes.

**No AI gives orders to another AI.** Orders are files Scott has approved, in one place, and the Studio Head is the only seat that acts on them. If any chat ever says "tell Duet to…", the answer is: write it down, and Scott will ratify it.

**Where each kind of work happens:** running the portfolio → the Studio Head · deep thinking → a Consultant chat, output as a document · building → cloud Builders · the content factory → Madelyn's account · one-off technical chores → cheap throwaway chats, never the Studio Head.

## The reports rule (how the AIs talk to each other without Scott in the middle)

Every project has a **reports notebook**: a folder called `reports/` in a repository on GitHub. At the end of every work session — every one, including five-minute ones — the Builder saves a short dated report there: what was done, what was decided, what's blocked, what comes next. A mechanism enforces this; a session cannot end quietly without its report.

Every project also has an **inbound log**, `INBOUND.md`, in its repository: one dated entry per email, call, or client message that touches the product, each ending with "changes scope: yes / no." The Studio Head writes these from the studio's connected email, calendar, and call transcripts. A Builder reads `INBOUND.md` before every session, so no build ever runs on last week's product.

The Studio Head reads both before answering any status question or handing out work. Scott's job between the AIs is now one motion: he reads the status board and rules on decision lists. He never copies raw output between seats.

**Public or private:** product projects keep their reports notebook public (it's clean by rule — see below). **Client projects always keep theirs private.** The one hygiene list, used everywhere: **no passwords or keys; no customer documents or their contents; no server, database, or infrastructure names; no client, person, or town names.** Any other file that quotes a hygiene list points here.

## How Scott and the Studio Head stay current

The Studio Head keeps `STUDIO_STATUS.md` in `studio-hq`: one page, dated, rewritten whole, describing today. Once a week Scott says **"weekly review"**: the Studio Head reads everything fresh, issues per-project directions, and rewrites the board. Between reviews, Scott reads the board and answers decision lists; he does not have to ask.

**Madelyn's standing voice.** Anything Madelyn emails to the studio inbox with **STUDIO:** at the start of the subject line is logged by the Studio Head as a directive — with Scott's weight on social-media and client-content matters, and as a request on everything else. She never has to relay anything through Scott.

## Future-proofing (why this kit outlives any model)

1. **Truth lives in files, never in a model.** GitHub and Drive hold everything. Any model, product, or seat can be replaced without losing a thing.
2. **Nothing depends on a feature that is still in preview.** The operation must work with the Studio Head absent: Builders and scheduled tasks run from the regular Claude app on their own.
3. **Tools are reviewed on a calendar, not on news.** Once a quarter, one Consultant session asks what changed and what to adopt. Between reviews, no switching.
