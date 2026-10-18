# Corpus sources index

Every corpus artifact with path → source → format → fetch date. Fetched with plain curl,
no credentials. Re-fetch via `scripts/update-corpus.sh`. Raw HTML/PDF downloads are
gitignored; only the Markdown conversions are committed.

Fetched on: 2026-10-09 (GDPR, NIS2, DORA, NIST); 2026-10-18 (CRA, Data Act).

## Licence rule (read before adding anything)

| Source type | May we store full text? | Why |
|---|---|---|
| EU legislation (EUR-Lex / Publications Office) | **Yes** | Official EU legal acts; reuse authorised under Commission Decision 2011/833/EU |
| NIST publications | **Yes** | U.S. Government work, not subject to US copyright (17 U.S.C. 105) |
| OWASP Top 10 for LLM Apps | IDs/names + link only | CC BY-SA 4.0 — we link rather than inherit share-alike on the whole repo |
| ISO/IEC 27001, ISO/IEC 42001, AICPA TSC (SOC 2) | **Never** | Copyrighted standards text. Pointer files only; authored summaries + clause/control numbers |

## corpus/eu-law/

CELLAR content negotiation: `http://publications.europa.eu/resource/celex/<CELEX>` with
`Accept: application/xhtml+xml`, converted by `scripts/html2md.py` (layout only, wording verbatim).

| Path | CELEX | Instrument | OJ | Verified |
|---|---|---|---|---|
| gdpr-regulation-2016-679.md | 32016R0679 | Regulation (EU) 2016/679 — GDPR | L 119, 4.5.2016 | 99 articles; applies from 25 May 2018 (Art. 99(2)) |
| nis2-directive-2022-2555.md | 32022L2555 | Directive (EU) 2022/2555 — NIS2 | L 333, 27.12.2022 | 46 articles + Annexes I–III; transposition by 17 Oct 2024, apply from 18 Oct 2024 (Art. 41(1)) |
| nis2-implementing-regulation-2024-2690.md | 32024R2690 | Commission Implementing Regulation (EU) 2024/2690 — technical/methodological requirements of NIS2 Art. 21(2) + significant-incident criteria for digital-infrastructure / ICT-service / digital providers | L, 18.10.2024 | 16 articles + Annex |
| dora-regulation-2022-2554.md | 32022R2554 | Regulation (EU) 2022/2554 — DORA | L 333, 27.12.2022 | 64 articles; applies from 17 Jan 2025 (Art. 64) |
| dora-rts-ict-risk-framework-2024-1774.md | 32024R1774 | Commission Delegated Regulation (EU) 2024/1774 — RTS on ICT risk-management tools/methods and the simplified framework (DORA Arts. 15, 16(3)) | L, 25.6.2024 | 42 articles |
| dora-rts-incident-reporting-2025-301.md | 32025R0301 | Commission Delegated Regulation (EU) 2025/301 — RTS on content and time limits of major-incident notifications (DORA Art. 20) | L, 2025 | 7 articles; time limits in Art. 5 |
| cra-regulation-2024-2847.md | 32024R2847 | Regulation (EU) 2024/2847 — Cyber Resilience Act (fetched 2026-10-18) | L, 2024 | 71 articles; applies from 11 Dec 2027, Art. 14 from 11 Sep 2026, Chapter IV from 11 Jun 2026 (Art. 71(2)) |
| data-act-regulation-2023-2854.md | 32023R2854 | Regulation (EU) 2023/2854 — Data Act (fetched 2026-10-18) | L, 2023 | 50 articles; applies from 12 Sep 2025 (Art. 50) |

Not fetched (pointers only, cite by number; numbers checked against the ESMA DORA page on
2026-10-18): Delegated Regulations (EU) 2024/1772 (incident classification), 2024/1773
(contractual-arrangements policy), 2025/532 (subcontracting), 2025/1190 (TLPT), 2024/1502
(CTPP criteria), 2024/1505 (oversight fees), 2025/295 (oversight conditions), 2025/420
(joint examination teams); Implementing Regulations (EU) 2024/2956 (register of
information) and 2025/302 (incident-report forms). Full table: `frameworks/dora.md` §8.

## corpus/nist/

| Path | Source | Format |
|---|---|---|
| nist-ai-100-1.md | https://nvlpubs.nist.gov/nistpubs/ai/NIST.AI.100-1.pdf (AI RMF 1.0, 26 Jan 2023) | pdftotext -layout |
| nist-ai-600-1.md | https://nvlpubs.nist.gov/nistpubs/ai/NIST.AI.600-1.pdf (Generative AI Profile, July 2024) | pdftotext -layout |

Verified: 6 GOVERN, 5 MAP, 4 MEASURE, 4 MANAGE categories; 72 subcategories (19 GOVERN 1.1–6.2, 18
MAP 1.1–5.2, 22 MEASURE 1.1–4.3, 13 MANAGE 1.1–4.3); 12 GAI risks in AI 600-1 §2.

## corpus/standards/

Pointer files only — see `standards/index.md`. ISO/IEC 27001:2022, ISO/IEC 42001:2023,
AICPA TSC 2017 (rev. 2022), OWASP LLM Top 10 2025 (IDs verified against
https://genai.owasp.org/llm-top-10/ on 2026-10-09; still the latest list on 2026-10-18).

## EU AI Act

Not in this corpus. The AI Act full text, guidelines and analysis live in
<https://github.com/bioztar/EU-AI-Act> (`corpus/act/regulation-eu-2024-1689.md`).
