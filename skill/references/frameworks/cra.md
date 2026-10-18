# CRA — Regulation (EU) 2024/2847 (Cyber Resilience Act)

> **Source:** Regulation (EU) 2024/2847 of 23 October 2024 on horizontal cybersecurity
> requirements for products with digital elements — CELEX 32024R2847 —
> <https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32024R2847> · local copy
> `corpus/eu-law/cra-regulation-2024-2847.md`. EU public law: quotes below are verbatim.
> **Type:** binding regulation, directly applicable. Status on 2026-10-18: **adopted & in
> force; mostly not yet applicable** (reporting from 11 Sep 2026, everything from 11 Dec 2027).
> **Last reviewed:** 2026-10-18.

## In plain language

The CRA is product law for anything with software in it that connects to a device or a
network: apps, desktop software, firmware, routers, smart devices, and the software
components sold to build them. Before you sell such a product in the EU you must design it
securely, assess its cyber risks, ship it without known exploitable vulnerabilities, fix
vulnerabilities for a stated support period, document it, and put a CE mark on it. From
11 September 2026 you must already report actively exploited vulnerabilities and severe
incidents within 24 hours. It regulates the *product*; NIS2 and DORA regulate the
*organisation* running services.

## 1. Scope

| Question | Rule | Citation |
|---|---|---|
| What products? | "Products with digital elements made available on the market, the intended purpose or reasonably foreseeable use of which includes a direct or indirect logical or physical data connection to a device or network." Hardware and software, incl. remote data processing solutions that are part of the product. | Art. 2(1), Art. 3 |
| Excluded | Products under the medical-device regulations (EU) 2017/745 and 2017/746 and vehicle type-approval (EU) 2019/2144; aviation products certified under (EU) 2018/1139; marine equipment (Directive 2014/90/EU); identical spare parts; national-security/defence-only products. Other sectoral rules may limit or exclude the CRA by delegated act. | Art. 2(2)–(7) |
| Pure SaaS | Not a "product" in itself. ASSUMED (from Art. 2(1) and the "remote data processing" definition in Art. 3): a SaaS backend is in scope only where it is remote data processing without which the product cannot perform a function; check the Commission guidance before advising. | Art. 3 |
| Who has duties | **Manufacturers** (most duties), **importers**, **distributors**; **open-source software stewards** get a light regime. Non-commercial free and open-source software is outside the manufacturer duties. | Arts. 13–24 |
| Risk classes | Default products: self-assessment. **Important products** (Annex III, Class I and II) and **critical products** (Annex IV) need stricter conformity assessment. | Arts. 6–8, 32 |
| Old products | Products placed on the market before 11 Dec 2027 are subject to the CRA only if substantially modified from that date — but the Art. 14 reporting duties apply to **all** in-scope products already on the market. | Art. 69(2)–(3) |

## 2. Key obligations

| # | Obligation | Who | Citation |
|---|---|---|---|
| CR1 | Design, develop and produce in line with the **essential cybersecurity requirements** (Annex I Part I: no known exploitable vulnerabilities, secure-by-default configuration, security updates, access control, confidentiality/integrity protection, data minimisation, attack-surface reduction, logging, secure deletion…) | M | Art. 13(1); Annex I Part I |
| CR2 | Documented **cybersecurity risk assessment**, updated during the support period, included in the technical documentation | M | Art. 13(2)–(4) |
| CR3 | **Due diligence on third-party components**, including free and open-source components; report vulnerabilities found in a component to its maintainer | M | Art. 13(5)–(6) |
| CR4 | **Vulnerability handling** for the support period (at least five years, Art. 13(8)): identify and document components (SBOM), fix without delay, security updates, coordinated vulnerability disclosure policy, contact address | M | Art. 13(8); Annex I Part II |
| CR5 | Technical documentation, conformity assessment, EU declaration of conformity, **CE marking** | M | Arts. 13(12), 28–32; Annex VII |
| CR6 | User information: contact point, support-period end date, security instructions | M | Art. 13; Annex II |
| CR7 | **Report actively exploited vulnerabilities and severe incidents** to the coordinating CSIRT and ENISA via the single reporting platform; inform users | M (and OSS stewards, partly) | Arts. 14, 16; Art. 24(3) |
| CR8 | Importer and distributor checks (CE mark, documentation, manufacturer contact) | I, D | Arts. 19–20 |
| CR9 | Open-source software stewards: documented cybersecurity policy, cooperate with market surveillance authorities | Steward | Art. 24 |

Key quote:

> "A manufacturer shall notify any actively exploited vulnerability contained in the product
> with digital elements that it becomes aware of simultaneously to the CSIRT designated as
> coordinator, in accordance with paragraph 7 of this Article, and to ENISA." — Art. 14(1)

## 3. Deadlines & dates

