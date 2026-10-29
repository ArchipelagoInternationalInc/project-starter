# WORKFLOW AMENDMENT 03 — Reference-Driven Visual Iteration & Perceptual Calibration
## Amends 03_AI_DEVELOPMENT_WORKFLOW.md and extends AMENDMENT 02. Drop in the starter kit beside them.
### Source: the NeurōTone silk-signature session (July 2026) — a taste-dense ambient-animation problem taken from wrong to signature in one evening, on a strict premium-model budget, converging only after the rules below were discovered.

---

## 1. The Anatomy Protocol (how to direct visual work from references)

**Adjectives don't transmit. Anatomy does.** "Subtle," "soft," "premium," "like ⟨site⟩" each produced a wrong build. One sentence of *anatomy* — "sand-dune bands: one hard edge, gradient trail on the other side, the group follows the cursor" — produced the right build in a single pass.

Before any code, the session writes a **REFERENCE_ANATOMY block** and the owner confirms it:

```text
GEOMETRY:   what are the shapes literally? (bands / arcs / streamlines / particles)
EDGES:      hard, soft, or mixed — and which side is which?
SCALE:      how much of the viewport do they occupy? how thick?
MOTION:     how far do forms travel in 5 seconds? (compare two moments)
BEHAVIOR:   what responds to the user? (cursor, scroll, nothing)
PALETTE:    luminance-led or hue-led? saturated or tinted?
RELATION:   does content sit over it, beside it, or between forms?
```

**Rule: two moments minimum.** A single screenshot of an animation hides amplitude and true geometry. Ask the owner for captures at two different instants (or capture them yourself); the *difference* between frames is the spec.

**Rule: corrections come as nouns.** When a pass misses, the owner names what differs anatomically ("thicker / slower / edges too hard / occupies too much left side"), never re-sends adjectives. One anatomy correction ≈ one convergent pass.

**Legal/brand posture (unchanged, now proven productive):** references supply anatomy and feel; implementation, palette, and content are original. The constraint is not a tax — the distinctive final result came *from* translating anatomy into our own system rather than imitating pixels.

## 2. Perceptual Calibration (the builder-display / owner-display gap)

The most expensive failure mode of the session: art that measured "present" in the sandbox read as **invisible** on the owner's screen — three times. The fix that held:

- **Numbers are the referee.** Every visual pass reports measurements, not vibes: field luminance mean + peak (cropped away from text), pixel-diff between frames 3–5s apart (proves motion), pixel-diff after a simulated cursor move (proves interactivity).
- **Set numeric bands, then let eyes fine-tune.** For dark-theme ambient art under light text: field peak **60–90 / 255** — below ~45 it vanishes on real displays; above ~110 body-text contrast is at risk. Establish the equivalent band for any new perceptual quality the first time it's disputed, and write it down.
- **One luminance-affecting variable per pass.** Alpha, saturation, and global dimming compound; changing all three at once overshot straight past the target. Perceptual qualities iterate single-variable.
- **When the builder's own preview degrades, switch to numeric verification and say so explicitly** — name exactly which quality remains human-eyes-only, and attach the render. Never present an unviewed build as seen.

## 3. Engineering rules for generative / interactive graphics

- **Continuity law:** displacement and deformation fields must be continuous everywhere — no `sign()`, no branches, no snapping inside per-point math. Every discontinuous operation manufactures angular artifacts ("buckling"). When such a bug appears, fix the *class* (remove the discontinuity), not the instance.
- **Contrast is a system, not a color pick.** Accessible text-over-art requires the stack, not any single part: (1) measured luminance ceiling on the art, (2) a uniform dim pass on the art layer only, (3) a text-shadow underlay on all copy, (4) high-alpha bold type. Design all four together from the start.
- **Ship knobs, not values.** Every generative element lives in one self-contained file with 3–5 named tuning constants at the top (`INTENSITY / SPEED / FOLLOW / …`) and comments encoding the concept. Success test: the owner or a cheap model can execute a plain-language note ("a bit richer, slightly slower") as a constants edit — no premium model, no original context.
- **Safety defaults are part of the spec, always:** reduced-motion renders a composed static frame; loops throttle (~30fps) and pause on hidden tabs; oscillation periods stay far from photic ranges; DPR capped.

## 4. Pass economics on scarce premium-model budget

- **One concern per pass.** Geometry, then visibility, then interaction, then polish — never two at once. Mixed-concern passes read as "wrong" without revealing which change failed.
- **Every pass ends with the artifact link.** Package + present is part of the pass, not an afterthought; a build the owner can't download is a pass that didn't happen. (Learned by missing one.)
- **Pre-approved tweak lists:** when the owner is content-but-not-done, encode remaining notes as exact values in the docs ("hairlines .22 → .28") marked pre-approved. The next session — any model — applies them without discussion.
- **The last ~10% of any premium window buys documents, not tweaks.** A design-system guide, a supersession/reconciliation ruling, session learnings, and a paste-ready next-session brief outlive every marginal pixel adjustment. This amendment exists because that rule was followed.

## 5. Generational supersession ritual

When a session produces a **new design generation** that replaces earlier direction docs, write the reconciliation before the window closes: which document wins on conflict, what survives untouched (usually everything non-visual: strategy, copy, compliance, task logic), which tasks are superseded *as written* but survive *in intent*, and where retired work becomes a **module library** (lift pre-built, verified components; don't rebuild them). Two packets with no ruling between them will cost a future session more than the ruling costs now.

## 6. The convergence loop, named (extends Amendment 02 §2)

```text
ANATOMY (owner-confirmed) → BUILD (one concern) → MEASURE (numbers) →
SCREENSHOT (owner's eyes) → NOUN CORRECTION → repeat
```

Amendment 02 gave the studio "screenshot or it didn't happen." This session adds the two missing halves: **anatomy in** (so the first build starts near the target) and **numbers alongside the screenshot** (so builder and owner argue about measurements, not memories of different monitors). With all three, a taste-dense visual problem converged in one evening that adjectives alone would never have finished.
