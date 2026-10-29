# Archipelago International Studios — Project Context Brief
## For use at the start of any new Claude conversation

*Last updated: July 2026*

---

## Who We Are

**Scott Fray** — Designer, art director, illustrator. 30-year career in advertising and graphic design. Owner of Archipelago International, Inc. (S corp, establish 1996). Currently W-2 employed at Atlantic Webworks & Consulting. Born December 29, 1964, Reidsville, NC.

**Madelyn Greco** — Artist, writer, performer, massage therapy student. Scott's wife. Born April 4, 1969. Co-creator of LivingBrush Bodypainting. Host and voice of Somnific Studios. Future host of Cat Nation News.

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

**Standing stack decisions (July 2026):** Supabase confirmed over Convex/Clerk (friction was administrative, not technological — recorded in STACK.md "Explicitly Not Used"). Supabase billing is **org-level**: one "Archipelago International" org on Pro ($25/mo + $10/mo per additional active project); only projects needing auth/persistent data get a Supabase project at all — brochure sites and API-only micro-apps get none (see DOCUMENT_MAP.md). Secrets via **Doppler**, not local .env files. Sanctioned deviation: Joe's Companion uses Vercel Postgres/Neon. Supporting docs (research, marketing, white papers) live in **Google Drive** (Claude has connector access); anchor files and build truth stay in repos, always.

---

## The Brand Portfolio

### Active / In Development

**madelyngreco.com** — Madelyn's personal artist site: Book (prepaid Cal.com scheduling — fairy hair, bodypainting, standing + event-based), Commission galleries, Buy (Stripe one-of-one art), About/newsletter. **HARD DEADLINE: September cruise — Book mode must be live and promotable by early August.** No database needed (Cal.com + Stripe + Brevo + repo files). Discovery complete, design prompt written. Status: TOP BUILD PRIORITY alongside Joe's Companion.

**Archipelago Flightdeck** — Internal operations hub + client clean-room portal, modeled on an agency system Scott knows from his W-2 work. Ten sessions complete, clean TypeScript build, production Supabase schema, JWT middleware, isolated portal routing. **Rescoped mission: Phase 1 = the PURRR client portal** (single tenant, real client). Impersonation + webhooks frozen until a client is live in it. Possible Next.js 16 deviation — confirm in code review, document in its CLAUDE.md if real.

**Somnific Studios** — Madelyn's sleep and meditation YouTube channel. Cinematic brand aesthetic. Atmospheric AI + human voice content. Domain: somnificstudios.com (owned). Status: design mockup complete, repo scaffolded, build follows the deadline projects.

**LivingBrush Bodypainting** — Scott and Madelyn's world championship bodypainting brand. Placeholder LIVE at livingbrush.com (Stripe verification complete). Full redesign later. Domain owned through 2034.

**Cat Nation News** — Madelyn's upcoming weekly YouTube cat news show. She is the anchor. Dr. Tanya Heller (DVM) provides vet segments. Batch filming model (4 episodes per shoot day, 12 shoot days/year). AI handles research, scripting, social. Domain: catnationnews.com (owned).

### Planned SaaS Products (in build sequence order)

**NeurōTone** — Programmable binaural beat and sound entrainment web app. Competitor to Brain.fm. Browser-based audio engine. $9–$18/month subscription. **IN ACTIVE BUILD** (~70%+ at one point; survived a chat-loss recovery — see Build Bible Part 12). Supabase Pro required. Domain: TBD.

**Harmonia** — Music theory intelligence platform. Interactive fretboard, chord analysis, AI composition tools. **IN ACTIVE BUILD** — Phases 0–2 complete (five theory engines tested, design system v1.1 locked), Phase 3 (fretboard visualizer) current. See HARMONIA_MASTER_PLAN.md. Freemium SaaS.

**Memento AI** — AI-generated life-event slideshows and presentations. Wedding, memorial, milestone verticals. Pay-per-project + subscription.

**Soul Tiger** — Multi-tradition oracle and symbolic profile system. 20+ calculation engines. Astrology, numerology, tarot, and more. $29/month membership. Domain: soul-tiger.com (owned).

