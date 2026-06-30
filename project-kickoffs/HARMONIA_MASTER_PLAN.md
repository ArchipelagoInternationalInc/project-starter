# HARMONIA — MASTER BUILD PLAN

**The durable, end-to-end roadmap for building Harmonia.**
This file exists so the plan never lives only in a chat's memory. If any planning conversation ends, a new Claude (or Scott alone) reads this file and knows exactly what is done and what remains.

**Storage:** project-starter repo (universal docs) AND a copy in the harmonia repo root alongside CLAUDE.md and SESSION_HANDOFF.md.
**Last updated:** June 28, 2026
**Status legend:** ✅ done · 🔨 in progress · ⬜ not started

---

## HOW TO USE THIS FILE

This is the WHOLE ROAD. It is not the detailed per-session prompts — those are written one at a time by the project-manager Claude in the browser. This file is the roadmap those prompts follow.

The three anchor files work together:
- **MASTER_PLAN.md** (this file) — where we're going, all the way to launch.
- **SESSION_HANDOFF.md** — where we are right now, updated every session.
- **CLAUDE.md** — the rules and conventions for working on this project.

**If a planning chat dies:** open a new chat, paste this file plus the current SESSION_HANDOFF.md, and say "You are my project manager for Harmonia. Here is the master plan and the current state. Pick up where we left off." The new Claude is instantly current.

---

## THE PRODUCT IN ONE PARAGRAPH

Harmonia is a music theory intelligence platform. It translates the mathematics under music — scales, modes, chords, harmonic tension, voice leading, alternate tunings, world rhythm systems — into interactive visual tools and AI coaching, for musicians and composers who understand music intuitively but lack deep theory knowledge. Built on the Archipelago studio stack (Next.js 14, TypeScript, shadcn/ui, Tailwind, Supabase, Stripe, Vercel, Cloudflare, Tone.js, Anthropic API). Freemium SaaS. The defensible moat: alternate-tuning support, world music systems, and AI-coached harmonic journey planning — a combination no competitor has.

**Design DNA (locked v1.1):** deep aubergine/wine atmospheric backgrounds, gold reserved for H1 and accents, white ADA-compliant body text, gradient-transition elements (no flat fills), glassmorphic cards with glow and fine outlines. Warm, premium, musical — the Syncra aesthetic warmed toward gold and red.

---

## PHASE 0 — FOUNDATION ✅ COMPLETE

- ✅ 0.1 Next.js 14 project scaffolded, repo created and pushed (ArchipelagoInternationalInc/harmonia)
- ✅ 0.2 Anchor files created (CLAUDE.md, SESSION_HANDOFF.md)
- ✅ 0.3 Folder consolidation (merged stray Harmonia-SaaS into canonical harmonia)
- ✅ 0.4 Accept-edits mode enabled and saved per project

---

## PHASE 1 — THE THEORY MATH ENGINE ✅ COMPLETE

Pure TypeScript, no framework dependencies, in lib/theory/. Each module tested by printed output before advancing. The invisible brain everything else reads from.

- ✅ 1.1 scaleEngine.ts — 15 scales as interval arrays, generateScale(), resilient ok/error pattern
- ✅ 1.2 chordEngine.ts — 20 chord types, inversions, slash/diatonic chord derivation
- ✅ 1.3 intervalEngine.ts — semitone math, interval naming, transposition (note/chord/sequence)
- ✅ 1.4 tensionEngine.ts — chordTensionScore() 0–100, sequenceTensionCurve(), heuristic & tunable
- ✅ 1.5 fretboardEngine.ts — any tuning, any string count, parseTuning(), notesOnFretboard()

---

## PHASE 2 — DESIGN SYSTEM ✅ COMPLETE

- ✅ 2.1 shadcn/ui installed, Tailwind tokens configured
- ✅ 2.2 Design system v1.1 — aubergine/wine background, gold H1, white ADA body, gradient elements, glassmorphism, WCAG AA verified

---

## PHASE 3 — THE VISIBLE INSTRUMENT (CURRENT PHASE) 🔨

The moment Harmonia becomes real on screen. Each component reads from the Phase 1 engines and wears the Phase 2 design. Must work on mobile and desktop.

- ⬜ 3.1 **Fretboard visualizer** — interactive SVG fretboard reading fretboardEngine. Configurable tuning (presets + custom text entry), string count, fret count, capo. Highlights scales and chords with scale-degree color-coding (gold root, graduated outward). Responsive. THIS IS THE SIGNATURE FEATURE.
- ⬜ 3.2 **Scale & chord selector UI** — controls to pick root note, scale/mode, chord — driving the fretboard. The main interaction surface.
- ⬜ 3.3 **Piano keyboard visualizer** — SVG keyboard, same highlighting logic, scrollable, plays note on click.
- ⬜ 3.4 **Audio layer (Tone.js)** — play scales and chords aloud; click a note or chord to hear it. Establishes the audio foundation reused later.
- ⬜ 3.5 **Circle of fifths** — interactive navigator, clickable keys, shows relationships and modal interchange.
- ⬜ 3.6 **Tension curve visualizer** — displays sequenceTensionCurve output as a visual arc; the first "intelligence made visible" feature.
- ⬜ 3.7 **Main app layout & navigation** — tie the components into a coherent single-page tool; responsive shell.

