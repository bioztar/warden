# Freshness report — 2026-10-18

Review of every warden framework against primary sources, nine days after v1 (merged
2026-10-09). All sources fetched **2026-10-18**. Status labels: **in force** · **adopted, not
yet applicable** · **proposed** (Commission proposal / under negotiation — not law).

## 1. Summary

| Framework | Changed? | Headline |
|---|---|---|
| GDPR | Yes | Procedural Regulation adopted as Reg. (EU) 2025/2518, applies 2 Apr 2027; Digital Omnibus and Omnibus IV proposals pending; CJEU C-413/23 P on pseudonymised data; EDPB 2025–2026 documents listed with status |
| NIS2 | Yes | Per-Member-State status from Commission pages; 19 reasoned opinions (7 May 2025); Spain not transposed per sources checked; targeted amendments proposed 20 Jan 2026; ENISA technical guidance (26 Jun 2025) |
| DORA | Yes | Full Level-2 list with numbers; first register-of-information cycle (30 Apr 2025); 19 CTPPs designated (list of 18 Nov 2025) |
| ISO/IEC 27001 | No (re-verified) | Still 2022 edition + Amd 1:2024 only |
| ISO/IEC 42001 | Companion standards | 42001 unchanged; ISO/IEC 42005:2025 (May 2025) and 42006:2025 (Jul 2025) published |
| SOC 2 | No (re-verified) | 2017 TSC with 2022 points of focus still current |
| NIST AI RMF | Yes (status) | AI RMF 1.0 "being revised" (no new version); critical-infrastructure profile concept note 7 Apr 2026 |
| OWASP LLM Top 10 | No (re-verified) | 2025 list still the latest |
| CRA | **Added** | New `frameworks/cra.md` + corpus; reporting from 11 Sep 2026 |
| Data Act | **Added** | New `frameworks/data-act.md` + corpus; applies since 12 Sep 2025 |

## 2. Scope decision: CRA and Data Act are in

Both are **binding, horizontal EU regulations that land on software companies** and overlap
heavily with controls warden already maps:

- **CRA** — secure SDLC, SBOM, vulnerability handling and a 24 h / 72 h reporting clock for
  any product with digital elements. It sits next to NIS2 (entity) as the product-side rule,
  and its Art. 14 reporting applies from **11 Sep 2026**, already before full application on
  11 Dec 2027.
- **Data Act** — applies since **12 Sep 2025**; Chapter VI cloud-switching rules hit every
  SaaS/cloud vendor with EU customers and overlap with DORA exit strategies and GDPR
  portability.

Neither duplicates the sibling EU-AI-Act repo. Coverage is concise (one framework file each,
plus corpus, classifier steps 3a/3b, matrix columns, timeline, penalties, two vendor-checklist
rows and the skill reference map), consistent with the token-economical skill design: the
skill opens these files only when the classifier marks them as applying.

## 3. Changes per framework (with sources)

### GDPR — `frameworks/gdpr.md` (§1, §3, §7, new §8)
- **Adopted, not yet applicable:** Regulation (EU) 2025/2518, additional procedural rules for
  GDPR enforcement — OJ 12 Dec 2025; "This Regulation shall apply from 2 April 2027" (Art. 37(2)).
  Replaces the v1 `VERIFY:` row. — EUR-Lex CELEX 32025R2518; procedure page for COM(2023) 348.
- **Proposed:** Digital Omnibus COM(2025) 837, 19 Nov 2025, 2025/0360(COD), status "Ongoing":
  Art. 4(1) relative personal-data clarification; new Arts. 88a/88b (cookie consent moved from
  ePrivacy Art. 5(3), machine-readable choice signals); Art. 33 notification only for high-risk
  breaches with "the notification deadline [extended] to 96 hours"; residual special-category
  data in AI development; single-entry point for incident reporting. — EUR-Lex CELEX 52025PC0837.
- **Proposed:** Omnibus IV COM(2025) 501, status "Ongoing": Art. 30(5) relief extended to small
  mid-caps and organisations with fewer than 750 employees. — EUR-Lex CELEX 52025PC0501
  (wording checked in the French text: "les organisations comptant moins de 750 salariés").
- **Case law:** CJEU C-413/23 P *EDPS v SRB*, 4 Sep 2025, para. 86 (pseudonymised data not
  personal data "in all cases and for every person"); set aside T-557/20, referred back. —
  EUR-Lex CELEX 62023CJ0413.
- **EDPB:** Opinion 28/2024 on AI models (18 Dec 2024); consultation versions listed for
  Guidelines 1/2024 (legitimate interest), 01/2025 (pseudonymisation), 02/2025 (blockchain),
  3/2025 (DSA–GDPR), joint DMA–GDPR guidelines, Recommendations 2/2025, Guidelines 1/2026,
  Recommendations 1/2026, and 02/2026 (anonymisation), 03/2026 (web scraping for generative
  AI), 04/2026 (fines vs corrective powers), open until 30 Oct 2026. **Ambiguity:** the EDPB
  pages checked show these as consultation versions; final adoption is not confirmed and is
  marked `VERIFY:`. — EDPB guidelines and public-consultation pages.

