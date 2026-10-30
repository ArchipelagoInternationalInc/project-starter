#!/usr/bin/env bash
# Studio Unattended Loop — checking script template. Copy to scripts/verify.sh and fill the PROJECT CHECKS section.
# Exit 0 = every check green (the Builder may stop). Exit 2 = blocked; failure list on stderr is fed back to the Builder.
set -u
cd "$(dirname "$0")/.."
FAIL=()
say() { echo "[verify] $*"; }
run() { local name="$1"; shift; if "$@" >"artifacts/logs/$name.log" 2>&1; then say "PASS $name"; else say "FAIL $name (artifacts/logs/$name.log)"; FAIL+=("$name"); fi; }
need_file() { [ -f "$2" ] && say "PASS $1" || { say "FAIL $1 (missing $2)"; FAIL+=("$1"); }; }
mkdir -p artifacts/logs artifacts/screenshots

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
if [ -f artifacts/RUBRIC.md ] && grep -q "VERDICT: PASS" artifacts/RUBRIC.md; then say "PASS 90_rubric"; else say "FAIL 90_rubric (verifier has not written a passing artifacts/RUBRIC.md)"; FAIL+=("90_rubric"); fi
need_file 91_evidence artifacts/EVIDENCE.md

if [ ${#FAIL[@]} -eq 0 ]; then say "ALL CHECKS GREEN — call the verifier if not yet done, then file the report and stop."; exit 0; fi
{ echo "verify: ${#FAIL[@]} failing: ${FAIL[*]}"; echo "Read each artifacts/logs/<name>.log, fix, re-run bash scripts/verify.sh. Do not end the session until it exits 0."; } >&2
exit 2
