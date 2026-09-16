# Definition of Done — [Project] — [Phase / stretch of work] — through gate: [name the gate]

The Builder iterates until every check in §3 passes, evidenced per §5, then calls the verifier, then stops. Approved by the owner on [date]. This document is the only objective for this stretch.

## 1. Objective (one sentence)
[What is true when this stretch is finished.]

## 2. Scope
**In:** [bullet the exact deliverables]
**Out — do not build:** [carry over every parked item from MASTER_PLAN and the last brief; restate them every time]

## 3. Acceptance checks (all must pass; `scripts/verify.sh` runs them)
Each check names the command that proves it. Checks a script cannot run are marked [NEEDS OWNER] and are resolved before approval.
1. `npm run lint` exits 0
2. `npm run typecheck` exits 0
3. `npm run test` exits 0, and includes tests for: [list the behaviors this stretch adds]
4. Guard proofs: `[guard script]` reports every guard able to fail
5. [Project-specific check — command — expected result]
6. [Project-specific check — command — expected result]
7. Canonical artifact: `[one known input]` produces `[one known result]` on every surface this stretch touches
8. UI (if any): screenshots in `artifacts/screenshots/` for [named states] at 1280px and 390px; zero console errors
9. `artifacts/RUBRIC.md` written by the verifier with every item PASS
10. `artifacts/EVIDENCE.md` complete per §5; final commit message begins `DONE:`

## 4. Screenshot / perceptual rubric (verifier judges from the images)
[Only if UI is touched. State each requirement in words that cannot bend: explicit ordering, geometry, values.]

## 5. Evidence report
`artifacts/EVIDENCE.md`: for every check — the exact command, exit code, pasted output excerpt (test summary, hashes for byte-identical claims, screenshot paths, cost lines). Ends with "known limits." Assertions without evidence do not count.

## 6. Stop conditions
STOP and ask a human only if: [ambiguity that changes scope]; a check is impossible as written; a dependency outside the allowlist seems required; a paid-API projection exceeds the money line below.
Do NOT ask for: file edits, tests, listed installs, commits, screenshots, pushes of reports.

## 7. Caps
Iteration cap: 25 → commit `BLOCKED:` with `artifacts/BLOCKED.md`. Money line (if any paid API is involved): $[amount]; meter a pilot and project before spending.

## 8. Gate
This stretch ends at: [the decision the owner must make next — taste / public copy / dollars]. The Builder stops there and reports; it does not proceed past it.
