# 04 — OUR TOOLS
*Archipelago Studio Kit v3 · The settled stack. These choices are made; nobody relitigates them without new facts and an owner ruling. All subscriptions on the Archipelago card, spending caps ON wherever they exist.*

---

## The filing cabinet — GitHub
Where all work and its history live. **One account: ArchipelagoInternationalInc (archipelagointernational@proton.me).** Every project is a repository (a folder) there; every reports notebook too. The account check in file 02 exists to make sure work never lands anywhere else. Master copies of documents live here; anything elsewhere is a photocopy.

## Putting sites on the internet — Vercel (Pro plan)
Takes a project from the filing cabinet and serves it to the world as a website. Watch for: its error messages sometimes point at paid fixes for problems that are actually free settings — read carefully before buying anything.

## Accounts and data — Supabase (Pro plan, one organization)
Handles user sign-ins and stores each product's data. Only products that truly need accounts or saved data get a Supabase project. **The lock rule, always:** every table of data is locked so each user can see only their own information; where a table is meant to be reachable by no user at all, that lock is the absence of any key. **Every lock is tested by trying to break it** — a second account attempting to read, change, and delete the first account's data, with a control test proving the lock isn't simply refusing everyone. **That test runs against a throwaway database** — a local one created fresh for the test, or a disposable copy of the project deleted afterwards. **It is never pointed at the live project.** Lock tests create records that cannot be removed; one careless run permanently contaminates real customer history.

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

## The media library — Google Drive
Every social-media client has one folder tree in the shared `Archipelago STUDIO` Drive: `01 Inbox` (where client material lands), `02 Working`, `03 Approved`, `04 Posted`, by month. A file moves forward through those stages, never sideways. **Humans don't handle the library; Claude does.** Client photos arrive by email and the Studio Head files them; Madelyn's Claude reads and writes the folders from her account; at publish time Claude hands the file to Blotato directly. Nobody needs a public link from Drive, and nobody opens a storage tool by hand. Cloud storage buckets (Cloudflare R2, AWS) are for serving a *website's* media at scale, not for the library.

## The megaphone and the paintbrushes — Blotato, Higgsfield, ChatGPT
**Blotato** schedules and publishes social media posts: one studio login serving LivingBrush, Madelyn Greco, and client brands. **Only Claude talks to Blotato**; Madelyn approves from her phone in her Claude, and that approval is what puts a post in the queue. Blotato's own history and analytics are the studio's record of what was posted and how it performed. **Higgsfield** creates still and video visuals (paid up for a year — use it freely). **ChatGPT Plus** on Madelyn's account is the video room: turning stills and raw footage into short video, a workflow already proven. Exception on record: products with a no-AI-art design rule don't use generated imagery.

## The record and the dashboard — per client
Three things, all maintained by Claude: the Drive folders (which asset is at which stage), a **Content Log** sheet in Drive with one row per post (date, platform, asset, caption, approved by, result) — nothing enters the Blotato queue without its row — and Blotato's own history. A published **client dashboard** (Claude's Dashboard page) reads from those three and shows the posting calendar, what's queued, what's posted, and how it performed, with its refresh time visible on the page. One link for the client; nothing for them to log into.

## The minds — Claude, two accounts
**Scott's account (Max):** the Studio Head (Claude Duet) and the cloud Builders run here; so do Consultant chats. **Madelyn's account (Pro):** the content factory, with her own memory and her phone, and the same Blotato, Higgsfield, and Drive connections. Two accounts because memory and chat history are per account: one shared account would blend her content work into the Studio Head's view of the studio and compete with it for usage limits. Shared truth lives in GitHub and Drive, so nothing is lost by the split. Technical chores run in cheap throwaway chats. Products that need AI inside them call the Claude API (the pay-per-use service) with a per-project key and a monthly limit.

**Which model a Builder runs on:** the cheapest tier that gets the checking script green. The Studio Head starts each Definition of Done on the cheapest tier and moves up one tier only when a stretch hits its iteration cap or the reviewer rejects the same thing twice. Model names change every few months and are never written into this kit; the rule is the tier and the test, not the name.

## Shared logins — the vault
Every shared login (Blotato, Higgsfield, GitHub, Supabase, Vercel, Doppler, Cloudflare, and the rest) lives in a shared password-manager vault that both Scott and Madelyn use. Secrets never travel through chat; a secret that passes through a transcript is rotated.

## The websites themselves
Built on the studio's standard modern web toolkit (Next.js and friends). For marketing and portfolio sites that want rich motion, the approved extras are GSAP (with ScrollTrigger and MotionPath), Vite, and Lenis — never added to the product apps, which stay lean. A project's own rules may ban an alternative on purpose; a Builder does not "correct" that.
