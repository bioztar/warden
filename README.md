# warden

Compliance knowledge base + cross-harness skill for the security/compliance frameworks
**other than** the EU AI Act — that one has its own dedicated repo, [`EU-AI-Act`][eu-ai-act],
and `warden` treats it as a sibling, not a duplicate.

## Why this exists

Two uses at once:

1. **Client work** — audit / readiness assessments for consulting engagements (e.g. the
   Almirall-style governed-rollout work), where a claim needs to trace back to a binding
   article or control, not a vibe.
2. **Content / authority** — source material for LinkedIn posts and lead-magnet content
   that needs to be fast to turn into plain language without losing accuracy.

## Scope (v1 framework set)

- GDPR
- NIS2 (Network and Information Security Directive 2)
- DORA (Digital Operational Resilience Act)
- ISO/IEC 27001 (information security management)
- ISO/IEC 42001 (AI management systems)
- SOC 2
- NIST AI RMF (AI Risk Management Framework)
- OWASP LLM Top 10 (stretch goal)

EU AI Act is explicitly **out of scope here** — see [`EU-AI-Act`][eu-ai-act] for that corpus,
analysis, and skill. Where a `warden` framework interacts with the AI Act (e.g. ISO 42001
as a candidate harmonised standard, GDPR's overlap with AI Act transparency duties), the
relevant `warden` file links to the `EU-AI-Act` file rather than re-explaining it.

## Structure (mirrors `EU-AI-Act`)

- `frameworks/<slug>.md` — one file per framework: scope, who it applies to, key
  obligations, deadlines, penalties, how it maps onto a software product.
- `analysis/` — cross-framework material: an overlap matrix (which controls satisfy
  more than one framework at once — this is most of the client value), checklists per
  artifact type (codebase / design doc / product idea / vendor assessment).
- `skill/` — installable, cross-harness skill (Claude Code / Pi / Codex) that takes a
  product or feature description, says which `warden` frameworks + which `EU-AI-Act`
  obligations it triggers, and produces either an audit checklist or a plain-language
  explainer.

## Status

Scaffolding only. Framework content, analysis, and the skill are being built — see the
`helm` mission that tracks this repo for current state.

[eu-ai-act]: https://github.com/bioztar/EU-AI-Act
