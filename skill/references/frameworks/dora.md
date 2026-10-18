# DORA — Regulation (EU) 2022/2554 (Digital Operational Resilience Act)

> **Source:** Regulation (EU) 2022/2554, OJ L 333, 27.12.2022 — CELEX 32022R2554 —
> <https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32022R2554> · local copy
> `corpus/eu-law/dora-regulation-2022-2554.md`. Level-2 acts in corpus: Delegated Regulation
> (EU) 2024/1774 (ICT risk-management RTS) and (EU) 2025/301 (incident-report content & time limits).
> Full Level-2 list and CTPP designations: §8.
> **Type:** binding regulation, directly applicable. **Last reviewed:** 2026-10-18.

## In plain language

DORA is the EU rulebook that makes banks, insurers, investment firms, payment and crypto
firms (and many more) prove they can keep running when technology fails or is attacked.
Boards own the risk, there must be a documented ICT risk framework, major incidents must be
reported within hours, systems must be tested every year (big firms: red-team every three
years), and every technology vendor contract must contain specific clauses. If you sell
software or cloud services to EU financial firms, DORA reaches you through those contracts —
and the most systemically important tech providers are supervised directly.

## 1. Scope

| Question | Rule | Citation |
|---|---|---|
| Who (direct) | 20 types of **financial entity**: credit institutions, payment & e-money institutions, investment firms, crypto-asset service providers and issuers of asset-referenced tokens, CSDs, CCPs, trading venues, trade repositories, AIFMs, UCITS managers, data reporting service providers, (re)insurance undertakings and intermediaries, IORPs, credit-rating agencies, benchmark administrators, crowdfunding providers, securitisation repositories — **and ICT third-party service providers** (for the oversight framework). | Art. 2(1) |
| Exclusions | E.g. certain AIFMs under exemptions, small insurance undertakings/intermediaries that are micro/small/medium as specified, IORPs ≤ 15 members, post-office giro institutions. | Art. 2(3) |
| Proportionality | Apply rules in a manner proportionate to size, overall risk profile, nature/scale/complexity. **Microenterprises** and certain small entities get lighter regimes. | Art. 4 |
| Simplified regime | Small and non-interconnected investment firms, exempted payment/e-money institutions, small IORPs, etc. apply a **simplified ICT risk-management framework** instead of Arts. 5–15. | Art. 16; RTS 2024/1774 Arts. 28–41 |
| Sector-specific vs NIS2 | DORA is *lex specialis* for financial entities on ICT risk management and incident reporting. | NIS2 Art. 4; DORA Recital 16 |
| Jurisdiction | EU-authorised financial entities. Critical ICT third-party providers (CTPPs) designated by ESAs must have an EU subsidiary for oversight. | Arts. 2, 31(12) |

## 2. Key obligations

