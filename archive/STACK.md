# STACK.md
## Archipelago International Studios — Account & Access Map

*Quick reference. For the reasoning behind these patterns, see `PORTFOLIO_ARCHITECTURE.md` Sections 3, 5, and 5a. This file is the fast lookup; that file is the source of truth for "why."*

*Last updated: June 2026*

---

## How to use this file

When you need to know "who owns this account" or "where's the login" — look here first. When you're setting up a *new* project and need to know the pattern to follow — read the architecture doc.

Update this file the same day you create or change any account. Stale access docs are worse than no docs — they create false confidence.

---

## Active Shared Resources

| Resource | Account holder | Madelyn's access | Login location | Notes |
|---|---|---|---|---|
| GitHub | Archipelago org | Member | GitHub (own account, org membership) | One repo per project |
| Vercel | Archipelago team | Team member | Vercel (own login, team membership) | Auto-deploys from GitHub |
| Supabase | Archipelago org | Member | Supabase (own login, org membership) | Separate project per app |
| Cloudflare | Archipelago account | _Set up needed_ | LastPass shared folder (check seat limits) | DNS, R2, Registrar |
| Stripe | Archipelago account | _Role TBD_ | Stripe (team member invite) | Scope role — not full Admin by default |
| Cal.com | Archipelago account (new) | Co-owner | Cal.com (team member invite) | madelyngreco.com bookings; expect more event types later |
| Blotato | Archipelago account | Team member | Blotato (team member invite, if supported) | Via PURRR client work currently |
| Resend | Studio account | _Set up needed_ | LastPass shared folder | Separate sending domain per project |
| Brevo | Studio account | _Set up needed_ | LastPass shared folder | Separate list per project, never mixed |
| Anthropic Console (API) | Archipelago account | _As needed_ | LastPass shared folder, or own console login if she creates project keys | Not needed for Claude Code/Claude.ai — those run on her own Pro plan |
| Sentry | Archipelago org | _Set up needed_ | Sentry (own login, org membership) | |
| Plausible | Studio account ($9/mo) | _Set up needed_ | LastPass shared folder | |
| Proton Duo | Scott + Madelyn | Full — already shared | Proton (own login) | Existing, unchanged |
| LastPass | Scott + Madelyn | Full — already shared | LastPass (own login) | The credential vault itself |

**Legend:** "Set up needed" = exists but Madelyn's access hasn't been added yet. "Role TBD" = needs a quick decision on permission level, not just yes/no access.

---

## Per-Project Accounts (created fresh for each new project — see Architecture doc Section 1)

Not tracked here individually — each project's own `README.md` or `PROJECT_BRIEF.md` lists its specific Supabase project name, Stripe Product IDs, Resend sending domain, etc. This file only tracks the *shared studio-level* accounts above.

---

## Watching / Not Yet Set Up

These tools are anticipated for future use but have no account yet. Don't create one until a project actually needs it.

| Tool | Likely use | Status |
|---|---|---|
| Higgsfield.ai | AI video generation (Cat Nation News, Somnific) | Watching |
| HeyGen | AI avatar/video generation | Watching |

---

## Explicitly Not Used (so it doesn't get re-proposed)

- **Notion** — evaluated June 2026, not adopted. Documentation stays in-repo markdown.
- **Linear** — evaluated June 2026, not adopted. Task tracking stays in GitHub Issues per repo.

---

## Action Items From This Setup

- [ ] Add Madelyn to Cloudflare (check if current plan supports multi-user seats; if not, add Cloudflare login to LastPass shared folder)
- [ ] Decide Madelyn's Stripe role (Admin / Analyst / custom-scoped) — likely scoped, not full Admin
- [ ] Create the shared Cal.com account, add Madelyn as co-owner, build her madelyngreco.com event type first
- [ ] Confirm Blotato supports multi-user team seats; if not, add to LastPass
- [ ] Add Madelyn to Resend, Brevo, Sentry, Plausible (or LastPass-share where no team-seat option exists)
- [ ] Once done, delete the checked-off items above and keep this file as pure reference
