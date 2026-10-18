# Applicability classifier — which warden frameworks apply?

Decision tree that turns a product/feature description into a set of applicable
frameworks, roles, and obligation IDs (G#, N#, D#, CR# (CRA), DA# (Data Act), I#, A#, CC/criteria,
NIST subcategory).
Each branch cites the scope rule. Run all branches — frameworks are not mutually exclusive.
EU AI Act classification is **out of scope** here: Step 8 only flags whether to hand off to
the `eu-ai-act-compliance` skill.

Last reviewed: 2026-10-18.

## Inputs to extract first (evidence or ask once)

1. Establishment(s) of the entity (EU Member States? non-EU?) and markets served.
2. Does the product process personal data? Whose (EU residents?) and which categories?
3. Sector of the entity and its customers (financial? Annex I/II NIS2 sector?).
4. Size: headcount, turnover, balance sheet (SME test: Recommendation 2003/361/EC).
5. Customer type: B2B enterprise / regulated FS / public sector / consumer.
6. AI/ML features? LLM features? Is AI used to make or support decisions about people?
6a. Does the company sell a product with digital elements (software, firmware, connected device) on
    the EU market? A connected product or companion app? Cloud / data-processing services?
7. Existing certifications/reports or customer demands (ISO, SOC 2).

If (1)–(5) are unknown, ask **one** consolidated question; otherwise proceed with stated assumptions.

## Step 1 — GDPR

```
Processes personal data (Art. 4(1))?
├─ No  → GDPR not triggered (re-check: logs, IPs, account data, support tickets usually ARE personal data)
└─ Yes → Established in EU (Art. 3(1))?  ── Yes → GDPR APPLIES
         └─ No → Offers goods/services to, or monitors behaviour of, people in the EU (Art. 3(2))?
                  ├─ Yes → GDPR APPLIES + EU representative (Art. 27)
                  └─ No  → GDPR not triggered
Role: decides purposes/means → controller (Art. 4(7)); on customer's behalf → processor (Art. 4(8)); often both.
Escalators: special-category data (Art. 9) · automated decisions with legal/similar effect (Art. 22)
 · large-scale monitoring or special data (DPO, Art. 37) · high-risk processing (DPIA, Art. 35)
 · non-adequate third-country transfers (Arts. 44–49)
```

## Step 2 — NIS2

```
Entity type in Annex I or II (Art. 2(1))?  (incl. cloud, data centre, CDN, MSP/MSSP, DNS,
marketplace, search engine, social network, manufacturing sub-sectors)
├─ No  → Size-independent category (Art. 2(2)–(4): e-comms, trust services, TLD/DNS, sole provider, critical entity)?
│        ├─ Yes → NIS2 APPLIES
│        └─ No  → NIS2 not directly; check SUPPLIER flow-down (customers in scope → Art. 21(2)(d) clauses)
└─ Yes → Medium-sized or larger (≥50 staff OR >€10M turnover AND >€10M balance sheet; Art. 2(1), Rec. 2003/361)?
         ├─ No  → generally out unless Art. 2(2) applies or Member State designates
         └─ Yes → NIS2 APPLIES
Class: ESSENTIAL if any of Art. 3(1)(a)–(g); else IMPORTANT (Art. 3(2)):
  (a) Annex I entities exceeding medium-sized ceilings
  (b) qualified trust service providers, TLD registries, DNS service providers — regardless of size
  (c) medium-sized providers of public electronic communications networks/services
  (d) central-government public administration entities (Art. 2(2)(f)(i))
  (e) entities identified as essential by a Member State under Art. 2(2)(b)–(e)
  (f) critical entities under the CER Directive (EU) 2022/2557 (Art. 2(3))
  (g) entities identified as operators of essential services before 16 Jan 2023 (if the Member State so provides)
Financial entity under DORA? → DORA prevails for ICT risk & reporting (Art. 4).
Jurisdiction: main establishment for digital-infrastructure / digital-provider types (Art. 26).
```

## Step 3 — DORA

```
One of the 20 financial-entity types (Art. 2(1))?
├─ Yes → excluded by Art. 2(3)? ── No → DORA APPLIES
│         Microenterprise / Art. 16 entity? → simplified ICT risk framework (Art. 16), no TLPT
│         Identified by authority for TLPT? → Art. 26 every 3 years
└─ No  → Provide ICT services to financial entities?
         ├─ Yes → DORA via CONTRACT (Art. 30 terms, register entry, audits);
         │        designated critical ICT third-party provider (Art. 31)? → direct OVERSIGHT
         └─ No  → DORA not triggered
```

