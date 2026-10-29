# WORKFLOW AMENDMENT 02 — Venue Selection & Visual Verification
## Amends 03_AI_DEVELOPMENT_WORKFLOW.md · Drop in the starter kit beside it. Where they conflict, this file wins.
### Source: the LivingBrush build (July 2026) — full premium site with redot/cipher-grade motion, built and design-locked in one single-seat agentic session, browser-verified at every pass.

## 1. The three-role model gains a second mode

The kit's PM-chat → Builder relay remains the default for **product work** (SaaS apps, repos, anything with tests and git history). Add a second sanctioned mode:

**Single-seat mode (Cowork or equivalent agentic session):** executive direction and building happen in one session with one context. The human directs like a creative director; the model specs, builds, verifies, and presents finished passes. No prompts are hand-carried between windows; documents in the workspace are the interface.

**Choose single-seat when** the work is taste-dense and iteration-heavy: design-locked marketing/legacy sites, motion engineering, design systems, content harvesting/migration, research-plus-build hybrids, anything judged by looking at it.
**Choose PM → Claude Code when** the work is a living codebase: schema, auth, tests, branches, CI, deployments, long-lived multi-session repos.
**The method travels either way.** Single-seat is a venue, not a doctrine — everything in §2–3 applies verbatim inside Claude Code sessions too.

## 2. The visual verification loop (mandatory, both modes)

> **Screenshot or it didn't happen.**

Any session that touches UI must, before reporting done: run the page in a real browser (headless is fine — Playwright screenshots in the sandbox/repo), capture every state it changed (multiple scroll positions, interaction states, 390px mobile, prefers-reduced-motion), confirm zero console errors through a full interaction cycle, and fix what the screenshots reveal *before* presenting. A Builder that cannot render must say exactly which states went unverified. Add to every UI task's acceptance criteria: "attach the screenshots."

This single rule is most of why 'chat design tools' historically underdelivered on animation: no closed loop between the code written and the pixels produced. Close the loop and the venue stops mattering.

## 3. The design-phase discipline (proven sequence for any high-craft surface)

1. **Spec before code.** Motion and design intent written as numbers (durations, easings, staggers, triggers) in a MOTION_SPEC.md the human approves. "Like ⟨reference site⟩" is input, never the spec.
2. **One module at a time; never regenerate a working file wholesale.** Approved modules are design-locked: tokens and motion values frozen; routine work flags rather than fiddles.
3. **Placeholder discipline.** Design first; art exported to the design. Every image slot renders its own filename + exact export dimensions; assets drop in by filename with zero code changes; an IMAGE_EXPORT_SPEC.md tracks every slot.
4. **Facts live in data.** Copy, dates, titles in arrays/frontmatter; corrections fix the source so errors cannot resurface. Spelling/caps pass on every content file touched.
5. **Handoff is a deliverable.** The phase ends with a HANDOFF.md a lesser model can execute safely: what's locked, what's open, what's mechanical.

## 4. The SaaS two-track pattern

Every product ships two surfaces with different physics:

| | Marketing site | The app |
|---|---|---|
| Job | Elevate perception; convert | Perform the function |
| Motion | One theatrical, spec'd moment; §3 discipline | Micro-interactions only: 150–250ms, two easings, press/hover/focus states, skeleton loads — motion as feedback, never spectacle |
| Venue | Single-seat (or Code + §2–3) | PM → Claude Code, kit discipline |
| Stack | Static HTML or static-export Next.js; host anywhere | Whatever the product needs; mobile-first |
| Lock | Design-locked, then rarely touched | Continuously developed |

**Connective tissue (required):** one shared `tokens` file — color, type, radii, spacing, easing/duration — imported by both surfaces, so the brand reads as a single object. The marketing site may exaggerate the tokens; it may not contradict them.

## 5. Model economics (unchanged in spirit, sharpened)

Top-tier model hours go where taste and judgment concentrate: the motion spec, the signature moments, the design system, art-direction passes against real assets. Everything mechanical — image drops, copy fills, SEO, deploys, CMS wiring — rides on the HANDOFF.md with lesser models. The handoff doc is what makes the economics work; write it while the top model still holds the context.
