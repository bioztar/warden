# warden

Compliance & security knowledge base + an installable agent skill for the frameworks
**outside** the EU AI Act: **GDPR, NIS2, DORA, Cyber Resilience Act (CRA), Data Act, ISO/IEC
27001, ISO/IEC 42001, SOC 2, NIST AI RMF** — plus a supplementary **OWASP Top 10 for LLM
Applications** page. Last freshness review: 2026-10-18 (`scripts/freshness-report-2026-10-18.md`).

Companion to [`bioztar/EU-AI-Act`](https://github.com/bioztar/EU-AI-Act), which covers the EU
AI Act. warden never duplicates that content: wherever the AI Act is relevant, it links to the
sibling repo or hands off to its skill, `eu-ai-act-compliance`.

## Who this is for

- **Consultants and auditors doing readiness work** — every obligation is traced to an
  article / clause / control number and its official source, and `analysis/overlap-matrix.md`
  shows which single control evidences several frameworks at once.
- **Engineering and security leads** — each framework file ends in "how it maps onto a real
  software product" (data handling, logging, access control, incident response, human
  oversight, vendor management), and there are checklists for codebases, design docs,
  product ideas and vendor reviews.
- **People writing about compliance** — every framework file opens with an "In plain
  language" section and lists common misconceptions; the skill has an explainer mode that
  keeps the accuracy but moves citations into a short sources footer.
- **AI agents** (Claude Code, Codex, Pi, other harnesses) — via the self-contained skill in `skill/`.

## Three layers

| Layer | Folder | What it is | Edit rule |
|---|---|---|---|
| 1. Sources | `corpus/` | Verbatim EU law (EUR-Lex) and NIST texts; **pointer files only** for copyrighted standards (ISO/IEC, AICPA). Provenance in `corpus/SOURCES.md`. | Never hand-edit; re-fetch with `scripts/update-corpus.sh` |
| 2. Knowledge | `frameworks/`, `analysis/` | Authored, cited distillations: one file per framework, plus classifier, overlap matrix, timeline, penalties, checklists | Edit here — this is the canonical copy |
| 3. Skill | `skill/` | Compact `SKILL.md` + `references/` (synced copies of layer 2) — installable, no paths escape `skill/` | Run `scripts/sync-skill.sh` after editing layer 2 |

## Quickstart

```bash
# Install the skill for Claude Code, Codex and Pi (symlink; --copy to copy instead)
scripts/install-skill.sh

# Then, in your agent:
#   "Which of GDPR / NIS2 / DORA / ISO 27001 / SOC 2 apply to this repo? Give me a readiness checklist."
#   "Assess this vendor's DPA and SOC 2 report for a DORA-regulated customer."
#   "Explain NIS2 incident reporting in plain language for a LinkedIn post."
```

Install the sibling skill too, so AI-Act hand-offs work end to end:
`git clone https://github.com/bioztar/EU-AI-Act && EU-AI-Act/scripts/install-skill.sh`.

## Repository map

```
corpus/
  SOURCES.md                      provenance: path → official source → fetch date
  eu-law/                         GDPR, NIS2 (+ IR 2024/2690), DORA (+ RTS 2024/1774, 2025/301), CRA, Data Act — verbatim
  nist/                           NIST AI 100-1 (AI RMF 1.0), NIST AI 600-1 (GenAI profile) — verbatim
  standards/                      pointer files only: ISO/IEC 27001, ISO/IEC 42001, AICPA TSC, OWASP
frameworks/
  gdpr.md  nis2.md  dora.md  cra.md  data-act.md  iso-27001.md  iso-42001.md  soc2.md  nist-ai-rmf.md
  owasp-llm-top10.md              supplementary (lighter coverage)
analysis/
  applicability-classifier.md     decision tree: which frameworks apply, which obligations trigger
  overlap-matrix.md               26 control themes × 9 frameworks (+ AI-Act refs) — build once, evidence many
  timeline.md                     application dates + incident/request clocks (24 h / 72 h / 4 h …)
  penalties-enforcement.md        fines, non-fine powers, commercial consequences side-by-side
  checklists/                     codebase · design-doc · product-idea · vendor-assessment
skill/
  SKILL.md                        entry file (name: warden-compliance)
  references/                     classifier, overlap matrix, timeline, penalties, report &
                                  explainer templates, EU AI Act hand-off, checklists/, frameworks/
scripts/
  update-corpus.sh                re-fetch EU law + NIST (plain curl, no credentials)
  sync-skill.sh                   copy layer 2 into skill/references (--check in CI)
  install-skill.sh                install skill into ~/.claude, ~/.codex, ~/.pi
  check-links.sh                  external URL check
  freshness-report-YYYY-MM-DD.md  dated freshness reviews: what changed, with sources
  check-internal-links.py         relative-link check + skill self-containment
```

## Conventions

- **Citations:** "GDPR Art. 33(1)", "NIS2 Art. 21(2)(d)", "DORA Art. 30(3)(e)", "ISO/IEC 27001 A.8.15",
  "ISO/IEC 42001 6.1.4", "SOC 2 CC7.3", "NIST AI RMF MANAGE 2.4", "LLM01:2025".
- **Uncertainty:** `VERIFY:` = needs checking against a primary source; `ASSUMED:` = inference or
  market practice. Dates and fine amounts are never invented.
- **Copyright:** ISO/IEC 27001, ISO/IEC 42001 and the AICPA Trust Services Criteria are copyrighted —
  warden contains authored summaries and clause/control numbers only. EU law and NIST texts are
  reproduced verbatim in `corpus/` under their reuse terms (see `corpus/SOURCES.md`).
- **No client data:** reference material only — no case files, secrets or client artifacts.

## Coverage

| Framework | Status |
|---|---|
| GDPR, NIS2, DORA | Full — verbatim corpus + framework file (each with a dated "status watch" of adopted vs proposed changes) |
| Cyber Resilience Act, Data Act | Concise framework file + verbatim corpus (added 2026-10-18) |
| ISO/IEC 27001, ISO/IEC 42001, SOC 2 | Full framework file; pointer-only corpus (copyright) |
| NIST AI RMF (+ GenAI profile) | Full — verbatim corpus + framework file |
| OWASP LLM Top 10 (2025) | Supplementary — IDs + authored controls + framework hooks |
| EU AI Act | Out of scope — see [`bioztar/EU-AI-Act`](https://github.com/bioztar/EU-AI-Act) |

Deferred: national NIS2 transposition law contents (warden tracks status only), verbatim copies of
DORA Level-2 acts beyond the two RTS in the corpus (listed and cited in `frameworks/dora.md` §8),
CRA implementing/delegated acts, ISO/IEC 27701, PCI DSS, HIPAA.

## Disclaimer

Informational material for readiness and education. Not legal advice, not an audit opinion and
not a certification. Verify against the official texts and, for binding obligations, with qualified
counsel in the relevant jurisdiction.
