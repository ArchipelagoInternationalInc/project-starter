# PLATFORM REFERENCE CARD
*Companion to Studio Kit v3 — reference, not rules. These are the specific traps our platforms have already sprung on us, written down so no project pays this tuition twice. Builders: consult this before any deployment, domain, email, or webhook work.*

---

## Vercel (website hosting)
- On some plans, automatic deployments are **blocked when the saved work's author isn't linked to the team** — while manual deploys from the dashboard sail through, which makes the evidence look contradictory. If deployments block, check the author identity first (kit file 02's account check) and read Vercel's stated reason word for word.
- A **"Blocked" deployment cannot simply be redeployed** — nothing was ever built; the cause must be fixed and the work pushed again.
- **Plan upgrades can silently switch on deployment protection**, putting a login wall in front of the public site. After any plan change: the stranger test (private window, logged out).
- Its error messages sometimes point at paid fixes for problems that are free settings.

## Cloudflare (domains)
- Records that point at Vercel must be **"DNS only" (the gray cloud), never proxied (orange)**.
- After a domain change, the **security certificate for the bare domain can lag several minutes** behind everything looking valid. Verify the certificate itself, not just the settings.
- Mail-related records in a zone are never touched casually — they carry other services' email.

## Resend (email sending)
- There is **no separate SMTP password — the API key IS the SMTP password.**
- Webhook deliveries should target a web address that **never redirects**; automated POSTs may refuse to follow a redirect.
- The free plan holds **one domain**, currently occupied by SendMyLicense's mail domain.

## Supabase (accounts and data)
- Its **built-in email sender is rate-limited and unfit for real users** — wire a real mail service before any real signup.
- The **redirect allow-list must contain every address a sign-in link might return to** — old and new hosts both, during any migration, until the new one is proven.
- **Shared dev/production databases are a standing hazard**: they demand a seed guard, a freeze on structural changes, and a scheduled split into separate projects. Splitting is a pre-launch gate.
- **Append-only audit tables need one narrow, audited exception** — or true account deletion becomes impossible.

## Stripe (payments)
- Onboarding **pre-selects paid add-ons** (one adds 3.5% to every transaction forever) solving problems a US-only business doesn't have. Deselect deliberately.
- Going live is always a deliberate human flag, never a side effect.

## Migrations of any kind (domains, email, hosts)
Write the ordered runbook first, with the reason for each step's position. The proven shape from the SendMyLicense domain move: teach the sign-in system the new address **before** flipping the site to it; keep the old address valid until the first success on the new one; point webhooks at the host that never redirects; lock the old host only after nothing links to it anymore. The Builder states, at every pause, what it has deliberately not done yet.

## Cloud Builders (rented machines)
- **They are walled off, and the wall moves.** A cloud machine may be blocked from the database, the live site, or both — and the block can appear partway through a session that was working an hour earlier. The honest sentence is "not visible to me," never "it doesn't exist." The checking script reports such checks as CANNOT-RUN.
- **Connections go stale after account changes.** A tool that worked yesterday can come back needing re-authorisation, and an automated session cannot do that itself; the symptom is a tool suddenly *refusing* rather than failing. Reconnect every integration after any account or plan change.
- **A repository's guards only protect the branches that have them.** After installing any guard or hook, confirm it exists on the branch people actually work from; a guard on an unmerged branch is decorative.
- **The checking script and the Mac's shell.** The Studio Mac's built-in shell may be an old version; run `bash --version` once per machine and test the checking script there before any project relies on it.
