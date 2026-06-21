# Archipelago International Studios — Project Context Brief
## For use at the start of any new Claude conversation

*Last updated: May 2026*

---

## Who We Are

**Scott Fray** — Designer, art director, illustrator. 30-year career in advertising and graphic design. Owner of Archipelago International, Inc. (S corp, 30 years old). Currently W-2 employed at Atlantic Webworks & Consulting. Age 61, Reidsville, NC.

**Madelyn Greco** — Artist, writer, performer, massage therapy student. Scott's wife. Age 57. Co-creator of LivingBrush Bodypainting. Host and voice of Somnific Studios. Future host of Cat Nation News.

**Together:** Five-time World Bodypainting Champions — the only artists in history to win all five World Bodypainting Championship titles in an unbroken string of victories. TEDx speakers. Guinness World Record holders. Founders of Living Art America (the North American Bodypainting Championship).

---

## The Strategic Situation

Scott's W-2 income is the primary household income. AI is actively replacing the design and advertising work that funds it. The window to build something new is open now — 2–5 years before the threat becomes a crisis. The goal is to build a portfolio of AI-first, automated SaaS web applications that supplement and eventually replace that income, while learning a new professional craft (software product ownership via AI-assisted development) that will be valuable regardless of which specific products succeed.

The approach: use Claude Code and the shared studio infrastructure to build multiple branded products efficiently, compound the learning across projects, and reach meaningful recurring revenue before the W-2 transition is forced rather than chosen.

Madelyn's parallel track: massage therapy certification (hands-on work AI cannot replace) plus content creation (Somnific Studios, Cat Nation News).

---

## The Entity

**Archipelago International, Inc.**
S corporation, established ~1995, Reidsville, NC.
All studio projects operate as DBAs under this entity.
Studio email: ArchipelagoInternational@proton.me

---

## The Tech Stack

Next.js 14 (App Router) + React, shadcn/ui + Tailwind, Supabase, Vercel, Stripe, Cloudflare, Claude Code. No WordPress, no Webflow, no page builders. Every project uses the same stack — no exceptions.

**For the current account map (who owns what, who has access, login locations)**: see `STACK.md` in the studio-ops repo.

**For the full architecture** — project type templates, auth/payments/database patterns, the Claude Code workflow, design system, security, legal, and everything else — see `PORTFOLIO_ARCHITECTURE.md`. This is the source of truth for all technical decisions. Reference it in every build session.

Both files are living documents updated as the stack evolves — this brief intentionally does not duplicate their content, to avoid drift between three copies of the same information.

---

## The Brand Portfolio

### Active / In Development

**Somnific Studios** — Madelyn's sleep and meditation YouTube channel. Cinematic brand aesthetic. Atmospheric AI + human voice content. First website to build. Domain: somnificstudios.com (owned). Status: design mockup complete, ready to build.

**LivingBrush Bodypainting** — Scott and Madelyn's world championship bodypainting brand. Legacy and professional credibility site. Redesign in progress. Domain: livingbrush.com (owned through 2034). Status: needs placeholder page immediately, full redesign second.

**Cat Nation News** — Madelyn's upcoming weekly YouTube cat news show. She is the anchor. Dr. Tanya Heller (DVM) provides vet segments. Batch filming model (4 episodes per shoot day, 12 shoot days/year). AI handles research, scripting, social. Domain: catnationnews.com (owned).

### Planned SaaS Products (in build sequence order)

**NeurōTone** — Programmable binaural beat and sound entrainment web app. Competitor to Brain.fm. Browser-based audio engine. $9–$18/month subscription. Domain: TBD.

**Harmonia** — Music theory intelligence platform. Interactive fretboard, chord analysis, AI composition tools. For musicians and composers. Freemium SaaS.

**Memento AI** — AI-generated life-event slideshows and presentations. Wedding, memorial, milestone verticals. Pay-per-project + subscription.

**Soul Tiger** — Multi-tradition oracle and symbolic profile system. 20+ calculation engines. Astrology, numerology, tarot, and more. $29/month membership. Domain: soul-tiger.com (owned).

