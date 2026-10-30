# AMENDMENT 01 — Design & Scope (supersedes conflicting parts of ARCHITECTURE.md, CLAUDE.md, MASTER_PLAN.md)

Drop this file in the repo root. Builder sessions: read CLAUDE.md, SESSION_HANDOFF.md, then THIS FILE. Where this file conflicts with earlier packet documents, this file wins.

## 1. Information architecture — two wings
The site has two conceptual wings under one domain (daatinstitute.net):

- **The DA'AT Institute wing** (`/` root sections): death awareness, rituals, library, teaching/trainings, books on death & afterlife.
- **The Simcha Raphael wing** (`/simcha/...`): the person — bio & résumé, transpersonal psychotherapy practice, spiritual direction, poetry/personal writings, and offerings unrelated to death work. Content from simcharaphael.com and transpersonaltherapy.net that doesn't belong to the Institute lands here rather than being forced into Institute sections.

Homepage introduces both wings. Nav: Institute sections + one clearly styled "Simcha Raphael" entry for the personal wing.

**Wayfinding signature:** wherever the site speaks as the person (personal wing headers, his name on the homepage), the display name "Simcha Raphael" carries the soft spectral ("rainbow") gradient treatment via background-clip — muted pastel spectrum, never saturated. Institute wing never uses it.

## 2. Design language v2 (replaces v1 tokens where they conflict)
- Atmosphere: sky gradient `#D9E9F6 → #F7FAFC → #FAFAF7` (top-of-page headers, homepage sky)
- Ground: beige/sand `#EFE9DC` (callouts, alternating section bands, footer base)
- Ink `#1A1A18`; secondary `#4A4A44`; accent deep blue `#2C4E6B`; gold `#B9A15C` reserved for sefirot glow, hairlines, and small accents
- Green from v1 mock: retired.
- Type: display serif for titles (Fraunces stays unless Scott swaps); **body prose in a true reading serif (Source Serif 4)** at ~66ch measure, 1.7 line-height; UI/captions in a quiet sans (Inter or Karla)
- Text-page furniture: hairline horizontal rules between entries; callout blocks = left rule + beige wash + slight indent; generous vertical rhythm. This site is a reading instrument first.
- Overall register: international-nonprofit restraint. Subtle, reserved, grid-disciplined. Homepage is the only place with theatrical motion.

## 3. Motion stack — GSAP replaces framer-motion (site-wide)
- Libraries: **gsap + ScrollTrigger** (free tier now includes all plugins). No framer-motion anywhere.
- Generic reveals are data-attribute driven so pages never hand-roll animation:
  - `data-reveal="up|left|right"` (+ optional `data-delay`) → fade/slide on enter, once, ~0.7s, ease "power3.out", 24–48px
  - `data-parallax="0.1–0.35"` → scroll-linked translateY, transform-only
  - `data-stagger` on a parent → staggers child reveals at 0.08s
- One module `/lib/motion.ts` initializes all of it; `prefers-reduced-motion` disables everything (content visible, no transforms). Non-negotiable.

## 4. Homepage cinematic — "Clouds to Tree of Life"
Reference grammar: aerodynamics.nl (scene resolution), executed on load rather than deep scroll-scrub:
1. Layered cloud PNGs (3–4, transparent, Scott-supplied) drift laterally at different speeds over sky gradient.
2. ~1.5s in: clouds part/thin (scale + opacity + lateral drift apart); sky resolves blue → white-blue.
3. Tree image (clean transparent-bg photographic layer, Scott-supplied) fades up from below with slight scale-settle.
4. Sefirot lattice — **rebuilt as SVG in code, not the old raster** — draws itself: paths stroke-draw (~1.2s), then ten nodes bloom with soft gold glow, small stagger, no labels/callouts.
5. Settle state: tree layer has 12s CSS sway ±0.5°; lattice glow breathes very slowly; gentle parallax between tree/lattice/sky on scroll.
- Total ≤5s; any scroll skips to settle state; reduced-motion renders settle state statically.
- Asset slots: `/public/hero/cloud-1..4.png`, `/public/hero/tree.png` (placeholders until Scott's art arrives; sefirot SVG proportioned from `tree-img.png` reference in `/content-source`).
- Rainbow name "Simcha Raphael" appears in the hero lockup beneath/beside the Institute title per Scott's layout call.

## 5. CMS — in scope (reverses "no CMS" ruling; Simcha has decided)
- **Keystatic** (git-based; fallback Decap if Keystatic fights the static export). Admin at `/keystatic`, GitHub-backed.
- Editable collections only: **Articles**, **Events**, **Books** (title, date, body, optional single image, Amazon URL for books). All other content code-locked.
- Every publish = Markdown commit → Vercel rebuild (~2 min to live). Content therefore never exists outside the repo: CMS strengthens, not weakens, the archival guarantee.
- Image uploads land in `/public/uploads/` with size guidance in the editor description.
- Add MASTER_PLAN Phase 5.5: CMS install, collections config, auth (GitHub user for Simcha or token flow), and a one-page illustrated how-to doc written for Simcha.

## 6. Content reconciliation note
The two-wing IA changes several canonical rulings: transpersonal/simcharaphael pages previously marked duplicate-losers may now live legitimately in the personal wing. At Phase 4, re-check OVERLAP_REPORT.md conflicts against wing assignment before deleting anything (rule stands: nothing silently discarded).

## 7. Unchanged
Static export, Vercel + Cloudflare, Brevo, YouTube lite-embeds, redirects, archival zip, 10-year domains, slot/placeholder image convention (Scott supplies transparent PNGs), all session discipline and boundaries in CLAUDE.md.