| Date / clock | What | Citation |
|---|---|---|
| 23 Oct 2024 | Adopted (signed) | Regulation (EU) 2024/2847 |
| **11 Jun 2026** | Chapter IV (notification of conformity assessment bodies, Arts. 35–51) applies | Art. 71(2) |
| **11 Sep 2026** | Art. 14 reporting obligations apply — to all in-scope products, including those already on the market | Art. 71(2); Art. 69(3) |
| **11 Dec 2027** | Regulation applies in full | Art. 71(2) |
| ≤ 24 h of awareness | Early warning: actively exploited vulnerability / severe incident | Art. 14(2)(a), 14(4)(a) |
| ≤ 72 h of awareness | Vulnerability / incident notification | Art. 14(2)(b), 14(4)(b) |
| ≤ 14 days after a fix is available | Final report on an actively exploited vulnerability | Art. 14(2)(c) |
| ≤ 1 month after the incident notification | Final report on a severe incident | Art. 14(4)(c) |
| Support period | "the support period shall be at least five years", shorter only where the product is expected to be in use for less than five years | Art. 13(8) |

Guidance: on 27 Jul 2026 the Commission published practical CRA implementation guidance
(Commission CRA page, last updated 7 Sep 2026, fetched 2026-10-18). Non-binding.

## 4. Penalties & enforcement

- **Up to €15 M or 2.5%** of worldwide annual turnover (higher of) for "non-compliance with
  the essential cybersecurity requirements set out in Annex I and the obligations set out in
  Articles 13 and 14". — Art. 64(2)
- **Up to €10 M or 2%** for other listed obligations. — Art. 64(3)
- **Up to €5 M or 1%** for incorrect, incomplete or misleading information to notified
  bodies or market surveillance authorities. — Art. 64(4)
- Market surveillance authorities can require corrective action, withdrawal or recall from the market. — Arts. 52–58
- Member States set the penalty rules within these ceilings (Art. 64(1)).
- No fines for **microenterprises or small enterprises** that miss the 24 h early-warning deadline (Art. 14(2)(a), 14(4)(a)). — Art. 64(10)(a)

## 5. Mapping onto a software product

| Area | What the CRA expects | Citation |
|---|---|---|
| Secure SDLC | Threat model / risk assessment per product, secure defaults, hardening, attack-surface review in design | Art. 13(2)–(3); Annex I Part I |
| Dependencies | SBOM in a commonly used machine-readable format (at least top-level dependencies); component due diligence; upstream reporting | Art. 13(5)–(6); Annex I Part II(1) |
| Vulnerability management | CVD policy, security contact, triage SLA, fixes without delay, free security updates, advisories | Annex I Part II |
| Updates | Security updates, automatic by default where applicable, with an easy opt-out; secure distribution; free of charge with advisories; security updates separate from functionality updates where technically feasible | Annex I Part I(2)(c); Part II(2), (7)–(8) |
| Incident response | 24 h / 72 h / 14 days / 1 month CRA clocks via the ENISA single reporting platform, alongside NIS2/GDPR clocks | Art. 14 |
| Logging | Record and monitor relevant internal activity (access, modification of data/functions), with user opt-out | Annex I Part I(2)(l) |
| Documentation | Technical file (Annex VII), declaration of conformity, user instructions incl. support-period end date | Arts. 13, 28, 31; Annexes II, VII |
| Vendor management | Treat suppliers of components as part of your due diligence; ask for their SBOM and CVD policy | Art. 13(5) |
| Human oversight | Not a CRA concept | — |

## 6. Interplay with other frameworks

- **NIS2:** the CRA regulates products, NIS2 the entities operating services. A manufacturer
  can be subject to both. CRA compliance helps evidence NIS2 Art. 21(2)(d)–(e) supply-chain and
  secure-development measures.
- **EU AI Act (reference only):** Art. 12 CRA links high-risk AI systems that are also CRA
  products to the AI Act's cybersecurity requirement. For AI Act obligations use
  **`eu-ai-act-compliance`** / <https://github.com/bioztar/EU-AI-Act>; do not re-derive them here.

## 7. Common misconceptions

- "The CRA applies from 2027, so we can wait." — Vulnerability and incident reporting applies from **11 Sep 2026**, also for products already on the market (Art. 69(3), 71(2)).
- "Open source is exempt." — Non-commercial FOSS is outside manufacturer duties, but commercial products integrating FOSS carry full due-diligence duties, and stewards have a light regime (Arts. 13(5), 24).
- "CE marking is only for hardware." — Standalone software is a product with digital elements too (Art. 3).
- "We patch, so we are compliant." — The CRA also needs a documented risk assessment, SBOM, CVD policy, technical file and conformity assessment.

## Sources

- Regulation (EU) 2024/2847 (CRA), EUR-Lex: <https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32024R2847>
- Commission Cyber Resilience Act page (dates, guidance): <https://digital-strategy.ec.europa.eu/en/policies/cyber-resilience-act>