**Let's Agree** — AI-drafted plain-English mutual agreements with e-signature. Requires UPL attorney review before launch.

**Time Tamer** — Intelligent timer, streak, and deadline coordination platform. Freemium productivity SaaS.

**Passport** — Travel collection and dream scrapbook. 50 states, national parks, breweries. Freemium + print.

**Luminary Arts** — AI calligraphy, portrait, animation, and print commerce.

**Life Ledger** — Read-only Gmail audit that finds every recurring expense, renewal, trial, and obligation hiding in your inbox, delivers a beautiful exportable report, and deletes all raw data afterward. Target: self-employed solopreneurs and microbusiness owners on Gmail. Revenue: $49–$69 one-time report + quarterly rescan subscription. Founder is the target customer — validate on own inbox as a concierge test before building. CASA security assessment required before public launch (~2–6 weeks external dependency). Design-quality report is the moat. Build complexity: Medium. Portfolio slot: ahead of NeurōTone.

**GrantPilot** — AI grant operations platform. Turns a nonprofit's institutional knowledge into funder-specific, review-ready grant drafts and a managed grant calendar. First client and pilot vertical: PURRR Adoption + Sanctuary (animal rescue). Potentially PURRR-funded prototype — runs parallel to PURRR social work, not competing with other portfolio slots. Human review gate is mandatory and architectural. Phase 1: PURRR-only client build. Phase 2: Animal Rescue vertical SaaS.

**Provenance** — AI-first nonfiction authoring platform. Source-grounded writing engine that prevents AI hallucination in academic and serious trade nonfiction. Scott's own book (*Art in the Atomic Age*) is the founding use case. Build after NeurōTone when stack is mature. Domain: TBD (trademark search required).

### Client Work

**PURRR Adoption + Sanctuary** — Cat rescue nonprofit, Oakland Park FL. Founded by Dr. Tanya Heller (close friend of Madelyn's). Currently spending ~$5,000/month on outside social media agency. Ken (Tanya's fiancé, ad agency background) is driving a full digital overhaul. Proposal in development. See separate PURRR handoff document for full context.

**Rabbi Simcha** (name used loosely) — Existing client with a 10-year-old WordPress site requesting a rebuild. Budget ~$2,500 project + ~$25-50/change. First paid client project on the new stack.

---

## Build Sequence (current plan)

1. **LivingBrush placeholder** — Single page, fast, needed for Stripe verification. This week.
2. **Somnific Studios** — Full brochure site + micro-apps. Learning project. Madelyn's platform.
3. **PURRR Phase 1** — Social media autopilot + website enhancements. First significant client revenue.
4. **GrantPilot** — PURRR-funded prototype running parallel to PURRR social work. Client-funded, not consuming studio cash flow.
5. **Simcha's site** — WordPress rebuild on modern stack. Paid client work.
6. **Cat Nation News** — Companion content platform to Somnific. Batch filming model.
7. **Life Ledger** — First real SaaS. Validate on own inbox first (concierge test, near-zero cost). CASA assessment required before public launch.
8. **NeurōTone** — Audio-engine SaaS. By now stack is mature. 3–4 month build.
9. **Soul Tiger** — Heaviest build. Deserves mature execution.
10. **Memento AI** — Wedding/memorial vertical. High willingness-to-pay.
11. Remaining projects as portfolio and cash flow allow.

## Claude Model Selection (updated June 2026)

**Claude Fable 5** launched June 9, 2026 — Anthropic's Mythos-class model, available on Pro/Max plans at no extra cost through June 22, 2026, then consumption-based pricing ($10/$50 per million tokens).

Use Fable 5 for: architecture decisions, complex debugging, feature briefs, strategic planning, any session where structural choices are being made. Use Sonnet for: standard feature building, routine code generation, the bulk of Claude Code build work. Use Haiku for: simple edits, small refactors.

**Advisor Strategy**: Use Fable 5 as the high-level senior advisor for planning and architecture; delegate execution to Sonnet. One model reasons, one model builds. Fable 5's vision capability can verify Claude Code's output against design mockups — show it the Somnific mockup and ask if the built version matches.

