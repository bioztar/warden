# Data Act — Regulation (EU) 2023/2854

> **Source:** Regulation (EU) 2023/2854 of 13 December 2023 on harmonised rules on fair access
> to and use of data — CELEX 32023R2854 —
> <https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32023R2854> · local copy
> `corpus/eu-law/data-act-regulation-2023-2854.md`. EU public law: quotes below are verbatim.
> **Type:** binding regulation, directly applicable. Status on 2026-10-18: **adopted, in
> force (11 Jan 2024) and applicable since 12 Sep 2025**; some duties phase in (Art. 3(1)
> design duty: products placed on the market after 12 Sep 2026; switching charges abolished
> from 12 Jan 2027). **Last reviewed:** 2026-10-18.

## In plain language

The Data Act has two parts that matter for software companies. First, if you make a
**connected product** (a device that generates usage data) or a **related service** (an app
that controls it), users must be able to get that data and send it to a third party of
their choice. Second, if you sell **cloud or other data processing services**, customers
must be able to leave: written switching terms, at most two months' notice, a 30-day
transition, help with the move, and — from 12 January 2027 — no switching charges at all.
You must also resist unlawful foreign-government access to non-personal data held in the EU.
Personal data stays under GDPR; the Data Act sits on top.

## 1. Scope

| Question | Rule | Citation |
|---|---|---|
| What data? | Personal and non-personal data. Chapter II: data (not content) on the performance, use and environment of connected products and related services. Chapter VI: any data and services processed by providers of data processing services. Chapter VII: non-personal data held in the EU by those providers. | Art. 1(2) |
| Who | Manufacturers of connected products placed on the EU market and providers of related services (wherever established); EU users; data holders and recipients; public-sector bodies with exceptional need; **providers of data processing services** offering services to EU customers (wherever established); data-space participants. | Art. 1(3) |
| GDPR relationship | "This Regulation is without prejudice to Union and national law on the protection of personal data, privacy and confidentiality of communications and integrity of terminal equipment, which shall apply to personal data processed in connection with the rights and obligations laid down herein". | Art. 1(5) |
| SME carve-out | Chapter II duties do not apply to data from products or services of a **microenterprise or small enterprise** (without partner or linked enterprises that are larger). | Art. 7(1) |
| Contracts (B2B) | Chapter IV unfair-terms test for data-related terms unilaterally imposed on another enterprise. | Art. 13 |

## 2. Key obligations

| # | Obligation | Who | Citation |
|---|---|---|---|
| DA1 | **Access by design**: product and related-service data, with metadata, "by default, easily, securely, free of charge, in a comprehensive, structured, commonly used and machine-readable format" and, where relevant and technically feasible, directly accessible | Manufacturer / related-service provider | Art. 3(1) |
| DA2 | Pre-contract information on data the product generates, storage, retention and how to access/erase it | Seller / service provider | Art. 3(2)–(3) |
| DA3 | Where not directly accessible: make readily available data available to the user on request | Data holder | Art. 4 |
| DA4 | **Share with a third party** chosen by the user, same quality, free of charge to the user | Data holder | Art. 5 |
| DA5 | Third-party recipient limits (purpose, no use to develop a competing product, etc.) | Third party | Art. 6 |
| DA6 | B2B making-available on FRAND terms; reasonable compensation | Data holder | Arts. 8–9 |
| DA7 | Exceptional-need requests from public-sector bodies | Data holder | Arts. 14–22 |
| DA8 | **Switching**: written contract with switching and exit terms; maximum notice period (two months) and maximum 30-calendar-day transitional period; reasonable assistance, continuity, security during the move; exit strategy support | Provider of data processing services | Arts. 23, 25 |
| DA9 | Information on switching procedures, data formats and known restrictions; good-faith cooperation | Provider | Arts. 26–27 |
| DA10 | **Switching charges**: reduced charges (≤ directly linked costs) until 12 Jan 2027, none after; pre-contract fee transparency | Provider | Art. 29 |
| DA11 | Technical aspects of switching; functional equivalence for IaaS-type services; open interfaces | Provider | Arts. 30–31, 35 |
| DA12 | **Prevent unlawful third-country governmental access** to non-personal data held in the EU; publish information on jurisdiction and measures | Provider | Arts. 28, 32 |
| DA13 | Smart contracts for executing data-sharing agreements: essential requirements | Vendor/deployer of smart contracts | Art. 36 |

Key quote:

