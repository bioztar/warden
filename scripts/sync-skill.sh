#!/usr/bin/env bash
# Copy the canonical analysis/ and frameworks/ files into skill/references/ so the skill
# stays self-contained (no paths escaping skill/). Run after editing either source.
# Usage: scripts/sync-skill.sh          # write copies
#        scripts/sync-skill.sh --check  # exit 1 if any copy is stale (used in CI)
set -euo pipefail
cd "$(dirname "$0")/.."

CHECK=0
[ "${1:-}" = "--check" ] && CHECK=1

# source -> destination (inside skill/references/)
PAIRS="
analysis/applicability-classifier.md:applicability-classifier.md
analysis/overlap-matrix.md:overlap-matrix.md
analysis/timeline.md:timeline.md
analysis/penalties-enforcement.md:penalties-enforcement.md
analysis/checklists/codebase.md:checklists/codebase.md
analysis/checklists/design-doc.md:checklists/design-doc.md
analysis/checklists/product-idea.md:checklists/product-idea.md
analysis/checklists/vendor-assessment.md:checklists/vendor-assessment.md
frameworks/gdpr.md:frameworks/gdpr.md
frameworks/nis2.md:frameworks/nis2.md
frameworks/dora.md:frameworks/dora.md
frameworks/cra.md:frameworks/cra.md
frameworks/data-act.md:frameworks/data-act.md
frameworks/iso-27001.md:frameworks/iso-27001.md
frameworks/iso-42001.md:frameworks/iso-42001.md
frameworks/soc2.md:frameworks/soc2.md
frameworks/nist-ai-rmf.md:frameworks/nist-ai-rmf.md
frameworks/owasp-llm-top10.md:frameworks/owasp-llm-top10.md
"

stale=0
for pair in $PAIRS; do
  src="${pair%%:*}"; dst="skill/references/${pair#*:}"
  [ -f "$src" ] || { echo "missing source: $src" >&2; exit 1; }
  if [ "$CHECK" -eq 1 ]; then
    if ! cmp -s "$src" "$dst"; then echo "STALE $dst (run scripts/sync-skill.sh)"; stale=1; fi
  else
    mkdir -p "$(dirname "$dst")"; cp "$src" "$dst"; echo "synced $dst"
  fi
done
[ "$stale" -eq 0 ] || exit 1
[ "$CHECK" -eq 1 ] && echo "skill/references in sync"
exit 0
