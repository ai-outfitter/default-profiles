#!/usr/bin/env bash
set -euo pipefail

DEMO_BUNDLE_HOST="${DEMO_BUNDLE_HOST:-${UNSUPERVISED_DEMO_HOST:-https://unsupervised-preview.unsupervised-52b.workers.dev}}"
DEMO_ID=""
TARGET_DIR="$PWD"
FORCE="false"

usage() {
  cat <<'USAGE'
Usage:
  fetch-demo.sh --list
  fetch-demo.sh <oil|healthcare|medicaid-spending> [--target <dir>] [--force]

Downloads a full runnable data analyst demo bundle from the legacy
DeepWork Frontend R2-backed /demo-bundle route and unpacks it into the target
project directory. The demo's initial prompt is written to:

  <target>/.applepi/demo-initial-prompt.txt

Environment:
  DEMO_BUNDLE_HOST       Bundle host. Defaults to https://unsupervised-preview.unsupervised-52b.workers.dev
  UNSUPERVISED_DEMO_HOST Back-compat alias for DEMO_BUNDLE_HOST
USAGE
}

fail() { echo "FAIL: $*" >&2; exit 1; }

list_demos() {
  cat <<'DEMOS'
Available data analyst demos:
  oil                 WTI summer forecast using FRED, NOAA, and GDELT data
  healthcare          Alias for medicaid-spending
  medicaid-spending   Medicaid spending growth drivers using CMS data
DEMOS
}

normalize_demo_id() {
  case "$1" in
    oil) echo "oil" ;;
    healthcare|medicaid|medicaid-spending) echo "medicaid-spending" ;;
    *) fail "Unknown demo '$1'. Run with --list to see supported demos." ;;
  esac
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --list) list_demos; exit 0 ;;
    --target) TARGET_DIR="${2:-}"; [[ -n "$TARGET_DIR" ]] || fail "--target requires a directory"; shift 2 ;;
    --force) FORCE="true"; shift ;;
    -h|--help) usage; exit 0 ;;
    --*) fail "Unknown option: $1" ;;
    *)
      [[ -z "$DEMO_ID" ]] || fail "Only one demo id may be provided"
      DEMO_ID="$(normalize_demo_id "$1")"
      shift
      ;;
  esac
done

[[ -n "$DEMO_ID" ]] || { usage >&2; exit 1; }
command -v curl >/dev/null 2>&1 || fail "curl is required"
command -v unzip >/dev/null 2>&1 || fail "unzip is required"
command -v python3 >/dev/null 2>&1 || fail "python3 is required"

TARGET_DIR="$(python3 -c 'import os,sys; print(os.path.abspath(sys.argv[1]))' "$TARGET_DIR")"
mkdir -p "$TARGET_DIR"

if [[ "$(find "$TARGET_DIR" -mindepth 1 -maxdepth 1 -not -name .applepi -print -quit)" && "$FORCE" != "true" ]]; then
  fail "Target directory is not empty: $TARGET_DIR (use --force only after confirming overwrite is safe)"
fi

TMP_ZIP="$(mktemp "${TMPDIR:-/tmp}/applepi-demo-${DEMO_ID}.XXXXXX.zip")"
cleanup() { rm -f "$TMP_ZIP"; }
trap cleanup EXIT

URL="${DEMO_BUNDLE_HOST%/}/demo-bundle/${DEMO_ID}-full-data"
echo "Downloading ${DEMO_ID} demo bundle: $URL"
curl -fsSL --retry 3 --retry-delay 1 -o "$TMP_ZIP" "$URL"

unzip -q -o "$TMP_ZIP" -d "$TARGET_DIR"
mkdir -p "$TARGET_DIR/.applepi"

python3 - "$TARGET_DIR/demo.yml" "$TARGET_DIR/.applepi/demo-initial-prompt.txt" <<'PY'
import re
import sys
from pathlib import Path

demo_yml = Path(sys.argv[1])
out = Path(sys.argv[2])
if not demo_yml.exists():
    raise SystemExit(f"demo.yml missing after unpack: {demo_yml}")
text = demo_yml.read_text(encoding="utf-8")
match = re.search(r"^initial_prompt:\s*(.*)$", text, flags=re.MULTILINE)
if match is None:
    raise SystemExit(f"initial_prompt missing from {demo_yml}")
value = match.group(1).strip()
if (value.startswith('"') and value.endswith('"')) or (value.startswith("'") and value.endswith("'")):
    value = value[1:-1]
out.write_text(value + "\n", encoding="utf-8")
PY

cat <<EOF
Demo prepared.
  id: $DEMO_ID
  target: $TARGET_DIR
  bundle: $URL
  prompt: $TARGET_DIR/.applepi/demo-initial-prompt.txt

Next: run the prompt in $TARGET_DIR with the data analyst profile's bundled DeepWork jobs.
EOF