> "From 12 January 2027, providers of data processing services shall not impose any
> switching charges on the customer for the switching process." — Art. 29(1)

## 3. Deadlines & dates

| Date / clock | What | Citation |
|---|---|---|
| 11 Jan 2024 | Entry into force | Art. 50; Commission Data Act page |
| **12 Sep 2025** | Applies | Art. 50 |
| **12 Sep 2026** | Art. 3(1) access-by-design duty applies to connected products and related services placed on the market after this date | Art. 50 |
| 11 Jan 2024 – 12 Jan 2027 | Only reduced switching charges (≤ cost) allowed | Art. 29(2)–(3) |
| **12 Jan 2027** | No switching charges at all | Art. 29(1) |
| 12 Sep 2027 | Chapter IV (unfair terms) also applies to contracts concluded on or before 12 Sep 2025 that are "(a) of indefinite duration; or (b) due to expire at least 10 years from 11 January 2024" | Art. 50 |
| ≤ 2 months / ≤ 30 days | Maximum notice period / transitional period when a customer switches | Art. 25(2)(a), (d) |

## 4. Penalties & enforcement

- Member States lay down penalties and designate competent authorities and a data coordinator. — Arts. 37, 40(1)
- **Data protection authorities** may fine infringements of Chapters II, III and V "in
  accordance with Article 83 of Regulation (EU) 2016/679 and up to the amount referred to in
  Article 83(5)" — i.e. up to €20 M / 4% — within their competence. — Art. 40(4)
- For Chapter V infringements the EDPS may fine under Art. 66 of Regulation (EU) 2018/1725. — Art. 40(5)
- Users and customers may complain to the competent authority and seek a judicial remedy. — Arts. 38–39

## 5. Mapping onto a software product

| Area | What the Data Act expects | Citation |
|---|---|---|
| Data handling | Inventory of product/related-service data and metadata; export API or download in a machine-readable format; real-time feed where relevant | Arts. 3–5 |
| User rights | Self-serve data access and "share with third party" flow; authenticate the user; keep trade-secret protections documented | Arts. 4–5 |
| Contracts | Data-licence terms with users; FRAND B2B terms; unfair-terms review; Commission model contractual terms and cloud SCCs (non-binding, draft) | Arts. 4, 8, 13, 41 |
| Cloud exit | Switching clause, notice ≤ 2 months, transition ≤ 30 days, exportable data catalogue, exit runbook, egress-fee schedule ending 12 Jan 2027 | Arts. 23–31 |
| Interoperability | Open interfaces and published data formats | Arts. 30, 33, 35 |
| Government access | Legal review of third-country orders, data-location controls, transparency page | Arts. 28, 32 |
| Logging / access control | Secure transfer to users and third parties; GDPR Art. 32 security for personal data | Arts. 3(1), 5(1); GDPR Art. 32 |
| Vendor management | Check your own cloud providers' switching terms and charges | Arts. 25, 29 |
| Human oversight | Not a Data Act concept | — |

## 6. Interplay with other frameworks

- **GDPR:** the Data Act does not create a lawful basis for personal data; GDPR rules on
  access, portability and transfers keep applying. The DPA fine route in Art. 40 is the
  GDPR Art. 83(5) ceiling.
- **DORA / NIS2:** Data Act exit and switching rules support DORA Art. 28(8) exit strategies
  and Art. 30 termination terms for financial customers.
- **EU AI Act:** no direct link; for AI Act obligations use **`eu-ai-act-compliance`**.
- **Proposed change:** the Digital Omnibus COM(2025) 837 also amends the Data Act
  ("Ongoing" on EUR-Lex, fetched 2026-10-18). Not law; check before advising.

## 7. Common misconceptions

- "The Data Act is only about IoT." — Chapter VI switching rules hit every cloud/SaaS provider serving EU customers (Arts. 1(3)(f), 23).
- "Egress fees are banned now." — Until 12 Jan 2027 reduced, cost-based switching charges are allowed (Art. 29(2)–(3)).
- "It replaces GDPR portability." — It adds to it; personal data still follows GDPR.
- "Startups are exempt from everything." — The micro/small carve-out covers Chapter II data-sharing duties only (Art. 7), not the cloud-switching rules.

## Sources

- Regulation (EU) 2023/2854 (Data Act), EUR-Lex: <https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32023R2854>
- Commission Data Act page (application, FAQs, model terms, helpdesk): <https://digital-strategy.ec.europa.eu/en/policies/data-act>