---

## Design Philosophy

Scott is a professional designer with decades of experience. The marketability standard is non-negotiable: every product launches at a level credibly competitive with established alternatives. "Minimum viable" is not the standard. "Minimum impressive" is. Consumers do not grade on effort or newness. One chance to impress.

Brand aesthetics are distinct per project but draw from a shared design system foundation. Each brand has its own token set (colors, typography, voice). Current brand token sets exist for: Somnific Studios, LivingBrush, NeurōTone, Harmonia, Soul Tiger, Memento, Let's Agree, Time Tamer, Passport.

---

## Tools in Use for Content and Operations

### AI Tools
- **Claude Pro** — Primary AI (strategy, writing, Claude Code development, Claude Design, Claude Cowork)
- **ChatGPT Teams** — Secondary AI (second opinions, DALL-E image generation, shared workspace with Madelyn)
- **Google AI Pro (Gemini)** — Tertiary AI (evaluate actively — may be redundant)
- **Midjourney** — AI image generation, paid plan, commercial rights confirmed
- **Suno Pro** — AI music generation (Somnific Studios primary music source)
- **ElevenLabs** — AI voice synthesis (planned: Somnific × NeurōTone voice entrainment integration)
- **Blotato** — AI social media automation, MCP-integrated with Claude (to be activated)

### Production Tools (significant studio asset)
- **Apple Logic Pro** — Professional DAW for music production and audio post
- **East West Composer Cloud** — Professional orchestral/instrument sample libraries for Logic. Relevant to NeurōTone sound design, Harmonia audio demos, Somnific original music
- **Full audio hardware studio** — Broadcast-quality audio production capability
- **Riverside.fm** — Remote recording platform. Each participant records locally at full quality (up to 4K/48kHz). Critical for Cat Nation News (Tanya records in Florida), LivingBrush interview series, any remote content production
- **Elgato Camera Hub + Camo Studio** — Professional camera control and webcam enhancement for on-camera content (Cat Nation News, LivingBrush live sessions)
- **Adobe Suite** (via Atlantic Webworks) — Photoshop, Illustrator, Premiere, After Effects. Brand assets, Cat Nation News video editing, motion graphics
- **Microsoft 365** (via Atlantic Webworks) — Word, Excel, PowerPoint. Available for proposals, Provenance manuscript work

### Operations
- **LastPass** — Password management (Scott + Madelyn)
- **MileIQ** (Scott + Madelyn) — Mileage tracking for tax deductions (client visits, PURRR trips)
- **Proton Duo** — Encrypted email + Drive + VPN + Pass (Scott + Madelyn, all brand email routing)
- **Amazon Prime** — Personal

### Distribution
- **YouTube** — Primary distribution for Somnific Studios and Cat Nation News
- **Claude Cowork** — Madelyn's background operations tool (content drafting, file organization, research briefs)
- **Claude Design** — Visual concepting and prototyping before builds

---

## Financial Context

Primary income: Scott's W-2 at Atlantic Webworks. Freelance design income has dwindled. Madelyn earns modest art income (<$5K/year). LivingBrush generates no revenue currently. Massage therapy certification is Madelyn's income diversification track.

Target outcome: $5,000–$10,000/month in combined SaaS recurring revenue + client project work within 24–36 months, sufficient to survive a W-2 transition if/when it comes.

Near-term revenue priority order: PURRR client engagement → Simcha rebuild → NeurōTone subscriptions → Memento per-project revenue → Soul Tiger memberships.

---

## What This Conversation Is For

*Replace this section with the specific goal of the new conversation.*

Example: "This conversation is to build the PURRR proposal for Ken and Tanya."
Example: "This conversation is to draft the Somnific Studios CLAUDE.md and begin the build."
Example: "This conversation is to design the NeurōTone feature set and write the PROJECT_BRIEF.md."

---

*This document is a living brief. Update it as the studio evolves.*
*Parent strategy conversation: [paste link when available]*
*Portfolio Architecture document: PORTFOLIO_ARCHITECTURE.md (attach to every build session)*