**Let's Agree** — AI-drafted plain-English mutual agreements with e-signature. Requires UPL attorney review before launch.

**Time Tamer** — Intelligent timer, streak, and deadline coordination platform. Freemium productivity SaaS.

**Passport** — Travel collection and dream scrapbook. 50 states, national parks, breweries. Freemium + print.

**Luminary Arts** — AI calligraphy, portrait, animation, and print commerce.

**CredVault** (formerly filed as future-state) — Credential/license management for multi-state practitioners. **NEW: a friend in US Navy IT has requested a white paper to vet the idea with his team — a THIS-MONTH writing task, parallel to the Provenance white paper.** No build commitment yet; the white paper is the gateway.

**Life Ledger** — Read-only Gmail audit that finds every recurring expense, renewal, trial, and obligation hiding in your inbox, delivers a beautiful exportable report, and deletes all raw data afterward. Target: self-employed solopreneurs and microbusiness owners on Gmail. Revenue: $49–$69 one-time report + quarterly rescan subscription. Founder is the target customer — validate on own inbox as a concierge test before building. CASA security assessment required before public launch (~2–6 weeks external dependency). Design-quality report is the moat. Build complexity: Medium. Portfolio slot: ahead of NeurōTone.

**GrantPilot** — AI grant operations platform. Turns a nonprofit's institutional knowledge into funder-specific, review-ready grant drafts and a managed grant calendar. First client and pilot vertical: PURRR. **Strategy locked: build on spec as a well-developed prototype, demo to Ken/Tanya as a functional model, sell from strength.** Human review gate is mandatory and architectural. Phase 1: PURRR-only client build. Phase 2: Animal Rescue vertical SaaS. TOP-OF-LIST alongside PURRR engagement.

**Provenance** — AI-first nonfiction authoring platform. Source-grounded writing engine that prevents AI hallucination in academic and serious trade nonfiction. Scott's own book (*Art in the Atomic Age*) is the founding use case. **NEW: a friend with a publisher deal has agreed to show Scott's book-series white paper to his publisher — the white paper (a document, not a build) is a THIS-MONTH writing task.** Platform build decision follows the publisher's reaction. Domain: TBD (trademark search required).

### Personal / Non-Portfolio Projects

**Joe's Companion** — Gift project for Joe Wrobel (Scott's closest friend, 89, recovering from heart surgery, lives alone in Greenville SC). A conversational AI companion — "a book that talks back" — built on a deeply personalized Claude system prompt around Joe's real life: poet, Shakespearean actor (King Lear, Upstate Shakespeare Festival 25+ years), retired English professor, Mystery School participant, reader of Jung/Campbell/Crowley/Shakespeare. Secondary: Today view (date, tasks, meds) + Manage screen for Scott to update remotely. Not a memory aid in the clinical sense — a stimulating intellectual partner that quietly archives his life as it surfaces in conversation. No revenue model; managed outside the SaaS sequence.
Stack: studio standard EXCEPT **Vercel Postgres (Neon) instead of Supabase** — a sanctioned §24 deviation (Supabase free-tier pausing unsuitable for a zero-revenue personal app; Neon's free tier is persistent and lives inside Vercel). Repo: ArchipelagoInternationalInc/joe-companion — **must be Private before personal data is seeded.** Delete the abandoned Supabase project.
**HARD DEADLINE: Scott visits **

### Client Work

**PURRR Adoption + Sanctuary** — Cat rescue nonprofit, Oakland Park FL. Founded by Dr. Tanya Heller (close friend of Madelyn's). Currently spending ~$5,000/month on outside social media agency. Ken (Tanya's fiancé, ad agency background) is driving a full digital overhaul. **Status: very likely becoming a paying client, expected to fund advancement of other projects. Everything PURRR-related moves to the top of the to-do list. Flightdeck's client portal is Phase 1 of the client experience.** See separate PURRR handoff document for full context.

**Rabbi Simcha** (name used loosely) — Existing client with a 10-year-old WordPress site requesting a rebuild. Budget ~$2,500 project + ~$25-50/change. First paid client project on the new stack.


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
