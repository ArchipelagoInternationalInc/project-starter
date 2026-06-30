# NEURŌTONE — RECOVERY & BUILD SPECIFICATION

**Purpose:** This document resurrects the NeurōTone project after its build chat was lost at roughly 70% completion. It has two jobs: (1) preserve the complete vision durably so it can never be lost again, and (2) provide a reconstruction checklist so the existing code can be inspected and the build resumed exactly where it stopped.

**Companion files (to create in the neurotone repo, matching Harmonia's system):**
- `CLAUDE.md` — working conventions
- `SESSION_HANDOFF.md` — current build state (REBUILD THIS FIRST — see Section 2)
- `MASTER_PLAN.md` — phase checklist
- **This file** — the deep spec

**Storage:** project-starter repo AND neurotone repo root.
**Last updated:** June 28, 2026

---

## 1. WHAT NEURŌTONE IS

NeurōTone is a scientifically grounded, user-programmable web platform that uses precisely engineered sound — binaural beats, isochronic tones, harmonic drones, rhythmic entrainment, and spatial audio — to guide the brain into targeted states of consciousness (deep relaxation, sleep, focus, meditation, and elevated/creative states).

**The positioning:** the professional, transparent, programmable version of what Brain.fm and Calm hint at but never deliver. It treats users as intelligent adults — giving real control over real parameters — rather than a black-box audio stream with a calming brand.

**The single sentence:** NeurōTone is the first fully programmable, scientifically transparent sound entrainment platform — sound as deliberate technology for human experience.

**Why it was chosen as an early build:** technically simpler than Harmonia (no music-theory engine, all audio browser-side, no Python backend for the core), larger and already-proven market (Brain.fm, Calm, Headspace), lower infrastructure cost. Revenue from NeurōTone was intended to help fund Harmonia.

---

## 2. RECONSTRUCTION CHECKLIST (DO THIS FIRST TO RESUME)

The lost chat completed an estimated ~70% of the build. The exact completed state lives only in the existing neurotone repo/code. To resume safely, run a Claude Code session that inspects and reports before building anything new:

**Recovery prompt to paste into Claude Code (in the neurotone folder):**

> "We are resuming the NeurōTone build after losing the planning chat. Do not write new features yet — first inspect and report. Read any existing CLAUDE.md, SESSION_HANDOFF.md, README, and the full lib/ and app/ structure. Then tell me concisely: (1) what is the current stack and is it Next.js 14; (2) what audio features exist and work — binaural engine, isochronic, drone, heartbeat sync, session arc, export; (3) which guided sessions exist; (4) what UI exists; (5) what is committed vs uncommitted; (6) is it connected to GitHub and pushed; (7) your best assessment of what percentage is complete and what the remaining work is. One structured summary. No changes."

From that report, rebuild SESSION_HANDOFF.md to reflect true current state, then resume from the first unbuilt item in the build sequence (Section 9).

**Expected stack (confirm against reality):** Next.js 14 App Router, TypeScript, shadcn/ui, Tailwind, Supabase, Stripe, Cloudflare R2, Tone.js + Web Audio API, Anthropic API. NO Python backend for core audio (all browser-side). NO audio streaming server (sound is synthesized live).

---

## 3. THE NON-NEGOTIABLE TECHNICAL FOUNDATION

**TRUE STEREO ARCHITECTURE — required from day one.** Binaural beats physically require each ear to receive an independently controlled frequency. The audio engine must route left and right channels separately at every layer using ChannelSplitter and ChannelMerger nodes. Many competitors fake this with mono-in-stereo packaging; NeurōTone enforces real channel separation, including in all WAV exports (separate L/R channel data, never stereo-duplicated mono).

**Headphones required for binaural** — must be communicated prominently in the UI. Warn when mono/Bluetooth output that sums to mono is detected.

---

## 4. THE SCIENCE (grounds every feature; brand value = honesty)

**Brainwave states & frequency-following response (neural entrainment):** rhythmic auditory stimulation causes neural oscillations to synchronize toward a target frequency.

| State | Range | Experience |
|---|---|---|
| Delta | 0.5–4 Hz | deep dreamless sleep, restoration |
| Theta | 4–8 Hz | deep meditation, hypnagogic imagery, creativity, memory |
| Alpha | 8–14 Hz | relaxed alertness, light meditation, flow |
| Beta | 14–30 Hz | active focus (low beta good; high beta = anxiety) |
| Gamma | 30–100 Hz | peak cognition, insight; 40 Hz active Alzheimer's research |

**Three entrainment mechanisms:**
- **Binaural beats** — different frequency each ear; brain perceives the difference tone; requires headphones; effects real but modest and individual (honest framing required).
- **Isochronic tones** — single tone pulsing on/off at the beat frequency; works WITHOUT headphones; sharper cortical response.
- **Monaural beats** — two frequencies mixed before the ears; acoustic (not illusory); works without headphones.

**Other grounded mechanisms:** tempo synchronization (slow 50–70 BPM → parasympathetic calm); mode/scale emotional associations; harmonic tension/resolution modulating arousal; timbre effects (singing bowls, overtone singing → vagal tone); rhythm anchoring attention. **40 Hz gamma** — labeled as active research, not a medical claim, with links to literature. **Heartbeat synchronization / HRV** — resonance breathing (~5.5 breaths/min) maximizes HRV; user inputs resting heart rate, a pulse starts there and gradually decelerates, guiding heart rate down (audio biofeedback).

**Brand rule:** intellectual honesty. Clearly separate well-established science, emerging research, and speculative territory (e.g., Solfeggio/432 Hz claims offered transparently — what's claimed vs. what's evidenced — without endorsing or dismissing).

---

## 5. THE TWO EXPERIENCE MODES

**Guided Mode** — for most users. Pre-built scientifically designed sessions; pick a goal + duration, put on headphones, it runs. Beautiful, effortless, no theory needed. May evolve over time (e.g., Alpha descending to Theta over 20 min).

**Studio Mode** — the differentiator. Fully programmable; every parameter accessible. Users build custom sessions layer by layer, save, share, export. This is what no competitor offers.

---

## 6. THE SESSION BUILDER — SIX LAYERS

A session is a layered construction. Each layer independent.

**Layer 1 — Entrainment:** type (binaural / isochronic / monaural / none); target state (Delta/Theta/Alpha/Beta/Gamma/custom Hz); carrier frequency (80–500 Hz, affects tonal character); session arc (static or dynamic — descends/ascends over time); arc shapes (linear / logarithmic / sine / stepped / custom-drawn). Example: begins 10 Hz Alpha, descends logarithmically to 5 Hz Theta over 20 min.

**Layer 2 — Harmonic drone:** sustained musical tone tuned to the carrier; timbre (sine, singing bowl, Tibetan bowl, didgeridoo, cello, organ, custom wavetable); scale/mode (Dorian meditative, Lydian uplift, Phrygian introspection); root pitch (432/528/440 Hz options); Solfeggio frequency presets (with transparent framing); static or slow harmonic movement.

**Layer 3 — Rhythmic pulse:** heartbeat sync (enter BPM, pulse starts there); deceleration arc to a target BPM (e.g., 72→55 over 15 min); pulse character (soft sine, heartbeat waveform, frame drum, shaker, distant bell); polyrhythm option (two pulses in a harmonic ratio, e.g., 3:2); cultural patterns (slow maqsum for Middle Eastern meditative feel).

**Layer 4 — Texture/atmosphere:** nature (rain, ocean, forest, wind, river, fire — seamless loops); synthesized environments (cave resonance, cathedral, infinite space, underwater); vocal textures (Gregorian drone, Tibetan overtone, Bulgarian choir); pink/brown/white noise with spectral tilt; spatial audio (3D positioned/moving via HRTF).

**Layer 5 — Melodic suggestion (optional):** slow sparse phrases drifting in/out (not a song); generated algorithmically from the selected scale; instruments (flute, violin, glass harmonica, sparse piano, kalimba, koto); density control; fully disableable.

**Layer 6 — Silence architecture:** scheduled silence for integration; fade depth (to quiet vs. complete silence); duration/periodicity (fixed or random); teaches that silence is a layer, not absence.

---

## 7. GUIDED SESSION LIBRARY (templates)

| Session | Target | Duration | Arc | Use |
|---|---|---|---|---|
| Deep Sleep Entry | Delta 2 Hz | 45 min | Alpha→Theta→Delta over 30, hold Delta 15 | insomnia, sleep quality |
| Creative Flow | Theta/Alpha 6–8 Hz | 30 min | Alpha 10 → Theta 7 over 15, hold | writers, artists, problem-solving |
| Focus Sprint | low Beta 15–18 Hz | 25 min | ramp to 16, hold 20 | study, deep work, Pomodoro |
| Meditation Depth | Theta 5–6 Hz | 20 min | gentle Alpha entry, slow Theta descent | experienced meditators |
| Anxiety Relief | Alpha 9–11 Hz | 15 min | immediate Alpha + heartbeat sync decel to 60 | stress, pre-performance |
| Gamma Clarity | Gamma 40 Hz | 20 min | immediate 40 Hz isochronic, minimal texture | peak cognition (research-framed) |
| Hypnagogic Edge | Theta/Alpha 6–8 Hz | 35 min | descend to liminal border, hold (don't cross to sleep) | lucid entry, creative visualization |
| Morning Activation | Alpha→Beta 10–18 Hz | 15 min | ascends (reverse of sleep descent) | gentle wake |
| Pain Management | Alpha/Theta 7–10 Hz | 30 min | steady, low carrier, vocal texture | chronic pain adjunct (careful framing) |
| Grief & Integration | Theta 5–7 Hz | 40 min | deep Theta, minor-mode movement, silence architecture | emotional processing |
| Athletic Recovery | Delta 1–3 Hz | 20 min | rapid Delta descent, heartbeat sync to resting | post-workout, sleep priming |
| Resonance Breathing | Alpha + 0.1 Hz breath pacer | 10 min | steady Alpha, 5–6 breaths/min pacer | HRV training, daily regulation |

---

## 8. ELEVATED STATES (beyond relaxation)

Most competitors only do calm/sleep. NeurōTone also serves activation, peak performance, creative elevation, and liminal states — a multidimensional landscape, not a binary.

- **Hypnagogic edge** — the waking/sleep border (Theta/Alpha); vivid imagery, loosened ego-editing; the Edison "steel balls" tradition; technically demanding (stay aware without losing consciousness).
- **Flow states** — Alpha/Theta border + transient hypofrontality (reduced inner critic).
- **Gamma peak cognition** — 35–45 Hz, insight/binding; the most research-active area.
- **Psychedelic-adjacent states (no substances)** — certain Theta + harmonic + spatial + duration combinations produce dreamlike/visionary/introspective experiences; the audio creates conditions, the brain creates the experience. Careful experiential (not causal, not medical) framing; explicit user acknowledgment required.

---

## 9. DISTINCTIVE FEATURES

- **True stereo** (Section 3).
- **Solfeggio & alternative tunings** — 432 Hz, Solfeggio set, Schumann 7.83 Hz; transparent about weak/absent evidence; offered without false claims.
- **Binaural spatial audio (HRTF)** — sounds positioned/moving in 3D (singing bowl orbiting the head, rain overhead-to-surrounding); Web Audio PannerNode HRTF model; generic HRTF fine for v1, personalization later.
- **Session recording & progress tracking** — self-reported state before/after (not biometric); opt-in only; builds a personal map of what works; aggregate anonymized data is scientifically valuable.
- **World music meditation library** — Tibetan singing bowls (rich overtone series), shruti box drones, didgeridoo (vagal/sleep-apnea research links), Gregorian chant in cathedral reverb, Mongolian overtone singing, gamelan textures, Native American flute, kora/mbira.
- **Breath pacer** — subtle audio (and optional visual) cue at resonance rate (~5.5 breaths/min): soft rising tone inhale, falling exhale, woven into the soundscape.

---

## 10. THE BUILD SEQUENCE

**Phase 1 — MVP (the lost chat reached ~70% somewhere in here; verify via Section 2):**
1. True-stereo audio engine — binaural generation, any freq 0.5–100 Hz, both carriers independent
2. Isochronic tone mode
3. Playback controls UI (play/stop, carrier, beat freq, state display)
4. Brainwave presets (Delta/Theta/Alpha/Beta/Gamma)
5. 5 guided sessions (Deep Sleep, Focus Sprint, Anxiety Relief, Meditation Depth, Morning Activation)
6. Basic studio mode (entrainment + simple drone + duration)
7. Drone layer (5+ timbres, any root)
8. Heartbeat sync with deceleration
9. Session arc (static + simple ramps)
10. WAV export (true stereo)
11. Master fade in/out
12. User accounts (Supabase), Free + Personal tiers (Stripe)
13. Mobile-responsive

**Phase 2 — Full consumer platform:**
Full session library (12+); complete studio mode (all 6 layers, all params); session arc programming (log/sine/custom); full texture library (15+); HRTF spatial audio; breath pacer; Solfeggio/alt tunings; world music textures; session progress tracking; Explorer tier; Claude API session recommendation; offline export (WAV/FLAC/MP3).

**Phase 3 — Professional & enterprise:**
Professional practitioner tier (client session sharing, logging — $49/mo); session marketplace (creator publishing, 70/30); enterprise/white-label; research API; practitioner directory; corporate wellness portal; advanced analytics; practitioner certification.

---

## 11. STUDIO MODE PARAMETERS (full programmable list)

Binaural beat freq (0.5–100 Hz); carrier L (80–500 Hz); carrier R (L + beat, adjustable); arc shape (static/linear/log/sine/stepped/custom); arc duration (1–120 min); isochronic duty cycle (10–90%); monaural mix; drone root (20–2000 Hz; 432/528/440 presets); drone timbre (15+); drone scale/mode; harmonic movement speed; heartbeat BPM (40–120); BPM target (30–80); deceleration curve; pulse character (8); polyrhythm ratio; texture type (15+); spatial positioning (static/moving/rotating/expanding); melodic density; melodic instrument (10+); silence architecture; silence depth (to −60dB or full); master fade (0–5 min); export (WAV true-stereo / MP3 / FLAC).

---

## 12. MONETIZATION

**Free** — 5 sessions, 15-min limit, basic binaural presets, 3 textures.
**Personal ($9/mo)** — full library, unlimited duration, full binaural range, isochronic + monaural, studio mode, 10 saved sessions, heartbeat sync, full textures, breath pacer, Solfeggio, basic tracking.
**Explorer ($18/mo)** — everything + custom Hz, full arc programming, HRTF spatial, unlimited saved sessions, WAV/FLAC export, full tracking + history, offline access, exclusive content.
**Professional ($49/mo)** — client session sharing, logging, export for clinical/workshop use, practitioner directory listing.
**Enterprise** — corporate wellness per-seat ($5–8/employee/mo); clinical license ($199–499/mo); white-label; research license.
**Other:** one-time session packs ($19.99); practitioner certification ($299); Stripe Tax day one; annual discount.

**Revenue context:** Brain.fm ~$3–10M ARR with a simpler single-use-case product. NeurōTone serves five use cases (focus, sleep, meditation, creativity, elevated) plus professional markets. Conservative ~$2.76M ARR at 18 months (base case).

---

## 13. LEGAL & ETHICAL (more sensitive than Harmonia — attorney review required before launch)

- **No medical claims** — experiential language only ("users report feeling…"), never causal/curative. Attorney-reviewed.
- **Epilepsy/seizure warning** — rhythmic auditory stimulation can rarely trigger seizures; prominent, un-dismissable acknowledgment.
- **Mental health contraindications** — psychosis, dissociation, active mania, PTSD; advise professional consultation; clear not paternalistic.
- **Driving/machinery warning** — especially Delta/Theta sessions; required acknowledgment.
- **Behavioral data** — session history is health-adjacent; opt-in only; GDPR-compliant; never sold.
- **FTC** — substantiate or avoid efficacy claims; experiential framing; link research where claims approximate findings.
- **Solfeggio claims** — transparent, non-endorsing.

---

## 14. BRAND

Intellectually serious without being clinical; experiential without being mystical; powerful without overpromising. For people who are curious and read, who want to understand how things work. Name combines the neurological (neural entrainment) with the musical (tone). Aesthetic direction TBD (dark/deep space-cave-ocean vs. light/airy vs. scientific-clean) — distinct from Harmonia's warm-gold studio look.

---

## 15. ARCHITECTURE NOTES & RELATIONSHIP TO HARMONIA

**Three-surface future (shared principle with Harmonia):** keep audio logic framework-agnostic so it can serve desktop web, mobile, and potentially other surfaces. Keep browser-specific code in the UI layer.

**The Harmonia / NeurōTone shared foundation — the plan:**
- **Keep them SEPARATE products** — different brands, markets, domains, subscriptions, repos. NeurōTone = wellness; Harmonia = musicians. Do not merge; it would dilute both.
- **Plan for a shared audio-core package** — both need: true-stereo Web Audio engine, Tone.js synthesis (oscillators, ADSR), WAV export via OfflineAudioContext, tuning/frequency math. These are genuinely common.
- **But extract the shared core LATER, from working code, not now from speculation.** Premature abstraction is a trap. Build each product's audio layer cleanly modular; once both exist and the true overlap is visible, extract the common audio-core then. NeurōTone's audio engine is the more mature of the two, so it likely seeds the shared core.

---

## 16. CURRENT POSITION

**Status:** build chat lost at ~70%. The vision is now durable in this document.
**Immediate next action:** run the Section 2 reconstruction prompt in Claude Code against the existing neurotone repo to determine exactly what's built, rebuild SESSION_HANDOFF.md from reality, then resume from the first unbuilt item in Section 10.
**This document ensures NeurōTone can never be lost again.**
