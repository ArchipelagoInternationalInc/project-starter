# HARMONIA — COMPLETE BUILD SPECIFICATION

**The deep, durable, end-to-end specification for building Harmonia.**

This document captures not just *what* to build but the actual *substance* of each feature as designed across the founding conversation. It exists so that the richness of the vision survives any chat ending. Where the MASTER_PLAN lists features, this document defines them in full.

**Companion files:**
- `MASTER_PLAN.md` — the phase checklist and current position (the quick roadmap)
- `SESSION_HANDOFF.md` — where the build stands right now
- `CLAUDE.md` — working conventions for this project
- **This file** — the deep "why and how" for every feature

**Storage:** project-starter repo AND harmonia repo root.
**Last updated:** June 28, 2026

---

## TABLE OF CONTENTS

1. The Vision and Philosophy
2. The Founding Insight: Music Is Math
3. Design DNA (locked)
4. The Theory Math Engine (Phase 1 — built)
5. The Visible Instrument (Phase 3)
6. The Harmonic Journey Engine — full design
7. The Tension System and Emotional Trajectory
8. The Ostinato Engine — cinematic formula
9. The Composer Advisors — full fingerprint library
10. Polyharmony, Upper Structures, Polychords
11. The Transposition & Inversion Engine
12. World Music Systems — scales paired with rhythms
13. Global Rhythm Systems & Polymeter
14. The Sequencer / Playground
15. Synthesis, Tempo Modulation, Stutter, Caesura
16. Vocal Harmony Calculator
17. Song Analysis (audio upload)
18. Advanced Theory Modules
19. The AI Coaching Layer
20. Export Engine
21. The DAW Plugin (Phase 2 future)
22. Social Content Strategy
23. Monetization
24. Audience and Market
25. Full Build Sequence with Substance

---

## 1. THE VISION AND PHILOSOPHY

Harmonia is a music theory intelligence platform — not a DAW, not a chord-chart tool, not a music generator. It is a compositional intelligence engine that understands harmony, rhythm, emotion, and musical form at a mathematical level and makes that understanding accessible to any musician regardless of theory background.

**The single sentence that defines it:** Harmonia makes the hidden mathematics of music visible, navigable, and composable — for any musician, in any tradition, at any level of theory knowledge.

**The pitch / tagline concept:** "Music is emotional mathematics. The emotions are real. The math is learnable. Most people only ever get access to one of those two things. Harmonia gives them both simultaneously."

**The founder's own need drives it:** the original motivation was a tool that would genuinely help a deeply experienced musician (Logic Pro user since the E-magic era, strong intuitive grasp of theory, world music, and the math under musical systems) do things that are currently hard or impossible to do without years of manual calculation — map scales onto alternate tunings, plan harmonic journeys, navigate polyharmony, work with world rhythms.

**Where it sits in an AI-first future:** Whatever music creation becomes — DAW, conversational AI interface, or something not yet invented — the *math* of scales, modes, harmonic trajectories, emotional arc, dissonance and resolution does not change. Music theory will not be disrupted by AI; it will be *used* by AI. Harmonia is the theory intelligence layer that other tools can be built on top of. This is a potentially much larger business than a single consumer product: Harmonia as infrastructure.

---

## 2. THE FOUNDING INSIGHT: MUSIC IS MATH

Every feature derives from one fact: music theory IS mathematics, and therefore the entire engine can be built algorithmically with no giant database — just formulas.

- Scales = ordered arrays of semitone intervals
- Modes = rotations of those arrays
- Chords = combinatorics over intervals
- Intervals = frequency ratios
- Transposition = modular arithmetic
- Harmony = interval relationships between simultaneous pitch arrays
- Tension = calculated dissonance from acoustic physics (harmonic series ratios)
- Rhythm = ordered arrays of beat durations
- Tuning systems = frequency ratio sets

The AI layer sits on top and interprets the math in human, emotional, stylistic language.

---

## 3. DESIGN DNA (LOCKED v1.1)