---

## PHASE 4 — INTELLIGENCE FEATURES (AI) ⬜

The Claude API layer. Math is always calculated first by the engines; Claude interprets it in human, emotional, stylistic language.

- ⬜ 4.1 **Anthropic API integration** — secure server-side route (keys via Doppler), basic call/response plumbing.
- ⬜ 4.2 **Harmonic journey planner** — user picks start/end/journey-type; engine generates sequence; Claude describes the emotional arc. (Uses tensionEngine.)
- ⬜ 4.3 **Composer advisor** — "What would Bach/Glass/Coltrane do" style coaching on a progression.
- ⬜ 4.4 **Chord progression suggester** — given a chord, ranked next-chord options with explanation.
- ⬜ 4.5 **Modal interchange / borrowed chord suggester.**

---

## PHASE 5 — SONG ANALYSIS ⬜

The "wow" feature that drives signups. Requires a backend.

- ⬜ 5.1 **Audio upload UI** — accept MP3/WAV, size limits, progress.
- ⬜ 5.2 **Python analysis backend** — FastAPI + librosa/madmom; returns key/mode/tempo/chord timeline. (First non-browser backend — deploy on Railway/Render.)
- ⬜ 5.3 **Analysis results display** — scrolling chord timeline synced to playback.
- ⬜ 5.4 **Claude interpretation** — "This song is in A♯ Mixolydian, here's what that means, here are scales to solo with."

---

## PHASE 6 — ACCOUNTS, BILLING, GATING ⬜

Comes late, once the product itself is compelling. Turns it into a business.

- ⬜ 6.1 **Supabase auth** — email + Google OAuth, sign up / log in.
- ⬜ 6.2 **User data** — saved projects, scale/chord/tuning presets, persistence.
- ⬜ 6.3 **Stripe subscriptions** — Free / Pro ($12) / Studio ($25) tiers, Stripe Tax on from day one.
- ⬜ 6.4 **Feature gating** — Supabase RLS enforces tier access (alt tunings, song analysis, AI features = Pro+).
- ⬜ 6.5 **Account & billing UI** — settings, upgrade, cancel.

---

## PHASE 7 — POLISH & LAUNCH ⬜

- ⬜ 7.1 **Landing page** — marketing page, value prop, feature demo, pricing.
- ⬜ 7.2 **Onboarding** — first-run experience, welcome email (Resend).
- ⬜ 7.3 **Responsive/mobile QA** — every component verified on phone and desktop.
- ⬜ 7.4 **Error handling & monitoring** — Sentry, graceful failure states.
- ⬜ 7.5 **Trademark check on "Harmonia"** — before public launch (common word — verify).
- ⬜ 7.6 **Deploy to Vercel production** — custom domain, SSL, live.
- ⬜ 7.7 **Analytics** — Plausible.

---

## PHASE 8 — POST-LAUNCH EXPANSION ⬜ (future, not scoped in detail yet)

Drawn from the full Harmonia spec. Build as traction justifies.

- ⬜ Polymetric sequencer / playground (Tone.js, effects chain) — most complex component
- ⬜ World music systems (300+ scales, maqam/raga/tala, paired rhythms)
- ⬜ Ostinato engine
- ⬜ Vocal harmony calculator
- ⬜ Notation export (VexFlow), PDF tab, MusicXML, MIDI export
- ⬜ Advanced theory: counterpoint, negative harmony, set theory, spectral chords, microtonal
- ⬜ Emotional arc mapper (full version)
- ⬜ Institutional licensing tier
- ⬜ DAW plugin (AU/VST3) — separate major project
- ⬜ Social content engine (theory-secrets-behind-famous-songs)

---

## STANDING WORKING RULES (from the Build Bible)

- One task per Claude Code session. Test output before advancing. Commit AND push every working module.
- Each session starts: "Read CLAUDE.md and SESSION_HANDOFF.md first."
- Each session ends: "Update SESSION_HANDOFF.md, commit and push, one sentence, no narration."
- Plan with the project-manager Claude (browser, cheap); execute with Claude Code (expensive).
- Engine-phase results are read as text in the CC window. Visual-phase results are viewed in the browser at the localhost URL CC reports.
- Permissions: accept-edits ON; git/npm/dev-server auto-allowed; deletion stays prompted.
- Update THIS file at the end of each phase so the roadmap stays current.

---

## CURRENT POSITION

**Done:** Phases 0, 1, 2 complete. Five engines built and tested. Design system v1.1 locked.
**Next up:** Phase 3.1 — the fretboard visualizer (the signature feature).
**After that:** follow Phase 3 in order (selector → piano → audio → circle of fifths → tension curve → layout).
