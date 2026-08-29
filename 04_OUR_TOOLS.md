# 04 — OUR TOOLS
*Archipelago Studio Kit v2 · The settled stack. These choices are made; nobody relitigates them without new facts and an owner ruling. All subscriptions on the Archipelago card, spending caps ON wherever they exist.*

---

## The filing cabinet — GitHub
Where all work and its history live. **One account: ArchipelagoInternationalInc (archipelagointernational@proton.me).** Every project is a repository (a folder) there; every reports notebook too. The account check in file 02 exists to make sure work never lands anywhere else. Master copies of documents live here; anything elsewhere is a photocopy.

## Putting sites on the internet — Vercel (Pro plan)
Takes a project from the filing cabinet and serves it to the world as a website. Watch for: its error messages sometimes point at paid fixes for problems that are actually free settings — read carefully before buying anything.

## Accounts and data — Supabase (Pro plan, one organization)
Handles user sign-ins and stores each product's data. Only products that truly need accounts or saved data get a Supabase project. **The lock rule, always:** every table of data is locked so each user can see only their own information; where a table is meant to be reachable by no user at all, that lock is the absence of any key — and every lock is *tested*, by trying to break it, against the real database.

## The heavy-lifting room — Railway
Runs the programs too heavy for Vercel (document engines, converters, background workers). One shared studio account; each project gets its own service inside it. Proven pattern: the website on Vercel talks to its engine on Railway over a private password.

## The keychain — Doppler
Holds every secret (passwords, keys) so no one ever pastes them by hand. Three compartments per project: **dev** (this Mac only), **stg** (the private preview site), **prd** (the live site — untouched until launch). Doppler feeds Vercel automatically, one narrowly-scoped connection per project.

## Money in — Stripe
Payments. Wire it per product; go-live is a deliberate human decision, never automatic. Watch for: Stripe's setup pre-selects paid add-ons that solve problems we don't have (one adds 3.5% to every sale forever). **Vendor-defaults rule, all tools:** when a platform recommends something during setup, ask two questions — what does this cost forever, and does the problem it solves exist here?

## Mail out — Brevo and Resend
Send the emails products need (sign-in links, receipts, newsletters). Thin and swappable by design; tracking stays off for transactional mail. Note: Resend's free plan holds one domain, currently taken by SendMyLicense — new products use Brevo unless ruled otherwise.

## Names and addresses — Cloudflare
Where our web addresses (domains) are registered and pointed. Auto-renew on, and mail-related records in a zone are never touched casually.

## The megaphone and the paintbrush — Blotato and Higgsfield
**Blotato** schedules and publishes social media posts (one studio login serving LivingBrush, Madelyn Greco, and client brands; everything queues for Madelyn's approval before it fires). **Higgsfield** creates visuals (paid up for a year — use it freely). Distribution and creation, complementary, not rivals. Exception on record: products with a no-AI-art design rule don't use Higgsfield imagery.

## The minds — Claude
One shared account. The PM seat and design thinking run in Claude chat; building runs in Claude Code; the content factory runs in Cowork; technical chores run in cheap throwaway chats. Products that need AI inside them call the Claude API (the pay-per-use service) with a per-project key and a monthly limit.

## The websites themselves
Built on the studio's standard modern web toolkit (Next.js and friends). For marketing and portfolio sites that want rich motion, the approved extras are Vite, ScrollTrigger, and Lenis — never added to the product apps, which stay lean.