- **Backgrounds:** deep aubergine/wine atmospheric tones fading into near-black, with 5-stop radial gradients. Color lives in the shadows — never neutral black.
- **Signature accent:** warm amber/gold (~#E0A828 / #C8860D range).
- **Gradients:** shade through gold → amber → red → wine/purple. No flat color fills anywhere — every element transitions hue across itself.
- **Glassmorphism:** semi-transparent panels, soft inner/outer glow, fine distinguishing outlines, gradient-tinted (purple-to-wine for cards, richer wine-purple for elevated surfaces).
- **Typography:** H1/large display may be gold (passes contrast at large size). Body copy, labels, all small/reading text MUST be white/near-white (#F5F5F5). Every text/background combo verified WCAG AA (4.5:1 normal, 3:1 large).
- **Scale-degree color coding:** root note in brightest gold, other degrees graduated warm→cool outward, so scale shape is readable at a glance.
- **Overall feel:** premium, warm, musical — the Syncra aesthetic (glowing gradients, partial transparency, depth) warmed toward gold and red instead of cool purple. "A dark studio at night, an instrument lit by warm light."
- **Responsive:** every component must work on mobile and desktop.
- **Marketability standard:** "minimum impressive, not minimum viable." Launches credibly competitive with established alternatives.

---

## 4. THE THEORY MATH ENGINE (Phase 1 — BUILT ✅)

Pure TypeScript in lib/theory/, no framework dependencies, resilient ok/error return pattern, each tested by printed output.

**scaleEngine.ts ✅** — 15 scales as interval arrays (7 major modes, natural/harmonic/melodic minor, major/minor pentatonic, blues, whole tone, diminished). generateScale(rootNote, scaleId) with sensible sharp/flat spelling. Verified: D Dorian, C Major, A Minor Pentatonic, F# Blues all correct.

**chordEngine.ts ✅** — 20 chord types (triads, sus, all 7ths, extended 9/11/13). buildChord(rootNote, chordId, inversion). Diatonic chord derivation per scale degree. Verified: Cmaj7, inverted G, C major diatonic set correct.

**intervalEngine.ts ✅** — semitone math, interval naming (0–12), transposition of note/chord/sequence, enharmonic handling. Verified: P5, m3, tritone, chord and sequence transposition correct.

**tensionEngine.ts ✅** — chordTensionScore(chord, key) 0–100 based on interval content (tritones/minor-seconds raise, fifths/thirds lower) + circle-of-fifths distance from tonic. sequenceTensionCurve(). Heuristic and tunable. Verified: C–F–G–C scored 8/14/14/8; chromatic cycle 8/46/39/32/26/8 (dissonance reads higher). **This is the foundation for all expressive features.**

**fretboardEngine.ts ✅** — generateFretboard(tuning, fretCount) for ANY tuning, ANY string count. notesOnFretboard(), parseTuning() (parses "DADGAD" or "D A D G A D"). Verified: standard vs DADGAD differ correctly. **This powers the signature alternate-tuning feature.**

**Still to build in the engine family (Phase 3+ as needed):**
- transposition-for-instrument (B♭, F, E♭ transposing instruments) — when orchestral features arrive
- harmonic journey generator (lives in tensionEngine or its own module) — see Section 6
- negative harmony, set theory, spectral, counterpoint — see Section 18
- tuning systems beyond 12-TET (just intonation, 19/24/31-TET, gamelan) — see Section 18

---

## 5. THE VISIBLE INSTRUMENT (Phase 3 — CURRENT)

Each component reads from the engines and wears the design DNA. Mobile + desktop.

### 5.1 Fretboard Visualizer (THE SIGNATURE FEATURE)
- Interactive SVG fretboard reading fretboardEngine.
- Configurable: string count (4–12), fret count (12–24), capo position.
- Tuning: dropdown presets (Standard, Drop D, DADGAD, Open G, Open D, etc.) AND free-text custom entry for any tuning.
- Highlights scale tones color-coded by degree (gold root, graduated outward), chord tones, root note. Toggle note names vs. interval labels.
- Multiple scale position patterns — user cycles through positions.
- Chord diagrams: finger positions, barre indicators, muted strings.
- Why it's the moat: almost nothing on the market recalculates all chord shapes and scale patterns for ANY custom tuning (DADGAD, open tunings, 8-string custom). This is the first thing built because it's the differentiator and the visual payoff of the whole engine phase.

### 5.2 Scale & Chord Selector UI
- Controls to choose root note, scale/mode, and chord, driving the fretboard and all other visualizers.
- The primary interaction surface.

### 5.3 Piano Keyboard Visualizer
- SVG keyboard, 88 keys or user range, scrollable.
- Same scale-degree highlighting logic as the fretboard.
- Clicking a key plays the note (via audio layer).

### 5.4 Audio Layer (Tone.js)
- Play scales and chords aloud. Click a note/chord to hear it.
- Establishes the browser-audio foundation reused by the sequencer and everything later.
- Note: East West Composer Cloud and Logic Pro are available studio assets for producing high-quality demo sounds if sampled instruments are wanted later.

### 5.5 Circle of Fifths
- Interactive SVG, clickable keys.
- Highlights current key, related keys, borrowed-mode sources.
- Shows modal interchange relationships and harmonic distance (color intensity = closeness).
- Chord substitution paths shown as arcs.

### 5.6 Tension Curve Visualizer
- Displays sequenceTensionCurve output as a visual arc (X = bars/sections, Y = tension 0–100).
- Draw mode: user draws a curve, engine suggests chords matching it.
- Read mode: shows the tension curve of an existing progression.
- The first "intelligence made visible" feature. Connects directly to the Harmonic Journey Engine (Section 6).

### 5.7 Main App Layout & Navigation
- Ties components into a coherent single-page tool. Responsive shell.

---

## 6. THE HARMONIC JOURNEY ENGINE — FULL DESIGN

**This is the most original and sophisticated feature in the entire platform. Nothing like it exists.** It began as a "tension ratchet" idea but is far larger: it calculates ANY harmonic journey from one place, expanding/moving to another, and returning — along any chosen trajectory, with any emotional shape.

### The dimensions of harmonic space the engine can travel:
- **Tension axis** — consonance ↔ dissonance
- **Brightness axis** — dark (Locrian, minor, flat keys) ↔ bright (Lydian, major, sharp keys)
- **Density axis** — sparse open fifths ↔ clustered chromatic saturation
- **Stability axis** — tonic anchor ↔ floating tonal ambiguity
- **Register axis** — low and heavy ↔ high and ethereal
- **Rhythmic energy axis** — static/held ↔ dense/driving

A journey can move along ANY COMBINATION of these simultaneously. This is what great composers actually do — Stravinsky's Firebird finale moves along tension, brightness, density, and rhythmic energy at once in a coordinated mathematical sweep.

### The ten journey types (templates):
| Type | Axis movement | Emotional effect | Example |
|---|---|---|---|
| **Ascension** | brightness↑ register↑ density↑ | hope, transcendence, triumph | Beethoven 9th finale |
| **Descension** | brightness↓ register↓ tension↑ | grief, inevitability, tragedy | Barber Adagio |
| **Expansion** | density↑ outward from center | grandeur, overwhelm, awe | Bolero, Carmina Burana |
| **Contraction** | density↓ inward to silence | intimacy, loss, dissolution | Sibelius 7th ending |
| **Ratchet** (tension ratchet) | tension↑ each step, no backslide, then release | growing unease/chaos → release | the original idea; jazz, prog metal |
| **False Arrival** | tension↓ briefly then ↑ again | cruelty, hope denied, dramatic irony | Tristan chord, Mahler |
| **Orbit** | circular through related keys | dreamlike, timeless, meditative | Satie Gymnopédies |
| **Spiral** | ascending but returning slightly lower each cycle | existential, Sisyphean, hypnotic | Philip Glass operas |
| **Suspension** | all axes held static | dread, anticipation, held breath | Hitchcock, Ligeti |
| **Fracture** | sudden discontinuous jump | shock, humor, surrealism | Shostakovich, Zappa |

### The bracketed dissonance sequence (the original "tension ratchet" in detail):
Each chord more dissonant than the last, no backsliding, building to a climax, smooth voice leading between steps so the ratchet feels inevitable:
```
Chord 1: Tonic — tension 5
Chord 2: Subdominant +add9 — 15
Chord 3: Secondary dominant — 30
Chord 4: Tritone substitution — 50
Chord 5: Augmented — 65
Chord 6: Half-diminished — 75
Chord 7: Fully diminished — 85
Chord 8: max tolerable — 95
Chord 9: TONIC — 0 (release lands as physical relief)
```

### What the engine does:
- User selects start state, end state, journey type, number of steps. OR draws a tension curve on the visualizer.
- Engine (built on tensionEngine) calculates a mathematically valid chord sequence following the chosen trajectory, with smooth voice leading.
- Claude API interprets: describes the emotional arc in human language, suggests orchestration/dynamics/tempo to reinforce it.
- Multi-axis journeys move along several dimensions at once.

### Dissonance tools by genre:
- **Jazz:** tritone subs, altered dominants (7♯9♭13), chromatic approach chords, Coltrane changes as tension device
- **Prog metal:** polytonality, clusters, metric displacement as harmonic tension, silence as resolution
- **Classical/cinematic:** augmented sixths (Italian/French/German), Neapolitan, chromatic mediants, pedal point under shifting harmony
- **Songwriting:** the "truck driver modulation" (cheap key change up) vs. the sophisticated real harmonic build

---

## 7. THE TENSION SYSTEM & EMOTIONAL TRAJECTORY

Tension scoring (built in tensionEngine ✅) underlies the journey engine and the emotional arc mapper.

**Harmonic Tension Scoring factors:**
- Interval content (tritones = high, perfect fifths = low)
- Relationship to tonic (distance around circle of fifths)
- Voice-leading momentum (where notes want to go)
- Rhythmic placement (tension on strong beat hits harder)
- Duration (sustained dissonance accumulates psychological weight)

**The Tension Curve Planner (UI in 5.6):** graph with X = time/bars, Y = tension 0–100. User draws a curve or picks an emotional template; engine suggests chord sequences following it.

**Emotional trajectory templates:**
| Template | Shape | Example |
|---|---|---|
| Classic resolve | rise → sharp fall | pop songs, hymns |
| Deceptive resolve | rise → false resolution → higher rise → true resolution | Beethoven sonatas |
| Prolonged agony | sustained high, multiple false resolutions | Tristan, Radiohead |
| Explosive arrival | slow build → sudden max → held resolution | Firebird, Also Sprach Zarathustra |
| Bridge disruption | stable → sudden dissonance spike → return | Beatles "Something", most pop bridges |
| Jazz ambiguity | never fully resolves, ends on tension | Miles Davis endings |
| Prog metal arc | chaotic oscillation → false calm → massive resolution | Tool, Meshuggah |
| Cinematic swell | layered accumulation → overwhelming arrival → gentle release | film scores, Zimmer |

**Emotional Arc Mapper:** user draws a tension/emotion curve; engine generates the chord sequence; Claude says e.g. "Your climax arrives at bar 47 — the golden ratio point of your 76-bar piece. Here's how Stravinsky would approach this moment." Plus restructuring suggestions ("verse tension too high — listeners have nowhere to go at the chorus").

---

## 8. THE OSTINATO ENGINE — CINEMATIC FORMULA

Most cinematic classical music starts with ostinato (repeating pattern, usually strings). Melodies and counterpoint build on it. There is a formula, and the building blocks are mappable.

**What cinematic ostinato is mathematically:** a repeating figure that creates forward momentum without harmonic movement — tension comes from what is ADDED on top, not from chord changes.

**The cinematic grandeur layering formula:**
```
Layer 1 — Rhythmic ostinato (strings, low): short 2–4 note figure, often pedal tone or rocking interval (fifth/fourth). [Zimmer "Time", Glass, Orff Carmina Burana]
Layer 2 — Harmonic thickening: cellos/violas add sustained notes implying a chord; major/minor left ambiguous as long as possible.
Layer 3 — Melodic entry (solo instrument first): single oboe/horn/violin, simple stepwise/pentatonic, floats above.
Layer 4 — Harmonic expansion: brass enters with full voicings; first clear tonal center.
Layer 5 — Rhythmic augmentation: ostinato doubles in length/complexity; percussion adds physicality.
Layer 6 — The arrival: full orchestra, full chord, rhythmic unison — the mathematical payoff of everything built before.
```

**What the engine does:**
- User selects a seed interval/motif (2–6 notes), a mode (Dorian for dark grandeur, Lydian otherworldly, Phrygian menace), and a target emotional destination (triumphant/tragic/transcendent/terrifying).
- Engine calculates a layering sequence — which voices enter when, harmonic thickening at each stage, rhythmic evolution.
- Shows each layer visually as it builds; playback demonstrates the accumulation.
- Exports as MIDI with separate tracks per layer (ready for Logic/Ableton/orchestra).

**Composer ostinato style presets:**
| Composer | Ostinato character | Harmonic approach |
|---|---|---|
| Zimmer | minimalist, low strings, long build | modal (Dorian/Aeolian), brass arrival |
| Williams | melodic, leitmotif-driven | functional harmony, clear center |
| Pärt (tintinnabuli) | arpeggiated triads, bell-like | stripped to minimum, silence matters |
| Orff | primitive, percussive, modal | Phrygian, parallel motion, no resolution needed |
| Shostakovich | mechanical, relentless, ironic | minor modes, chromatic shifts |
| Stravinsky | rhythmically displaced, irregular accents | polytonal layers, ostinato fights itself |

---

## 9. THE COMPOSER ADVISORS — FULL FINGERPRINT LIBRARY

"What Would [Composer] Do?" Each composer is a structured set of mathematical fingerprints passed to Claude as context. The math is calculated first; Claude advises in that composer's stylistic voice.

| Composer | Harmonic fingerprint | Rhythmic fingerprint | Sample advice |
|---|---|---|---|
| **Bach** | functional counterpoint, circle-of-fifths sequences, suspensions resolving downward, strict voice leading | strict meter, augmentation/diminution, dance forms | "Add a contrary-motion bass. Resolve that suspension a step down. Here's a sequence through the circle of fifths." |
| **Grieg** | Norwegian folk modes, pedal-point drones, parallel thirds/sixths, Dorian/Lydian color | halling, springar (asymmetric Norwegian meters) | "Add a drone fifth in the bass. Harmonize in parallel sixths. Raise the 4th for Lydian brightness." |
| **Sibelius** | sustained pedals, modal ambiguity, open fifths, Finnish pentatonics, silence as element | long held notes, sudden bursts, stillness | "Strip to open fifths. Let it breathe — 4 bars near-silence. Build from one sustained note." |
| **Philip Glass** | additive rhythm, arpeggiated triads cycling, minimal harmonic movement, phase shifting | additive meter (2+2+3, 2+3+2, 3+2+2 cycling) | "Take this 3-note figure. Cycle it. Add one note every 8 bars. Let two voices fall out of phase." |
| **Coltrane** | Giant Steps changes (major-thirds cycle), pentatonic superimposition, sheets of sound | dense 16ths over slow harmonic rhythm | "Substitute a major-third relationship. Superimpose E♭ pentatonic over your C chord." |
| **Debussy** | whole tone, pentatonic, parallel chord planing, no functional resolution | fluid bar lines, phrases breathe | "Remove the leading tone. Move the chord in parallel. Don't resolve — drift to a new color." |
| **Stravinsky** | polytonal layers, ostinato fights itself, irregular accent displacement | rhythmic displacement, irregular bars, metric modulation | "Layer two keys. Displace the accent. Let the ostinato fight the meter." |
| **Shostakovich** | mechanical minor modes, dark irony via chromatic shifts | relentless ostinato, march rhythms, sudden disruptions | "Make it mechanical and cold. Insert an unexpected chromatic shift for irony." |
| **Hildegard von Bingen** | monophonic, Dorian/Phrygian, large leaps then stepwise descent | free rhythm following Latin text stress, no bar lines | "Follow the syllable stress. Leap a sixth, descend by step. No harmony — one line carries it." |
| **Pärt** | tintinnabuli — arpeggiated triads, bell-like, minimal, silence essential | slow, contemplative, each note weighted | "Arpeggiate the triad against the melody. Weight every note. Let silence speak." |

---

## 10. POLYHARMONY, UPPER STRUCTURES, POLYCHORDS

The most intellectually rich feature — historically only advanced composers could manage it intuitively. Bass in one harmonic territory juxtaposed against keyboard/melody in a complementary or competitive territory, creating effects only masters achieved. Good for jazz and prog rock.

**Named concepts implemented:**
- **Polytonality / bitonality** — two instruments in different keys (Stravinsky, Bartók)
- **Upper structure triads** — a triad in the right hand over a different chord in the bass (F major triad over C7 = C13♯11)
- **Pedal point harmony** — bass holds one note while harmony moves freely above
- **Klangfarbenmelodie** — timbre-based harmonic color (Schoenberg)

**The polyharmony calculator:**
1. User inputs bass instrument's territory (key, mode, chord)
2. User inputs keyboard/melody territory
3. Engine calculates shared notes, complementary tensions, clash points, resolution paths
4. Visualizes as a **harmonic Venn diagram** — shared / in-tension / usable-dissonance
5. Suggests voicings that make the juxtaposition intentional, not accidental

Example: RH/keyboard F major triad (F A C) over LH/bass B♭7 (B♭ D F A♭) = B♭13, a chord nearly unvoiceable on one instrument. Engine shows each part, the combined name, shared notes (F, A), tension notes (C vs A♭), resolution. Includes a jazz upper-structure-triad library.

This is genuinely unprecedented as a tool — jazz musicians calculate this by ear after years; a visual calculator would be revelatory.

---

## 11. THE TRANSPOSITION & INVERSION ENGINE

Handles the relationship between chord names, bass notes, inversions, and how two instruments playing "the same chord" create different results.

- **Slash chords / inversions:** C/E (first inv), C/G (second inv) — same notes, different weight and function; visual shows which note is in the bass and why it changes the feeling.
- **Polychords:** see Section 10.
- **Transposition calculator:** any chord/sequence to any key; instrument-specific (B♭ trumpet reads a major second up from concert); handles alternate tunings (what a chord shape becomes when retuned).
- **Inversion explorer:** all inversions of any chord, each rated by stability/tension/idiomatic use ("common in piano ballads, unusual in jazz voicings"); shows smoothest voice-leading path between any two chords' inversions.

(Core transposition is built in intervalEngine ✅; the inversion/polychord UI and instrument transposition extend it.)

---

## 12. WORLD MUSIC SYSTEMS — SCALES PAIRED WITH RHYTHMS

World music is a first-class citizen, not an afterthought. The killer feature: **selecting a world scale automatically pairs it with its idiomatic rhythmic framework.** No other tool does this pairing.

| Scale System | Scales/Modes | Paired Rhythm | Context |
|---|---|---|---|
| Arabic Maqam | Rast, Bayati, Hijaz, Saba, Kurd, Nahawand, Ajam (+variants) | Maqsum, Zafic, Masmoudi, Fallahi (iqa') | Egyptian/Arabic classical |
| Turkish Makam | Hicaz, Uşşak, Rast, Segah, Hüseyni, Nihavend, Saba | Aksak 9/8, Düyek, Semai | Ottoman classical |
| Indian Raga | Bhairav, Bhairavi, Yaman, Kafi, Khamaj, Asavari, Bhupali, Darbari | Teentaal 16, Ektaal 12, Jhaptaal 10, Rupak 7, Keherwa 8 | Hindustani; raga + time-of-day + rasa (mood) |
| Balkan | Bulgarian Phrygian variants, Macedonian | Rachenitsa 7/8, Kopanitsa 11/16, Pajduško 5/8 | Balkan folk dances |
| Gregorian/Medieval | 8 authentic+plagal modes, Hildegard style | free/proportional rhythm | chant |
| Javanese Gamelan | Pélog (7), Sléndro (5) — non-octave-repeating | colotomic structure (nested cycles) | Javanese |
| Japanese | Hirajoshi, In, Insen, Iwato, Yo, Kumoi | combinations with *ma* (negative space) | Japanese traditional |
| Flamenco | Phrygian Dominant, Flamenco variants | Soleá 12/8, Bulería 12/8, Siguiriyas 5+3/4 | flamenco palos |

Quarter-tone and comma-based tunings (maqam, makam) require the microtonal tuning support (Section 18).

---

## 13. GLOBAL RHYTHM SYSTEMS & POLYMETER

Rhythm is also math; non-Western rhythm systems are extraordinarily sophisticated.

**Polyrhythm calculator:** 3:4, 4:3, 5:4, 7:4, 5:3, etc. Visual grid showing where pulses align; the "landing points" where two rhythms coincide; playback so you hear it.

**Asymmetric meters:** 9/8 as 2+2+2+3 (Turkish aksak) vs 3+3+3; 7/8 as 3+2+2 or 2+2+3; 11/8, 13/8; named Arabic iqa'; Balkan Kopanitsa 11/16, Rachenitsa 7/8.

**Rhythmic phrase offset / displacement calculator** (the "not starting on the one" idea): visual grid showing where a phrase ENTERS relative to the downbeat; how to calculate where it resolves back to "the one"; how to construct an anacrusis (pickup) that makes the offset intentional; how displaced phrases interact with a steady section.

**Tala system (Indian):** Teentaal (16), Ektaal (12), Jhaptaal (10), Rupak (7); sam (the "one"), khali (empty beat), vibhag (sections); how melodic phrases (bol) map onto cycles. Possible mandala/yantra visual representation (inspiration noted from the tala rhythm game — geometry rather than a linear grid).

**Polymeter (native in the sequencer):** each track its own time signature simultaneously (bass 4/4, melody 5/4, percussion 7/8, drone free). Engine computes the LCM "super-downbeat" where all align and visualizes it. How Reich, Glass, King Crimson got their signature sounds — a browser tool doing it natively would be genuinely new.

**Tiling rhythms / rhythmic canons** (Messiaen / Vuza): patterns that tile time perfectly — offset copies together cover every beat exactly once. Engine calculates all tiling canons for a given length; generates interlocking polyrhythmic arrangements; exports MIDI.

---

## 14. THE SEQUENCER / PLAYGROUND

A simplified Ableton-Session-View-inspired, loop-based composer. MIDI/synthesis only — NOT audio recording, NOT a 32-channel mixer, NOT a sample host. Built on Tone.js Transport. The most complex single component — built late.

**Strategic decision (important):** Harmonia does NOT try to be a DAW. Its unique value is theory intelligence. Ableton/Logic/Reason already exist. So Harmonia is the **intelligent composition brain**; the DAW is the production environment. The sequencer is just enough to compose and hear ideas, and everything exports cleanly into real DAWs. This keeps scope sane and keeps theory intelligence as the headline.

**Track architecture:** up to 16 tracks; each has instrument/synth, effects chain, volume, pan, mute, solo, AND its own time signature (polymeter native). Track types: melodic, rhythmic, drone. Visual lanes, color-coded clip blocks.

**Clip system:** clips of defined length; different lengths across tracks create natural polymetric drift; piano-roll pattern editor; velocity per note; quantize (straight/swing light-med-heavy/none); duplicate/extend/reverse.

**Ostinato loop engine:** see Section 8.

**Phase/drift engine (Steve Reich):** any clip's tempo can be offset slightly (cents); visualizes the phase relationship in real time; auto-realign option after N bars.

**Effects routing (Tone.js built-ins):** per-track insert chain up to 8 effects in series, each with wet/dry; send/return buses (shared reverb/delay); master bus (compressor, EQ, limiter). Effects: Reverb, FeedbackDelay, Chorus, Distortion, BitCrusher, Phaser, Tremolo, AutoFilter, PitchShift, Compressor, EQ3, FrequencyShifter, StereoWidener.

---

## 15. SYNTHESIS, TEMPO MODULATION, STUTTER, CAESURA

**Synthesis core (Tone.js):** oscillator types (sine, square, saw, triangle, custom wavetable); ADSR per voice; polyphony up to 16; microtonal pitch support (any frequency, not just 12-TET); voice allocation.

**Tempo modulation engine:** BPM accelerates/decelerates along a **logarithmic curve** (natural, like a train) or **sine wave** (breathes in/out), or linear, or user-drawn custom curve. Target destination BPM over N bars. Global or per-track. Exports as MIDI tempo map.

**Caesura / interruption engine:** fermata (held beat/note — fixed/user/random duration); caesura (complete silence then resume); grand pause (all tracks silent); breath mark (slight lengthening). Placeable at any bar/beat in any track.

**Attack/decay expression engine:** any pattern expressed through any envelope character — percussive (sharp attack/fast decay: piano, plucked, marimba) or sustained (slow attack/long decay: organ, strings, pad) — same pattern, completely different feel.

**Stutter / gate engine:** hard gate (abrupt on/off, rate synced 1/4–1/32 or free LFO Hz); soft gate (amplitude-enveloped, tremolo-like); random stutter (probabilistic, density 0–100%); per-track wet/dry. Especially effective on long legato/ambient sounds (organ, pad, strings) — a signature sound-design tool.

---

## 16. VOCAL HARMONY CALCULATOR

Beautiful and technically achievable. Input a melody note (or sung pitch via mic); select a style; engine calculates harmony voices per that style's rules.

| Style | Harmony logic | Sound |
|---|---|---|
| Beach Boys | close 4-part, major 7ths, add9, parallel movement | bright, surf-era |
| Gregorian | parallel unisons/octaves/fifths, no thirds | ancient, hollow |
| Bach SATB | strict voice leading, no parallel 5ths/8ves, suspensions | dense, resolved |
| Barbershop | dominant 7ths everywhere, just-intonation "ring/lock" | bright, slightly sharp 7ths |
| Bulgarian | seconds sung simultaneously, drone bass | dissonant-beautiful, Eastern European |
| Modern A Cappella | extended jazz chords, vocal percussion | dense, urban |
| Georgian polyphony | three independent voices, non-Western modal, drone + two melodies | haunting, ancient |
| Josquin | Renaissance counterpoint | early polyphony |

**The signature UI moment — build one voice at a time:** start with melody alone; add voice 2 (hear the interval); add voice 3 (triad emerges); add voice 4 (full chord locks). Toggle voices on/off to understand each part's contribution. Shows voice leading to the next chord for each part. **The best way to teach harmony ever built** — better than any textbook. Exports MIDI (separate track per voice) + PDF notation.

---

## 17. SONG ANALYSIS (audio upload)

The "wow" feature that drives signups. Requires the only non-browser backend.

- Accept MP3/WAV/FLAC/AAC; size limits; progress.
- Python backend (FastAPI + librosa + madmom) returns key, mode, tempo, time signature, chord timeline with timestamps. Deploy on Railway/Render. Use madmom for higher chord accuracy than librosa alone. Set expectations: "best estimate, not perfect"; allow manual correction.
- Scrolling chord-timeline display synced to playback.
- Claude interpretation: "This song is in A♯ Mixolydian. Here's what that means harmonically, and here are the scales and chords that belong to this world." Suggests related scales for soloing, borrowed chords, what the composer may have been thinking, plus the song's stylistic fingerprint (era/genre/approach).
- Also identifies modal interchange chords in the uploaded song, and analyzes golden-ratio proportions ("your climax falls at 61.8% — a golden ratio placement").

---

## 18. ADVANCED THEORY MODULES

Derived from following music-is-math into territory no current tool covers. All calculable from the engine.

**Counterpoint calculator:** user writes a cantus firmus; engine generates a countermelody following species counterpoint rules (1st–5th species); flags violations in real time (parallel fifths/octaves, voice crossing, unresolved dissonances). "Bach chorale mode": full 4-voice SATB harmonization from a melody, using statistical voice-leading from Bach's 371 chorales.

**Negative harmony (Ernst Levy / Jacob Collier):** any chord/melody/progression mirrored around the modal axis; emotional polarity flips (major↔minor character, dominant↔subdominant); playback compares original vs negative; smooth modulation path between a passage and its negative (a novel harmonic-journey type).

**Set theory analyzer (post-tonal / Forte):** any chord → Forte number + interval vector; finds Z-mates (same interval content, different pitch classes); generates progressions based on shared interval vectors rather than functional harmony; bridges tonal and atonal. For contemporary classical, experimental, advanced jazz.

**Microtonal / alternate tuning explorer:** Just Intonation, Pythagorean, 19-TET, 31-TET, 24-TET (Arabic quarter tones), Turkish comma-based makam, Gamelan Pélog/Sléndro (non-octave-repeating), Bohlen-Pierce (3:1 tritave). Visualizes deviation from 12-TET in cents; fretboard/keyboard show where alternate-tuning notes fall; compose in any tuning, synth renders correct frequencies; explains why world music "sounds out of tune" to Western ears (it isn't — different math). Required for the world-music quarter-tone scales (Section 12). MIDI export with pitch-bend to approximate microtones.

**Harmonic series visualizer:** select any fundamental → full overtone spectrum; shows which overtones two notes share (basis of consonance); explains why a perfect fifth is consonant (3:2) and a tritone unstable; design a chord from a bass note's overtone series (how brass harmonics and Hindemith/Partch worked).

**Spectral harmony (Murail/Grisey):** build chords directly from the FFT spectrum of a fundamental, mapped to nearest notes in any tuning; as the fundamental changes, the chord morphs — the "breathing" spectral texture. Literally FFT applied to composition. No consumer tool does this.

**Golden ratio / Fibonacci form analyzer:** input total bars → golden-ratio point (φ≈1.618) for climax placement; Fibonacci-proportioned section lengths; analyzes uploaded songs for golden-ratio proportions; suggests where a climax/key-change/disruption has maximum structural impact (Bartók used this explicitly).

**Modal interchange full map:** for any key, all chords borrowable from all 7 parallel modes (Dorian ♭VII/♭III, Phrygian ♭II Neapolitan, Lydian ♯IV, Mixolydian ♭VII, Aeolian iv minor, Locrian ♭V); click any borrowed chord, hear it in context, see voice leading back to tonic; identifies them in uploaded songs.

---

## 19. THE AI COACHING LAYER

Claude API sits on top of the math. The math is ALWAYS calculated first by the engines; Claude interprets, never calculates. Keys via Doppler, server-side routes.

Functions: song-analysis interpretation; composer advisor (Section 9); harmonic journey description (Section 6); emotional arc mapping (Section 7); songwriter enhancement (melodic predictability scoring via interval entropy / rhythmic syncopation index / phrase symmetry / tension-resolution ratio — flags where a melody is too predictable and offers theory-grounded alternatives; genre-appropriate bridge suggestions; vocal range checks; modal interchange suggestions); contextual Studio-Mode explanations of what each parameter does.

In-product AI Artifacts possibility: AI-powered features can call the Anthropic API from within the app (model claude-sonnet for these calls).

---

## 20. EXPORT ENGINE

Harmonia integrates with existing workflows rather than replacing them.

- **MIDI** (.mid) — multi-track, full timing, velocity, program change, tempo map. Import to Logic/Ableton/Reason/Cubase.
- **WAV / MP3** — rendered from synthesis via OfflineAudioContext + lamejs.
- **PDF notation** — VexFlow + jsPDF, all voices.
- **PDF tab** — guitar/bass tablature generated from the fretboard engine.
- **MusicXML** — for Sibelius/Finale/MuseScore/Dorico.
- **JSON project** — full session state, save/load/share.

---

## 21. THE DAW PLUGIN (Phase 2 — future, after web app proven)

A significant revenue expansion. NOT built until the web app has paying users.

**Formats:** Audio Units (AU) for Logic/GarageBand/Final Cut; VST3 (universal — Ableton, Cubase, Reaper, FL, Pro Tools via wrapper); AUv3 (mobile GarageBand).

**What it does:** a MIDI-aware theory panel inside the DAW — reads MIDI at the playhead, detects key/mode/chord at that moment in the arrangement, shows scale/chord options for that exact moment, click a scale to highlight it on the virtual fretboard/keyboard, suggests next chords, and — the killer feature the web app can't do — **drops a suggested scale run or chord voicing directly into a DAW MIDI track.**

**Build path (smart):** Electron + web-plugin wrapper reuses the existing React/JS theory engine rather than rewriting in C++/JUCE. (JUCE+C++ is the hardest/most compatible; HISE higher-level; Camomile/Plugdata visual; Electron wrapper reuses the codebase — recommended first move, as Splice has done.)

**Monetization:** $49–79 one-time perpetual license (musicians are used to buying plugins; psychologically easier than subscription). Bundle: plugin + web at $99 launch or $15/mo.

**Three-surface platform vision:** web app (recurring revenue, discovery) + social content engine (free marketing that teaches and sells) + DAW plugin (high-margin professional tier embedded in real workflows). This is how Harmonia becomes a company, not just a website.

---

## 22. SOCIAL CONTENT STRATEGY

The content IS the product demo. Each post teaches something surprising that makes people feel smart, so they share it — then they can try it themselves on the platform. How Duolingo/Notion/Figma grew.

**Format:** short video/carousel — "You've heard this 1000 times. Here's the secret behind why it sounds like that." Interactive posts link straight to the relevant feature.

**Content library (each maps to a feature demo):**
- Pink Floyd "Money" — 7/4 time (polyrhythm grid, asymmetric meters)
- Björk "Army of Me" — tritone-heavy quasi-Locrian (mode explorer, tension)
- Led Zeppelin "Kashmir" — DADGAD over orchestration in another key, polytonal (alt-tuning mapper, polychord calc)
- Radiohead "Pyramid Song" — ambiguous meter (rhythmic displacement)
- Coltrane "Giant Steps" — one 4-note motif through all 12 keys (journey planner, circle of fifths)
- Beatles "Strawberry Fields" — two takes, different keys/tempos, spliced (song analysis, transposition)
- Tool "Schism" — alternates 5/8 and 7/8 (polymetric sequencer)
- Hendrix "Purple Haze" — opens on a tritone (tension scoring)
- Debussy "Clair de Lune" — whole tone, no resolution (scale explorer, emotional arc)
- Bulgarian folk choirs — simultaneous seconds (vocal harmony calculator)
- Sting "Seven Days" / Sufjan Stevens — 5/4 and odd meters (asymmetric meter tools)

Plus formats: "Spot the mode," "What's wrong with this chord?", "Build the Kashmir riff" (interactive DADGAD fretboard driving traffic to that feature).

**Launch tactic:** landing page + waitlist before the app is done; post 2–3 theory explainers/week during the build; aim 500 waitlist signups before launch (validates demand with zero code).

---

## 23. MONETIZATION

Freemium SaaS, three tiers.

**Free** — discovery driver: standard Western scales/modes/chords, basic fretboard + piano, circle of fifths, standard tunings only.

**Pro ($12/mo)** — the serious-musician layer: alternate-tuning mapper (any string count, any tuning), song upload analysis, all world scales + paired rhythms, polyrhythm calculator, songwriter predictability analysis, composer advisor, harmonic journey planner, polymetric sequencer, stutter/caesura/tempo-mod, vocal harmony calculator, MIDI/WAV/PDF export.

**Studio ($25/mo)** — composer/producer layer: emotional arc mapper, polyharmony/upper-structure calculator, counterpoint, negative harmony, set theory, microtonal/alternate tuning, instrument range engine, golden-ratio analyzer, MusicXML export, API access (build on top).

**Other streams:** institutional licensing (music schools, $299–999/yr); DAW plugin ($49–79 one-time); creator marketplace (scale packs/presets, 70/30); developer API. Stripe Tax on from day one. Annual discount (~20%) to reduce churn.

**Revenue reality:** 10,000 paying subscribers ≈ $120K/yr. Comparable theory apps have 100K+ users. The alt-tuning + audio-analysis + world-scales + journey-planning combination is the moat — no current tool does all four.

---

## 24. AUDIENCE AND MARKET

**Tiers:** serious hobbyists/semi-pros (primary, $8–15/mo); students and self-taught (YouTube-era players who learned songs but not why they work); producers/DAW users (modal interchange, borrowed chords over their own progressions); ethnomusicology/world-music enthusiasts (almost no tools serve them); jazz musicians (polyharmony, upper structures); prog/metal composers (polyrhythm, odd meters, alt tunings); film/TV composers (ostinato, instrument ranges, emotional arc, exotic scales); music therapists (mode/emotion associations); academic programs (institutional licensing).

**Competitive gap:** Hooktheory (good progressions, no world music/alt-tunings/audio/emotional-arc); Scaler (plugin chord suggestions, no world music/sequencer/journey/orchestration); Suno (generation — fundamentally different); Musictheory.net (static, no composition/analysis/export). None do alt-tuning + audio-in + world scales + pathway planning together.

---

## 25. FULL BUILD SEQUENCE WITH SUBSTANCE

Engine-first, then visible, then intelligence, then business, then expansion. One module per Claude Code session; test; commit and push; update SESSION_HANDOFF and this file at phase boundaries.

**✅ PHASE 0–2 DONE:** scaffold, 5 theory engines, design system v1.1.

**🔨 PHASE 3 — Visible instrument:** 3.1 fretboard visualizer (signature) → 3.2 scale/chord selector → 3.3 piano → 3.4 audio layer → 3.5 circle of fifths → 3.6 tension curve visualizer → 3.7 layout/nav.

**PHASE 4 — Intelligence:** 4.1 Anthropic API plumbing (Doppler keys, server route) → 4.2 harmonic journey planner (Section 6) → 4.3 composer advisor (Section 9) → 4.4 chord progression suggester → 4.5 modal interchange suggester → 4.6 emotional arc mapper (Section 7) → 4.7 songwriter enhancement.

**PHASE 5 — Song analysis:** 5.1 upload UI → 5.2 Python backend (FastAPI/librosa/madmom on Railway) → 5.3 timeline display → 5.4 Claude interpretation.

**PHASE 6 — Accounts/billing:** 6.1 Supabase auth → 6.2 saved projects/presets → 6.3 Stripe tiers (Stripe Tax day one) → 6.4 RLS feature gating → 6.5 account/billing UI.

**PHASE 7 — Polish/launch:** 7.1 landing page → 7.2 onboarding + Resend welcome → 7.3 responsive/mobile QA → 7.4 Sentry + error states → 7.5 trademark check "Harmonia" → 7.6 Vercel production + domain → 7.7 Plausible.

**PHASE 8 — Expansion (build as traction justifies):** vocal harmony calculator (Section 16) → polyharmony/upper-structure calculator (Section 10) → world music systems + paired rhythms (Sections 12–13) → ostinato engine (Section 8) → polymetric sequencer + synthesis + effects + tempo-mod + stutter + caesura (Sections 14–15) → transposition/inversion UI (Section 11) → advanced theory: counterpoint, negative harmony, set theory, microtonal, harmonic series, spectral, golden ratio, modal interchange map (Section 18) → instrument range engine → export engine full (Section 20: MusicXML, PDF tab, MIDI multi-track) → world rhythm tools: polyrhythm grid, asymmetric meters, displacement calculator, tala/mandala viz (Section 13) → institutional tier → **DAW plugin (Section 21 — separate major project)** → social content engine (Section 22).

---

## CURRENT POSITION

**Done:** Phases 0–2. Five engines built and tested. Design system v1.1 locked.
**Next:** Phase 3.1 — the fretboard visualizer (the signature feature), built inside the locked design system, reading from fretboardEngine, responsive, with scale-degree color-coding.
**This document + MASTER_PLAN.md + SESSION_HANDOFF.md together mean the full vision is durable and survives any chat ending.**