### NIS2 — `frameworks/nis2.md` (§2, §3, §7, new §8)
- Per-Member-State status quoted from the Commission's "NIS2 Directive implementation in …"
  pages: "Transposed." BE, HR, EL, IT, LT, RO, SK; "Not yet transposed." MT; reasoned opinion of
  7 May 2025 "for failure to notify full transposition": AT, BG, CY, CZ, DK, EE, FI, FR, DE, HU,
  IE, LV, LU, NL, PL, PT, SI, ES, SE. **Ambiguity:** these pages are state-of-play summaries and
  can lag national law; warden says so and keeps a `VERIFY:` for national gazettes.
- **Spain:** Commission page — reasoned opinion of 7 May 2025; BOE consolidated-legislation
  search (title "ciberseguridad") shows no NIS2 transposition law; Real Decreto-ley 12/2018
  (NIS1, BOE-A-2018-12257) remains. Status: not transposed per sources checked.
- **Proposed:** targeted NIS2 amendments, Commission cybersecurity package, publication
  20 Jan 2026 (simpler jurisdiction rules, ransomware data, cross-border supervision with ENISA).
  — Commission library page.
- Implementing Regulation (EU) 2024/2690 re-confirmed in force; ENISA NIS2 Technical
  Implementation Guidance, published 26 Jun 2025 (non-binding). — EUR-Lex; ENISA.

### DORA — `frameworks/dora.md` (§3, §7, new §8)
- Level-2 list (all in force): 2024/1772, 2024/1773, 2024/1774, 2024/2956 (ITS register of
  information), 2025/301, 2025/302, 2025/532 (subcontracting), 2025/1190 (TLPT), 2024/1502,
  2024/1505, 2025/295, 2025/420. — ESMA DORA page (EUR-Lex links).
- Register of information: competent authorities submit to ESAs by 30 Apr 2025; ESAs notify
  critical classification by July 2025. Replaces the v1 `VERIFY:` row. — ESAs roadmap, 18 Feb 2025;
  EBA RoI reporting page.
- CTPPs: list of 19 designated providers under Art. 31(9), PDF dated 18 Nov 2025; annual update.
  — ESAs list on esma.europa.eu; ESMA DORA oversight page.
- Proposed: Digital Omnibus single-entry point would cover DORA incident reports.

### ISO/IEC 27001 — `frameworks/iso-27001.md`
- Re-verified: ISO/IEC 27001:2022, Edition 3, "This standard has 1 amendment" — Amd 1:2024
  Climate action changes, published 2024-02 (French corrected version 2024-08). — ISO catalogue.

### ISO/IEC 42001 — `frameworks/iso-42001.md`, `corpus/standards/iso-iec-42001.md`
- 42001:2023 still Edition 1 without amendment; ISO/IEC 42005:2025 published 2025-05;
  ISO/IEC 42006:2025 published 2025-07. Replaces the v1 `VERIFY:` in the pointer file. — ISO catalogue.

### SOC 2 — `frameworks/soc2.md`
- AICPA still publishes "2017 Trust Services Criteria (With Revised Points of Focus – 2022)";
  no replacement announced. — AICPA resource page.

### NIST AI RMF — `frameworks/nist-ai-rmf.md`
- "The AI RMF 1.0 is being revised as part of the White House AI Action Plan." No revised
  version published. "On April 7, 2026, NIST released a concept note for an AI RMF Profile on
  Trustworthy AI in Critical Infrastructure." — NIST AI RMF page.

### OWASP LLM Top 10 — `frameworks/owasp-llm-top10.md`
- genai.owasp.org still presents the 2025 list (latest); no newer version. — OWASP GenAI page.

### CRA — new `frameworks/cra.md`, corpus `cra-regulation-2024-2847.md`
- Art. 71(2): applies 11 Dec 2027; Art. 14 from 11 Sep 2026; Chapter IV from 11 Jun 2026.
  Art. 14 clocks 24 h / 72 h / 14 days (vulnerability) / 1 month (incident); Art. 13(8)
  support period at least five years; Art. 64 fines €15 M/2.5%, €10 M/2%, €5 M/1%;
  Art. 64(10) carve-outs. Commission guidance of 27 Jul 2026. — EUR-Lex CELEX 32024R2847;
  Commission CRA page.

### Data Act — new `frameworks/data-act.md`, corpus `data-act-regulation-2023-2854.md`
- Art. 50: applies 12 Sep 2025; Art. 3(1) for products placed on the market after 12 Sep 2026;
  Chapter IV for older long-term contracts from 12 Sep 2027. Art. 29: reduced switching charges
  until 12 Jan 2027, none after. Art. 25: 30-calendar-day transition. Art. 40(4): DPA fines up to
  the GDPR Art. 83(5) amount. — EUR-Lex CELEX 32023R2854; Commission Data Act page.

## 4. Cross-cutting files updated

`analysis/timeline.md`, `analysis/overlap-matrix.md` (CRA + Data Act columns, two bundles,
gaps 8–9), `analysis/applicability-classifier.md` (Steps 3a/3b), `analysis/penalties-enforcement.md`,
`analysis/checklists/vendor-assessment.md` (V17–V18), `skill/SKILL.md`, `scripts/sync-skill.sh`,
`scripts/update-corpus.sh`, `corpus/SOURCES.md`, `README.md`; `skill/references/` re-synced.

## 5. Open `VERIFY:` items carried forward

- EDPB final versions of the guidelines listed above.
- National NIS2 law per Member State where the Commission page may lag (esp. ES, DE, FR, NL).
- NIS2 infringement referrals to the CJEU (none recorded on the Commission page checked).
- Each financial entity's register-of-information reporting date (set by its competent authority).
