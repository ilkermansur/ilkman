#!/usr/bin/env bash
# Compile every test and example; non-zero exit on the first failure.
# Usage: tests/run.sh [--font-path DIR]
set -euo pipefail
cd "$(dirname "$0")/.."
out=tests/out; mkdir -p "$out"
for f in tests/*.typ examples/*.typ template/main.typ; do
  n=$(basename "$f" .typ)
  if [ "$f" = template/main.typ ]; then
    # template uses the absolute @preview import; needs the package installed locally
    typst compile "$@" "$f" "$out/template.pdf"
  else
    typst compile --root . "$@" "$f" "$out/$n.pdf"
  fi
  echo "ok  $f"
done
