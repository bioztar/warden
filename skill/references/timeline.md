# Timeline & compliance dates — warden frameworks

Consolidated dates and reporting clocks. Each row cites its source; anything unconfirmed is
marked `VERIFY:` or `ASSUMED:` — never stated as fact. EU AI Act dates are **not** here:
see <https://github.com/bioztar/EU-AI-Act/blob/main/analysis/timeline-compliance-dates.md>.

Last reviewed: 2026-10-18. Status labels: **in force** · **adopted, not yet applicable** ·
**proposed** (not law).

## 1. Application dates

| Date | Framework | Event | Source |
|---|---|---|---|
| 25 May 2018 | GDPR | Applies | GDPR Art. 99(2) |
| Oct 2022 | ISO/IEC 27001 | 2022 edition published | ISO catalogue |
| 26 Jan 2023 | NIST AI RMF | 1.0 released | NIST AI 100-1 |
| Dec 2023 | ISO/IEC 42001 | Published | ISO catalogue |
| Jul 2024 | NIST AI RMF | Generative AI Profile released | NIST AI 600-1 |
| 17 Oct 2024 | NIS2 | Transposition deadline | NIS2 Art. 41(1) |
| 18 Oct 2024 | NIS2 | National measures apply | NIS2 Art. 41(1) |
| 17 Jan 2025 | DORA | Applies | DORA Art. 64 |
| 17 Jan 2025 | NIS2 | Art. 27 registration (DNS, TLD, cloud, DC, CDN, MSP/MSSP, marketplaces, search, social) | NIS2 Art. 27(2) |
| 17 Apr 2025 | NIS2 | Member-State lists of essential/important entities | NIS2 Art. 3(3) |
| 30 Apr 2025 | DORA | Competent authorities pass registers of information to the ESAs (first cycle) | ESAs roadmap, 18 Feb 2025 |
| May 2025 | ISO/IEC 42005 | AI system impact assessment guidance published | ISO catalogue |
| 7 May 2025 | NIS2 | Commission reasoned opinions to 19 Member States for failing to notify full transposition | Commission NIS2 transposition page |
| Jul 2025 | ISO/IEC 42006 | Requirements for AIMS certification bodies published | ISO catalogue |
| 12 Sep 2025 | Data Act | Applies | Data Act Art. 50 |
| 31 Oct 2025 | ISO/IEC 27001 | 2013-edition certificates expire (transition end) | IAF MD 26 |
| 18 Nov 2025 | DORA | ESAs publish first list of 19 designated CTPPs | ESAs list (Art. 31(9)) |
| 11 Jun 2026 | CRA | Chapter IV (conformity assessment bodies) applies | CRA Art. 71(2) |
| **11 Sep 2026** | CRA | Art. 14 reporting of actively exploited vulnerabilities and severe incidents applies (also to products already on the market) | CRA Arts. 69(3), 71(2) |
| 12 Sep 2026 | Data Act | Art. 3(1) access-by-design for connected products placed on the market after this date | Data Act Art. 50 |
| 12 Jan 2027 | Data Act | Switching charges abolished | Data Act Art. 29(1) |
| 2 Apr 2027 | GDPR | Reg. (EU) 2025/2518 procedural rules apply (adopted, not yet applicable) | Reg. 2025/2518 Art. 37(2) |
| 12 Sep 2027 | Data Act | Chapter IV also applies to certain pre-12 Sep 2025 long-term contracts | Data Act Art. 50 |
| 17 Oct 2027 | NIS2 | Commission review | NIS2 Art. 40 |
| **11 Dec 2027** | CRA | Applies in full | CRA Art. 71(2) |
| ≤ 2028 | NIST AI RMF | Formal review with community input expected | NIST AI 100-1 |
| VERIFY: | NIS2 | Actual national application per Member State — status table in `frameworks/nis2.md` §8 (Commission pages, 2026-10-18) | Commission transposition pages |
| Proposed | GDPR / ePrivacy / NIS2 / DORA / Data Act | Digital Omnibus COM(2025) 837 (cookie rules into GDPR Art. 88a–88b, 96 h breach notice, single-entry point) — **not law** | EUR-Lex 52025PC0837 |
| Proposed | GDPR | Omnibus IV COM(2025) 501 (Art. 30(5) relief up to 750 employees) — **not law** | EUR-Lex 52025PC0501 |
| Proposed | NIS2 | Targeted amendments, cybersecurity package of 20 Jan 2026 — **not law** | Commission library page |

## 2. Incident & request clocks (the ones engineering must build for)

| Clock | Framework | Trigger → deadline | Source |
|---|---|---|---|
| ≤ 4 h after classifying as major, ≤ 24 h after awareness | DORA | Initial notification of major ICT incident | RTS 2025/301 Art. 5(1)(a) |
| ≤ 24 h | NIS2 | Early warning of significant incident | NIS2 Art. 23(4)(a) |
| ≤ 24 h | CRA (from 11 Sep 2026) | Early warning: actively exploited vulnerability / severe incident, to CSIRT + ENISA | CRA Art. 14(2)(a), 14(4)(a) |
| ≤ 72 h | GDPR | Breach notification to SA from awareness (where feasible) | GDPR Art. 33(1) |
| ≤ 72 h | NIS2 | Incident notification | NIS2 Art. 23(4)(b) |
| ≤ 72 h | CRA (from 11 Sep 2026) | Vulnerability / incident notification | CRA Art. 14(2)(b), 14(4)(b) |
| ≤ 14 days after a fix | CRA (from 11 Sep 2026) | Final report on actively exploited vulnerability | CRA Art. 14(2)(c) |
| ≤ 72 h after initial | DORA | Intermediate report | RTS 2025/301 Art. 5(1)(b) |
| Without undue delay | GDPR | Processor → controller breach notice | GDPR Art. 33(2) |
| Without undue delay | GDPR | Communication to data subjects (high risk) | GDPR Art. 34(1) |
| ≤ 1 month after notification | NIS2 | Final report | NIS2 Art. 23(4)(d) |
| ≤ 1 month after latest intermediate | DORA | Final report | RTS 2025/301 Art. 5(1)(c) |
| ≤ 1 month after notification | CRA (from 11 Sep 2026) | Final report on severe incident | CRA Art. 14(4)(c) |
| ≤ 2 months notice, ≤ 30 days transition | Data Act | Cloud/data-processing switching | Data Act Art. 25(2) |
| 1 month (+2) | GDPR | Data-subject request response | GDPR Art. 12(3) |
| Contractual | SOC 2 / ISO | No statutory clock — set by customer contracts/SLAs (e.g. "notify within 48 h") | — |

## 3. Recurring cadences

| Cadence | Framework | What | Source |
|---|---|---|---|
| Yearly | DORA | Review ICT risk framework; test critical-function systems; report register-of-information summary | DORA Arts. 6(5), 24(6), 28(3) |
| Every 3 years | DORA | TLPT for identified entities | DORA Art. 26(1) |
| At least every 2 years | NIS2 | Member States review entity lists | NIS2 Art. 3(3) |
| Yearly surveillance, 3-year recert | ISO 27001 / 42001 | Certification cycle | ISO/IEC 17021-1 |
| Annual Type 2 (market practice) | SOC 2 | New report + bridge letters | Market practice — ASSUMED |
| Planned intervals | ISO 27001 / 42001 | Internal audit, management review, risk re-assessment | Clauses 8.2, 9.2, 9.3 |
