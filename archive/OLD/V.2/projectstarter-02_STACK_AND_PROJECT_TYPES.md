# Stack and Project Type Reference

This file defines the studio's default technical patterns. It should be treated as a default operating reference, not an eternal law. Deviations are allowed only when they are explicit, reasoned, and documented.

## Studio default stack

| Layer | Default |
|---|---|
| Application framework | Next.js App Router on the current studio-approved stable version |
| Language | TypeScript |
| UI | shadcn/ui + Tailwind CSS + project-specific brand tokens |
| Hosting | Vercel |
| Version control | GitHub, one repo per project |
| DNS / CDN / registrar | Cloudflare |
| Database and auth | Supabase when the project needs auth, persistent user data, or relational data |
| Payments | Stripe when taking payment |
| Transactional email | Resend or the current studio-approved transactional provider |
| Marketing email | Brevo or the current studio-approved newsletter provider |
| Error monitoring | Sentry or the current studio-approved error monitor |
| Web analytics | Plausible or the current studio-approved privacy-friendly analytics tool |
| Secrets | A secrets manager; never commit secrets to the repo |
| AI development | Claude Code or the current studio-approved AI coding tool |
| Documentation | In-repo Markdown for build truth and anchor files |

## The Supabase rule

Not every project needs a Supabase project. Use Supabase when the project needs auth, persistent user records, relational data, tiered access, or stored user-generated content. Brochure sites, simple content sites, static portfolios, and API-only micro-apps may not need a database at launch.

## Project types

### Type A: SaaS application

A SaaS application has accounts, a member area, ongoing use, payment, stored user state, and a product surface separate from the marketing site.

Typical surfaces:

```text
/app/(marketing)   public pages
/app/(app)         authenticated product
/app/(admin)       owner/admin tools
/app/api           webhooks and backend routes
/components        UI, marketing, app, admin
/lib               auth, database, payments, AI, email
/content           marketing or educational content when needed
```

Required planning docs:

```text
PROJECT_BRIEF.md
CLAUDE.md
SESSION_HANDOFF.md
MASTER_PLAN.md
DATA_MODEL.md
CLAIMS_AND_COMPLIANCE.md when relevant
```

### Type B: brochure / portfolio site

A brochure site primarily presents identity, services, galleries, case studies, articles, inquiry forms, and light commerce. It usually does not need auth or a full database.

Typical requirements:

- brand tokens
- page templates
- content pipeline
- contact form
- email capture
- analytics
- light commerce only if selling something directly

### Type C: content site

A content site is organized around articles, media, search, categories, SEO, newsletters, and possibly embedded tools. It should prioritize content structure, editorial templates, and maintainability.

### Type D: e-commerce site

An e-commerce site needs product catalog strategy, checkout, order records, fulfillment rules, transactional email, refund policy, and tax/shipping decisions.

### Type E: client site

A client site may need a self-editing CMS, handoff materials, maintenance boundaries, support terms, and a clearer separation between internal build docs and client-facing documentation.

### Type F: micro-app

A micro-app is a single-purpose tool, often embedded in a larger site. It should avoid its own auth, database, and infrastructure unless the specific product case justifies them.

## Explicit exclusions unless re-approved

Avoid adopting tools or platforms that fragment the studio workflow without a documented reason. Do not re-litigate excluded tools in every project. If a project truly requires a deviation, record the reason in `DECISIONS.md` and update the project `CLAUDE.md`.

Commonly excluded categories:

- page builders for core studio products
- unrelated CMS stacks for projects the studio controls
- separate databases when the standard relational pattern is enough
- dedicated vector databases before Supabase/postgres options are exhausted
- native mobile frameworks before a PWA or web-first product has proven need

## Deviation rule

A deviation must answer:

1. What problem does the default stack fail to solve?
2. Why is the new tool better enough to justify complexity?
3. What does it replace?
4. How will it be documented and maintained?
5. How can it be removed later if needed?