| # | Obligation | Citation |
|---|---|---|
| D1 | **Management body** defines, approves, oversees and is *ultimately responsible* for ICT risk management; sets roles, budgets, ICT-provider policy; keeps ICT-risk knowledge up to date (training) | Art. 5(2)–(4) |
| D2 | Sound, comprehensive, **documented ICT risk-management framework**, reviewed at least yearly and after major incidents; digital operational resilience strategy | Art. 6(1), 6(5), 6(8) |
| D3 | ICT systems, protocols & tools: appropriate, reliable, sufficient capacity, resilient | Art. 7 |
| D4 | **Identify**: classify ICT-supported business functions, information and ICT assets; inventory incl. third-party dependencies | Art. 8 |
| D5 | **Protect & prevent**: security policies, strong authentication, access control, encryption, patch/change management | Art. 9; RTS 2024/1774 Arts. 2–21 |
| D6 | **Detect** anomalous activity, multiple control layers, alert thresholds | Art. 10 |
| D7 | **Response & recovery**: ICT business-continuity policy, response/recovery plans, tested | Art. 11 |
| D8 | **Backup** policies, restoration & recovery procedures, segregated backup systems | Art. 12 |
| D9 | Learning & evolving: post-incident reviews, ICT security awareness and training for all staff incl. management | Art. 13 |
| D10 | Crisis communication plans | Art. 14 |
| D11 | ICT-related **incident management process**: detect, log all incidents, classify, root-cause, communicate | Art. 17 |
| D12 | **Classify** incidents & cyber threats using criteria (clients affected, duration, geographic spread, data losses, criticality, economic impact) | Art. 18; Delegated Reg. (EU) 2024/1772 |
| D13 | **Report major ICT-related incidents** to the competent authority (initial notification, intermediate, final report); inform clients where incident affects their financial interests | Art. 19(1)–(3) |
| D14 | Digital operational resilience **testing programme**; tests by independent parties; **at least yearly** tests of all ICT systems supporting critical or important functions | Art. 24(1), (4), (6); Art. 25 |
| D15 | **TLPT** (threat-led penetration testing) **at least every 3 years** for entities identified by competent authorities | Art. 26(1), (8) |
| D16 | **ICT third-party risk**: strategy, policy for critical/important functions, **register of information** on all ICT contractual arrangements, yearly reporting to authority, pre-contract due diligence, exit strategies | Art. 28(1)–(8) |
| D17 | Preliminary assessment of **ICT concentration risk** before contracting | Art. 29 |
| D18 | **Mandatory contract terms** for all ICT services (description, locations, data protection, access/recovery/return, SLAs, incident assistance, authority cooperation, termination, training participation) + extra terms for critical/important functions (full SLAs, notice periods, BC plans, testing participation incl. TLPT, unrestricted audit/access rights, exit strategies) | Art. 30(2)–(3) |
| D19 | Voluntary information-sharing arrangements on cyber threats | Art. 45 |

Key quote:

> "The management body of the financial entity shall define, approve, oversee and be
> responsible for the implementation of all arrangements related to the ICT risk
> management framework referred to in Article 6(1)." — Art. 5(2)

## 3. Deadlines & dates

| Date / clock | What | Citation |
|---|---|---|
| 16 Jan 2023 | Entry into force | Art. 64 |
| **17 Jan 2025** | Applies | Art. 64 |
| Initial notification: **≤4 h after classification as major, and ≤24 h after awareness** | Major ICT incident — initial notification | RTS 2025/301 Art. 5(1)(a) |
| Intermediate: **≤72 h** after initial notification | Updated report (also when status changes significantly) | RTS 2025/301 Art. 5(1)(b) |
| Final: **≤1 month** after latest updated intermediate report | Root cause, remediation, costs | RTS 2025/301 Art. 5(1)(c) |
| Yearly | Framework review; testing of critical-function systems; register-of-information reporting to authority | Arts. 6(5), 24(6), 28(3) |
| Every 3 years | TLPT for identified entities | Art. 26(1) |
| 30 Apr 2025 | First cycle: competent authorities submit the registers of information they collected to the ESAs (ESAs roadmap, 18 Feb 2025). Financial entities' submission dates to their competent authority were set nationally — VERIFY with the authority | Art. 28(3); ITS (EU) 2024/2956; ESAs roadmap |
| 18 Nov 2025 | ESAs published the **first list of 19 designated CTPPs** (§8); list updated annually | Art. 31(9); ESAs list |
| Weekend / bank holiday | Deadline may slip to noon of next working day — **not** for initial/intermediate reports of credit institutions, CCPs, trading venues and NIS2 essential/important entities. If any deadline will be missed, inform the authority before it expires and explain. | RTS 2025/301 Art. 5(3)–(5) |

## 4. Penalties & enforcement

- **Financial entities:** competent authorities get supervisory, investigatory and
  corrective powers; **Member States set administrative penalties and remedial measures**
  (incl. orders to cease conduct, public notices, fines). DORA itself fixes no fine
  percentage for financial entities. Criminal penalties possible under national law. — Arts. 50–52
