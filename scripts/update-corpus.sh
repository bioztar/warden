#!/usr/bin/env bash
# Idempotent re-fetch of the warden corpus (EU law + NIST). Plain curl, no credentials.
# ISO/IEC and AICPA texts are copyrighted and are NEVER fetched — pointer files only.
# Usage: scripts/update-corpus.sh   (needs python3 and pdftotext)
set -uo pipefail
cd "$(dirname "$0")/.."

TODAY="$(date +%F)"
UA="Mozilla/5.0 (warden-corpus-updater; plain curl)"
CELLAR="http://publications.europa.eu/resource/celex"

fetch_celex() { # fetch_celex <CELEX> <out-base>
  local celex="$1" base="$2"
  mkdir -p "$(dirname "$base")"
  if curl -sL -A "$UA" --max-time 300 -H "Accept: application/xhtml+xml" -H "Accept-Language: en" \
       -o "$base.html" "$CELLAR/$celex"; then
    python3 scripts/html2md.py "$base.html" "$base.md"
  else
    echo "FAIL $celex" >&2; return 1
  fi
  sleep 2
}

fetch_nist() { # fetch_nist <pdf-url> <out-base> <title>
  local url="$1" base="$2" title="$3"
  mkdir -p "$(dirname "$base")"
  curl -sL -A "$UA" --max-time 300 -o "$base.pdf" "$url" || { echo "FAIL $url" >&2; return 1; }
  pdftotext -layout "$base.pdf" "$base.txt" || return 1
  {
    echo "<!--"
    echo "  Document : $title"
    echo "  Direct   : $url"
    echo "  Licence  : U.S. Government work, not subject to copyright in the United States (17 U.S.C. 105)."
    echo "  Fetched  : $TODAY | converted with 'pdftotext -layout'; wording preserved verbatim."
    echo "-->"
    echo
    cat "$base.txt"
  } > "$base.md"
  rm -f "$base.txt"
  echo "OK   $base.md"
}

echo "== EU law (CELLAR) =="
fetch_celex 32016R0679 corpus/eu-law/gdpr-regulation-2016-679
fetch_celex 32022L2555 corpus/eu-law/nis2-directive-2022-2555
fetch_celex 32024R2690 corpus/eu-law/nis2-implementing-regulation-2024-2690
fetch_celex 32022R2554 corpus/eu-law/dora-regulation-2022-2554
fetch_celex 32024R1774 corpus/eu-law/dora-rts-ict-risk-framework-2024-1774
fetch_celex 32025R0301 corpus/eu-law/dora-rts-incident-reporting-2025-301

echo "== NIST =="
fetch_nist https://nvlpubs.nist.gov/nistpubs/ai/NIST.AI.100-1.pdf corpus/nist/nist-ai-100-1 \
  "NIST AI 100-1 — Artificial Intelligence Risk Management Framework (AI RMF 1.0), January 2023"
fetch_nist https://nvlpubs.nist.gov/nistpubs/ai/NIST.AI.600-1.pdf corpus/nist/nist-ai-600-1 \
  "NIST AI 600-1 — AI RMF Generative AI Profile, July 2024"

echo "Done. Review 'git diff --stat corpus/' and update corpus/SOURCES.md fetch dates."
