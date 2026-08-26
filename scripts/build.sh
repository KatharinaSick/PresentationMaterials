#!/usr/bin/env bash
# Builds every talk (any directory with a package.json, one level deep) into dist/.
# A failing talk is logged and skipped rather than aborting the whole run, so one
# broken presentation never blocks deploying the rest of the site.
set -uo pipefail

failed=()

while IFS= read -r dir; do
  echo "── Building $dir ──────────────────────────────────────────────"
  if npm install --prefix "$dir" && npm run build --prefix "$dir"; then
    echo "✓ $dir built successfully"
  else
    echo "✗ $dir failed to build — skipping, other talks are unaffected"
    failed+=("$dir")
  fi
  echo ""
done < <(find . -maxdepth 2 -name "package.json" -not -path "./node_modules/*" -exec dirname {} \;)

if [ "${#failed[@]}" -gt 0 ]; then
  echo "⚠️  ${#failed[@]} talk(s) failed to build and were skipped:"
  printf '   - %s\n' "${failed[@]}"
fi

exit 0