- Management liability: Member States may apply penalties to members of the management
  body and other individuals responsible. — Art. 50(5)
- **Critical ICT third-party providers:** Lead Overseer (EBA, EIOPA or ESMA) can request
  information, run investigations and inspections, issue recommendations; **periodic
  penalty payment up to 1% of average daily worldwide turnover**, daily, for up to six
  months. — Arts. 33–35, 35(6)–(8)
- Financial entities may be required to suspend or terminate contracts with a CTPP that does
  not follow recommendations. — Art. 42
- Publication of penalties. — Art. 54

## 5. Mapping onto a software product

| Area | What DORA expects | Citation |
|---|---|---|
| Governance | Board-approved ICT risk framework, annual review evidence, management training records | Arts. 5–6, 13(6) |
| Asset inventory | Inventory of ICT assets and dependencies incl. third-party, mapped to critical/important functions | Art. 8 |
| Access control | Strong authentication, least privilege, privileged-access management, periodic access review | Art. 9(4)(c)–(d); RTS 2024/1774 Arts. 20–21 |
| Logging & detection | Logging policy, anomaly detection with thresholds, log retention aligned with incident investigation | Art. 10; RTS 2024/1774 Art. 12 |
| Incident response | Incident register; classification engine against Art. 18 criteria; **4 h / 24 h / 72 h / 1 month** reporting pipeline; client notification | Arts. 17–19; RTS 2025/301 |
| Continuity & backup | Tested BC/DR plans with RTO/RPO per function; segregated backups; restore tests | Arts. 11–12 |
| Testing | Annual vulnerability scans/pen tests/scenario tests; TLPT readiness if identified | Arts. 24–26 |
| Change management | Documented, approved change process incl. emergency changes | Art. 9(4)(e); RTS 2024/1774 Art. 17 |
| Vendor management | Register of information; due diligence; Art. 30 clauses in every contract; exit plans; concentration-risk assessment | Arts. 28–30 |
| **If you are the vendor** | Expect customers to demand Art. 30 clauses: audit/access rights, incident assistance at agreed cost, data location disclosure, subcontractor transparency, participation in their TLPT, termination and exit support | Art. 30 |

## 6. Interplay with the EU AI Act (reference only)

