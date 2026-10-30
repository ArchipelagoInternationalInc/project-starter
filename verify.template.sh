#!/usr/bin/env bash
# Studio Unattended Loop — checking script template (Kit v3). Copy to scripts/verify.sh and fill the PROJECT CHECKS section.
# Exit 0 = every check green (the Builder may stop). Exit 2 = blocked; failure list on stderr is fed back to the Builder.
# Three outcomes per check: PASS, FAIL, and CANNOT-RUN (this machine cannot answer the question). CANNOT-RUN is never green.
# Works on the Mac's old built-in bash (3.2) as well as current bash: no empty-array tricks under strict mode.
set -u
cd "$(dirname "$0")/.."
FAIL=""; CANNOT=""; NFAIL=0; NCANNOT=0
say() { echo "[verify] $*"; }
run() { local name="$1"; shift; if "$@" >"artifacts/logs/$name.log" 2>&1; then say "PASS $name"; else say "FAIL $name (artifacts/logs/$name.log)"; FAIL="$FAIL $name"; NFAIL=$((NFAIL+1)); fi; }
need_file() { if [ -f "$2" ]; then say "PASS $1"; else say "FAIL $1 (missing $2)"; FAIL="$FAIL $1"; NFAIL=$((NFAIL+1)); fi; }
# needs: declare what a check requires before running it. Example: needs 06_rls "$DATABASE_URL" run 06_rls node scripts/rls-test.mjs
# If the requirement is empty on this machine, the check is recorded as CANNOT-RUN instead of pretending to pass or fail.
needs() { local name="$1" req="$2"; shift 2; if [ -z "$req" ]; then say "CANNOT-RUN $name (this machine lacks what the check needs)"; CANNOT="$CANNOT $name"; NCANNOT=$((NCANNOT+1)); else "$@"; fi; }
mkdir -p artifacts/logs artifacts/screenshots

# ---- ITERATION CAP (kit file 06): the script counts its own runs so the cap is a mechanism, not a memory ----
CAP="${LOOP_CAP:-25}"
COUNT=$(( $(cat artifacts/loop-count 2>/dev/null || echo 0) + 1 )); echo "$COUNT" > artifacts/loop-count
if [ "$COUNT" -gt "$CAP" ]; then echo "verify: iteration cap of $CAP reached ($COUNT runs). Commit BLOCKED:, write artifacts/BLOCKED.md with the last three attempts, and stop. Reset artifacts/loop-count only when a new Definition of Done is approved." >&2; exit 2; fi
say "run $COUNT of $CAP"

# ---- STANDARD CHECKS (every studio project) ----
run 01_lint       npm run -s lint
run 02_typecheck  npm run -s typecheck
run 03_test       npm run -s test
[ -f scripts/prove-guards.mjs ] && run 04_guards node scripts/prove-guards.mjs
run 05_build      npm run -s build

# ---- PROJECT CHECKS (fill from DEFINITION_OF_DONE.md §3; one line per check) ----
# run 06_canonical  npm run -s render -- fixtures/canonical.pdf artifacts/out/canonical.json
# run 07_e2e        npx playwright test
# need_file 08_shot_home artifacts/screenshots/home-1280.png

# ---- LOOP CHECKS ----
if [ -f artifacts/RUBRIC.md ] && grep -q "VERDICT: PASS" artifacts/RUBRIC.md; then say "PASS 90_rubric"; else say "FAIL 90_rubric (verifier has not written a passing artifacts/RUBRIC.md)"; FAIL="$FAIL 90_rubric"; NFAIL=$((NFAIL+1)); fi
need_file 91_evidence artifacts/EVIDENCE.md

if [ "$NFAIL" -eq 0 ] && [ "$NCANNOT" -eq 0 ]; then say "ALL CHECKS GREEN — call the verifier if not yet done, then file the report and stop."; exit 0; fi
{ [ "$NFAIL" -gt 0 ] && echo "verify: $NFAIL failing:$FAIL" && echo "Read each artifacts/logs/<name>.log, fix, re-run bash scripts/verify.sh.";
  [ "$NCANNOT" -gt 0 ] && echo "verify: $NCANNOT cannot run on this machine:$CANNOT" && echo "These are not failures and not passes. This session may not declare the work done; a session with what these checks need must run them (kit file 06).";
  echo "Do not end the session until this script exits 0."; } >&2
exit 2