## Step 3a — Cyber Resilience Act (CRA)

```
Makes available on the EU market a product with digital elements (hardware or software) whose
intended or foreseeable use includes a data connection to a device or network (Art. 2(1))?
├─ No  → Pure SaaS with no product shipped? → generally NOT TRIGGERED (ASSUMED; check "remote
│        data processing", Art. 3) · supplier of components → VIA SUPPLY CHAIN (Art. 13(5))
└─ Yes → Excluded by Art. 2(2)–(7) (medical devices, vehicles, aviation, marine, defence)?
         ├─ Yes → NOT TRIGGERED
         └─ No  → CRA APPLIES (adopted, in force; reporting from 11 Sep 2026, all duties 11 Dec 2027)
Role: manufacturer (Art. 13–14) · importer (Art. 19) · distributor (Art. 20) · OSS steward (Art. 24)
Class: Annex III → important (Class I/II, Art. 7) · Annex IV → critical (Art. 8) · else default
Triggered IDs: CR1–CR7 for manufacturers; CR7 already live from 11 Sep 2026.
```

## Step 3b — Data Act

```
Manufactures a connected product or provides a related service placed on the EU market (Art. 1(3)(a))?
├─ Yes → micro/small enterprise without larger partner/linked enterprises (Art. 7(1))?
│        ├─ Yes → Chapter II NOT TRIGGERED
│        └─ No  → DATA ACT APPLIES: DA1–DA6 (DA1 for products placed on the market after 12 Sep 2026)
Provides data processing services (cloud, SaaS, PaaS, IaaS) to customers in the EU (Art. 1(3)(f))?
└─ Yes → DATA ACT APPLIES: switching DA8–DA11, government access DA12 (regardless of size)
Holds data subject to a public-sector exceptional-need request? → DA7
```

## Step 4 — ISO/IEC 27001

```
Certified, pursuing certification, or customers/tenders require it? → APPLIES (contractual)
Otherwise → use as control CATALOGUE (recommended) to evidence GDPR Art. 32 / NIS2 Art. 21 / DORA Arts. 6–14.
```

## Step 5 — SOC 2

```
Service organisation selling to (mostly US) enterprises who request a SOC 2? → APPLIES (contractual)
Categories: Security always; + Availability (uptime SLAs), Processing Integrity (computations/
transactions customers rely on), Confidentiality (customer confidential data), Privacy (PII of end users).
```

## Step 6 — ISO/IEC 42001 & NIST AI RMF

```
Product develops, provides or uses AI/ML?
├─ No  → not triggered
└─ Yes → NIST AI RMF: RECOMMENDED baseline (voluntary); always map GOVERN 1.6, MAP 3.5, MEASURE 2.7/2.10/2.11, MANAGE 2.4
         Generative AI / LLM? → + NIST AI 600-1 risks + OWASP LLM Top 10
         Customers ask for AI governance certification, or already ISO 27001 → ISO/IEC 42001 RECOMMENDED/APPLIES (contractual)
```

## Step 7 — Output the applicability table

| Framework | Status | Basis | Role/class | Triggered obligation IDs |
|---|---|---|---|---|
| e.g. GDPR | APPLIES | Art. 3(1) EU establishment | Processor + controller | G6, G10, G12, G13, G17 |
| e.g. Data Act | APPLIES | Art. 1(3)(f) data processing service | Provider | DA8–DA12 |

Status vocabulary: **APPLIES** (binding law) · **APPLIES (contractual)** · **VIA SUPPLY CHAIN**
· **RECOMMENDED** · **NOT TRIGGERED** · **UNCLEAR — ASSUMED: …**.

## Step 8 — EU AI Act hand-off (flag only)

```
Does the artifact place on the market / put into service / use an AI system, or a
general-purpose AI model, with any EU nexus?
├─ No  → "EU AI Act: not indicated"
└─ Yes → "EU AI Act: LIKELY RELEVANT — run `eu-ai-act-compliance`"
         + list the trigger facts observed (e.g. AI used in hiring, credit, biometrics,
           education, critical infrastructure, chatbot interacting with people,
           generated content, GPAI model) WITHOUT assigning a tier.
```

Tier, role and obligations are determined by the sibling skill (repo:
<https://github.com/bioztar/EU-AI-Act>, entry `skill/SKILL.md`). Never assign an AI-Act tier here.