AI systems used in credit scoring and life/health-insurance pricing are AI-Act topics
handled by the **`eu-ai-act-compliance`** skill (<https://github.com/bioztar/EU-AI-Act>).
DORA treats any AI system the financial entity runs as an ICT asset: it must be inventoried,
tested and covered by continuity and third-party controls.

## 7. Common misconceptions

- "DORA only applies to banks." — 20 entity types incl. crypto, insurers, intermediaries and fund managers (Art. 2(1)).
- "We're a SaaS vendor, so DORA doesn't apply." — Not directly unless designated CTPP, but Art. 30 terms flow into your contracts.
- "Only the 19 listed CTPPs matter." — Designation adds direct ESA oversight; every ICT provider still gets Art. 28–30 obligations through contracts and appears in customers' registers of information.
- "Same timeline as NIS2." — DORA's initial notification is tied to classification (≤4 h) as well as awareness (≤24 h).
- "Fines are 2% of turnover." — DORA leaves financial-entity fines to Member States; the 1%-of-daily-turnover figure is a periodic penalty payment for CTPPs only.

## 8. Status watch (checked 2026-10-18)

**Level-2 acts — all adopted & in force** (list from the ESMA DORA page, fetched 2026-10-18):

| Act | Subject | DORA basis |
|---|---|---|
| Delegated Reg. (EU) 2024/1772 | Classification of ICT-related incidents and cyber threats | Art. 18(3) |
| Delegated Reg. (EU) 2024/1773 | Policy on contractual arrangements for ICT services supporting critical or important functions | Art. 28(10) |
| Delegated Reg. (EU) 2024/1774 | ICT risk-management framework and simplified framework | Arts. 15, 16 |
| Implementing Reg. (EU) 2024/2956 | Standard templates for the register of information | Art. 28(9) |
| Delegated Reg. (EU) 2025/301 | Content and time limits of incident reports | Art. 20(a) |
| Implementing Reg. (EU) 2025/302 | Standard forms, templates and procedures for incident reports | Art. 20 |
| Delegated Reg. (EU) 2025/532 | Subcontracting of ICT services supporting critical or important functions (adopted after the Commission rejected the ESAs' first draft; ESAs opinion 7 Mar 2025) | Art. 30(5) |
| Delegated Reg. (EU) 2025/1190 | Threat-led penetration testing (TLPT) | Art. 26(11) |
| Delegated Reg. (EU) 2024/1502 | Criteria for designating CTPPs | Art. 31 (ESMA page: "Art. 31.8") |
| Delegated Reg. (EU) 2024/1505 | Oversight fees | Art. 43(2) |
| Delegated Reg. (EU) 2025/295 | Harmonised conditions for oversight activities | Art. 41(1)(a),(b),(d) |
| Delegated Reg. (EU) 2025/420 | Joint examination team composition | Art. 41(1)(c) |

**Register of information.** ITS (EU) 2024/2956 fixes the templates. The ESAs' first
collection ran in 2025: competent authorities passed registers to the ESAs by 30 Apr 2025
to feed CTPP designation (ESAs roadmap, 18 Feb 2025; EBA RoI reporting page). Expect a
yearly cycle (Art. 28(3)); the reporting date for each financial entity is set by its
competent authority.

**CTPP designation.** The ESAs' list of designated CTPPs (PDF dated 18 Nov 2025, "in
accordance with Article 31(9)"), in the list's order: Accenture plc; Amazon Web Services
EMEA Sarl; Bloomberg L.P.; Capgemini SE; Colt Technology Services; Deutsche Telekom AG;
Equinix (EMEA) B.V.; Fidelity National Information Services, Inc.; Google Cloud EMEA Limited;
International Business Machine Corporation; InterXion HeadQuarters B.V.; Kyndryl Inc.; LSEG
Data and Risk Limited; Microsoft Ireland Operations Limited; NTT DATA Inc.; Oracle Nederland
B.V.; Orange SA; SAP SE; Tata Consultancy Services Limited. The ESAs "publish and update the
list of CTPPs across the EU on an annual basis" (ESMA DORA oversight page). A provider can
also apply to be designated (opt-in route described on the ESMA DORA oversight page).

**Proposed:** the Digital Omnibus COM(2025) 837 would route DORA major-incident reports
through a single EU entry point ("Ongoing" on EUR-Lex). Not law.


- Regulation (EU) 2022/2554 (DORA): <https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32022R2554>
- Delegated Regulation (EU) 2024/1774 (ICT risk RTS): <https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32024R1774>
- Delegated Regulation (EU) 2025/301 (incident-report RTS): <https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32025R0301>
- ESMA DORA page (Level-2 list): <https://www.esma.europa.eu/esmas-activities/digital-finance-and-innovation/digital-operational-resilience-act-dora>
- ESAs list of designated CTPPs (18 Nov 2025): <https://www.esma.europa.eu/sites/default/files/2025-11/List_of_designated_CTPPs.pdf>
- ESMA DORA oversight page: <https://www.esma.europa.eu/dora-oversight>
- ESAs roadmap towards CTPP designation (18 Feb 2025): <https://www.eiopa.europa.eu/esas-provide-roadmap-towards-designation-ctpps-under-dora-2025-02-18_en>
- EBA register-of-information reporting page: <https://www.eba.europa.eu/activities/direct-supervision-and-oversight/digital-operational-resilience-act/preparation-dora-application>
- ESAs DORA landing page (Joint Committee): <https://www.eiopa.europa.eu/digital-operational-resilience-act-dora_en>
