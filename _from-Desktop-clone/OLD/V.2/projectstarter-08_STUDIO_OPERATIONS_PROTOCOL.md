# 08 — Studio Operations Protocol
## How the portfolio is governed: access, status, cadence, and machines

This file joins the Studio Starter Kit. It defines the standing system by which the studio's many projects are tracked, prioritized, and directed. It is model-neutral and machine-neutral except where a physical hub must be named.

---

## 1. The three layers of truth

| Layer | Lives in | Purpose | Who reads it |
|---|---|---|---|
| **Code truth** | GitHub (private repos) + local clones on the hub machine | What is actually built | Builder sessions |
| **Document truth** | Google Drive → `Archipelago Studio/` | Every plan, spec, decision, audit, proposal | The Project Manager (strategy chat), the owner, collaborators |
| **Status truth** | Flightdeck | What is done, in flight, and next — for humans and clients | Owner, clients, collaborators |

Code is reality. Documents are intent. Status is the report. Each layer feeds the next; none substitutes for another.

## 2. The hub machine

One machine is the hub — all repos live there as fresh GitHub clones under a single parent folder:

```text
~/Archipelago/
  neurotone/
  harmonia/
  archipelago-flightdeck/
  madelyngreco/
  simcha-daat/
  shallfinder/
  ...
```

**Machine migration rule:** repos are never copied between machines. On the old machine: commit and push everything (one short Builder session per repo). On the hub: `git clone`. Only non-repo folders (research, media, business documents) are physically moved — and their destination is Drive, not the desktop.

## 3. The Librarian (automated document mirror)

The Project Manager must be able to read the entire document estate without human courier work. The mechanism:

- Google Drive for desktop runs on the hub; `Archipelago Studio/` is a local folder.
- A scheduled script (written once by a Builder session; run daily via launchd) mirrors every repo's `*.md` files into `Archipelago Studio/<project>/repo-docs/`, one-way, repos → Drive.
- Non-repo project folders (research, proposals, media plans) live in `Archipelago Studio/<project>/` directly.
- Result: the Project Manager reads everything through the Drive connector, always ≤24h fresh, forever. No uploads, no pasting, no drift.

Bootstrap rule: until the Librarian exists, drag the current business-documents folder into Drive manually so governance can begin immediately.

## 4. The Project Manager role

The strategy chat (a persistent Project in the owner's Claude account) is the standing Project Manager for the whole portfolio. Its duties:

- Read the full document estate (via Drive) and all status reports.
- Maintain `CURRENT_PORTFOLIO_STATUS.md` (in the starter-kit repo, mirrored to Drive).
- Rule on sequence: what builds now, what parks, what dies.
- Issue Builder-ready directives — the owner executes; the PM directs.
- Flag cross-project conflicts, security gaps, deadline risk, and scope creep.

**The cadence that makes direction real:** a **Weekly Portfolio Review**. The owner opens the PM chat once a week (same day each week), says only "weekly review." The PM reads the fresh mirror and current statuses, then issues the week's directives: per-project next task, blocks to clear, and anything to stop doing. Between reviews, the owner may consult the PM ad hoc, but the review is the heartbeat. The PM cannot initiate; the calendar recurrence is the owner's one obligation that substitutes for PM initiative.

## 5. The status pipeline

1. Every Builder session ends by updating `SESSION_HANDOFF.md` (existing kit rule).
2. Each repo maintains a short `STATUS.md`: five lines — phase, % to launchable, last completed, current task, blockers. Updated whenever SESSION_HANDOFF changes materially.
3. The Librarian mirrors STATUS.md to Drive (PM visibility).
4. **Flightdeck ingests STATUS** for the human/client dashboard — manually pasted at first; later via a small ingest endpoint. Client-facing views show only that client's projects.

**Gate:** nothing in Flightdeck becomes client-facing until its auth/RLS closure is complete. Security precedes visibility.

## 6. Project intake and inventory discipline

A build packet is **inventory, not obligation**. New research or packets — however excellent — enter the portfolio as PARKED unless the PM explicitly rules them into the active sequence, displacing something by name. The active-build ceiling is **three workstreams** plus client deliverables; deadlines may temporarily force more, after which the studio deliberately collapses back to three.

Kill decisions are recorded (folder rename or one line in CURRENT_PORTFOLIO_STATUS) so dead projects cannot silently resurrect.

## 7. Clients and the retainer boundary

Client engagements (retainers, fixed-scope builds) always have a written one-page scope. "And more" is never a scope. Client status lives in Flightdeck's clean-room view; client documents live in that client's Drive folder; client data never mixes with studio or other-client data (existing account-separation doctrine applies).

---

*Adopted July 2026. Supersedes ad-hoc status gathering. Amend by the same process as other kit files.*
