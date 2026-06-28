---
name: tufte-narrative-and-sequence
description: Apply Tufte's principles for visual explanations of process, causality, and change — selecting the causally relevant axis variable, showing all data including zero-effect cases, enforcing spatial adjacency for comparison, representing motion and sequence in static displays, using PGP narrative structure, applying the smallest effective difference, and avoiding faulty parallelism.
tags: [tufte, narrative, sequence, causality, process, animation, data-visualization, small-multiples, parallelism]
---
# Narrative and Sequence

**Source:** *Visual Explanations: Images and Quantities, Evidence and Narrative* (VE), Edward R. Tufte, Graphics Press, Cheshire, Connecticut, 1997. Chapters 1–6.

## Overview

Visual explanations are distinct from data displays: they explain *why* and *how*, not just *what*. The central principle is evidence-based causality — showing all relevant data with the causally meaningful variable on the correct axis, making comparisons within the eyespan, and never omitting the cases that fail to confirm a pattern. Tufte's most consequential case study is the Challenger disaster: seven people died in part because engineers showed flight number (irrelevant) instead of temperature (causal) on the x-axis and omitted all 17 flights with no O-ring damage. Visual sequence and narrative design are therefore not aesthetic choices — they are epistemic ones with consequences.

> "Clear and precise seeing becomes as one with clear and precise thinking." (VE, p.53)

---

## §1. The Evidence of Causality — Challenger Rules (Ch.2, pp.27–53)

**Rule 1: Show ALL the data, including cases where the effect did not occur.**

Engineers showed only the 7 flights with O-ring damage. The 17 flights with no damage were omitted — yet when all 24 are plotted, the temperature pattern becomes unmistakable. Omitting disconfirming cases destroys pattern detection.

**Rule 2: Put the causally relevant variable on the axis.**

Engineers plotted O-ring damage against flight number — an arbitrary, meaningless sequence. Temperature was the causal variable and appeared nowhere on the chart. The pattern becomes visible only when the correct variable (launch temperature, °F) maps to the x-axis.

**Rule 3: Show the decision boundary.**

A vertical reference line at 29°F (the planned launch temperature) on a temperature-vs.-damage chart would have immediately shown that the planned launch was outside all prior experience — no data existed in that temperature range.

**The correct display:**
- X-axis: launch temperature (°F), 26°–81°
- Y-axis: number of O-rings with thermal distress (0–6)
- All 24 flights plotted, including the 17 with zero damage
- Vertical reference line at 29°F

---

## §2. Six Principles of Evidence Reasoning (Ch.2, p.53)

Both the Broad Street cholera investigation (Snow, 1854) and the Challenger post-mortem reveal the same six principles — applicable equally to epidemiology, statistical graphics, and visual explanation:

1. Documenting sources and characteristics of data
2. Insistently enforcing appropriate comparisons
3. Demonstrating mechanisms of cause and effect
4. Expressing those mechanisms quantitatively
5. Recognizing the inherently multivariate nature of analytic problems
6. Inspecting and evaluating alternative explanations

> "Visual representations of evidence should be governed by principles of reasoning about quantitative evidence. For information displays, design reasoning must correspond to scientific reasoning. Clear and precise seeing becomes as one with clear and precise thinking." (VE, p.53)

---

## §3. Explaining with Clarity — The PGP Method (Ch.3, pp.55–71)

Tufte derives presentation principles by inverting the tactics magicians use to *suppress* understanding. The method of **PGP** (Particular → General → Particular) is the structural core.

> "there is no magic in still-land" (VE, p.63)

Still images cannot perform the misdirection that live magic requires — they are available for re-examination, annotation, and scrutiny. This is why still images, not video, are the gold standard for analytical explanation.

**Six rules for technical presentations (VE, Ch.3, pp.68–70):**

1. Near the beginning, tell the audience: what the problem is, why the problem matters, and what the solution is.
2. To explain complex ideas or data, use PGP: begin with a concrete particular case → abstract to the general principle → return to a concrete particular showing the principle in action.
3. Give every person in the audience one or more pieces of paper packed with material related to your presentation.
4. Analyze the details of your presentation; then master those details by practice, practice, practice.
5. Show up early. Something good is bound to happen.
6. Finish early.

**PGP applied to data displays:**
- Particular: a single patient chart, one flight's O-ring data, one train on a timetable
- General: the temperature-damage regression, the epidemic curve, the full timetable grid
- Particular: the decision boundary case — this flight, this date, this patient

---

## §4. The Smallest Effective Difference (Ch.4, pp.73–77)

> "Make all visual distinctions as subtle as possible, but still clear and effective." (VE, p.73)

This is Tufte's visual Occam's razor: what can be done with fewer visual elements is done in vain with more. Subtle distinctions leave room for *more* distinctions — the visual field is not depleted by heavy-handed contrast.

**Applies to all secondary display elements:**
- Pointer lines and leaders
- Grid lines and tick marks
- Scale labels and axis frames
- Boxes, borders, and legends
- Highlights, shadows, and codes

**The thunderstorm animation redesign (VE, Ch.4):** The original animated weather map gave the grid, domain-rectangle shadow, and boundary lines the same visual weight as the storm data. The redesign muted all secondary elements to the minimum contrast needed for legibility. Result: the data — the storm's movement and intensity — became immediately visible without competing elements.

**Rule:** Any visual element that is not data should be as close to invisible as its functional role permits.

---

## §5. Parallelism — Space vs. Time (Ch.5, pp.79–103)

The primary axis of parallelism design is spatial vs. temporal comparison.

> "comparisons are usually more effective when the information is adjacent in space rather than stacked in time" (VE, p.81)

| Method | Mechanism | Memory required | Effectiveness |
|---|---|---|---|
| Spatial adjacency (small multiples) | Both states visible simultaneously within eyespan | None | Highest |
| Temporal flip (Repton flap) | Rapid physical alternation — quasi-spatial | Minimal | Medium-high |
| Slide or animation sequence | One state at a time, serially | Full visual memory | Low |

> "This temporal flip-parallelism enhances the reading of differences" (VE, p.81)

**Repton's landscape "before/after" flap (pp.80–81):** Humphry Repton's Red Books (c. 1800) used a hinged flap: lift it and the proposed landscape "after" replaced the existing "before." When flipped rapidly, the near-simultaneous alternation reveals differences that pure sequential comparison would lose to memory decay.

**Salyut 6 cyclogram (pp.92–95):** Hand-drawn by cosmonauts Georgi Grechko and Yuri Romanenko during their 96-day flight (December 10, 1977 to March 16, 1978), the cyclogram tracked 8 simultaneous dimensions in a single parallel grid:
1. Phases of the moon
2. Holidays
3. Weeks (red tick marks)
4. Fraction of total flight completed
5. Dates
6. Elapsed days
7. Total weeks remaining
8. Total weeks finished

Eight variables, one sheet of paper, all readable within the eyespan.

**Beethoven 9th CD Companion (pp.88–89):** Synchronized visual parallelism of 6 musical motifs (Opening Ritornello vs. Exposition) combined with actual sound playback. Listeners click boxes to hear individual segments — spatial layout of time-based data, enabling navigation without imposed sequencing.

**Parallelism connections built by (VE, p.82):** position, orientation, overlap, synchronization, similarities in content.

> "good form is clear but not a spectacle" (VE, p.82)

> "by establishing a structure of rhythms and relationships, parallelism becomes the poetry of visual information" (VE, p.103)

---

## §6. Faulty Parallelism — Named Examples (Ch.5, pp.100–103)

Parallelism fails when parallel structures are not comparable on the same terms.

**Repton's own flaw (VE, p.102):** Repton's "after" views contained elements not present in the "before" — nine full-sized boats vs. tiny boats in the original, deer added to meadows. Each embellishment beyond scope breaks the comparison: viewers cannot distinguish "what changed by the intervention" from "what the designer added for appeal."

**NYT Yanomami photograph (VE, p.102):** A photograph ran with the caption "Napoleon A. Chagnon, left" — but the man in the loin cloth identified on the left was not Chagnon. The stated parallel (image position → named identity) was false. Faulty parallelism in caption design.

**HIV mortality two-graph (VE, p.103):** Two adjacent charts compared AIDS deaths for men (vertical scale: 0–65) and women (vertical scale: 0–30). The unequal scales made the women's slope appear proportionally similar to the men's — but men's overall death risk was more than double women's. Unequal scales on nominally parallel charts prevent valid comparison and actively mislead.

**Rule:** Every element of a parallel structure that differs between panels must differ *because the data differ* — never because of design additions, caption errors, or inconsistent scales.

---

## §7. Six Functions of Small Multiples (Ch.6, pp.105–120)

The six functions, verbatim from VE p.105:

1. **Reveal:** "Multiple images reveal repetition and change, pattern and surprise — the defining elements in the idea of information."
2. **Compare:** "Multiples directly depict comparisons, the essence of statistical thinking."
3. **Dimensionalize:** "Multiples enhance the dimensionality of the flatlands of paper and computer screen, giving depth to vision by arraying panels and slices of information."
4. **Enumerate:** "Multiples create visual lists of objects and activities, nouns and verbs, helping viewers to analyze, compare, differentiate, decide."
5. **Narrate:** "Multiples represent and narrate sequences of motion."
6. **Intensify:** "Multiples amplify, intensify, and reinforce the meaning of images."

**Huygens' *Systema Saturnium* (1659) (VE, pp.106–108):** 32 Saturn images at different orbital positions, each paired with a telescope view from Earth. "A tight collation of explanatory text and small drawings, much like a scientific notebook, the Galileo-Huygens design narrates a sequence of observational slices in a time-series, as changes in the multiple images represent the verbs of motion." (VE, p.106)

**13 Saturn interpretations (VE, p.107):** A foldout shows 13 geometrically distinct wrong answers — Galileo through Fontana, 1610–1645 — all predating Huygens' geometric model. "People can see more clearly if they have the right idea, as our cases of the cholera epidemic and Challenger accident suggest." (VE, p.107)

**Graphical patient status (VE, pp.110–111):** 24 small images per patient — laboratory readings, medicines, x-rays — on one page. The display contains 11,616 cells and 1,786 values previously scattered across multiple paper records. Rate of information transfer: 10–20× improvement over a verbal presentation.

**Organizational apparatus (VE, p.118):**

> "Multiples organize their images by means of a variety of devices: grids, compartments, call-outs, narrative sequence, overlap (opaque or transparent), and integration of multiple elements into a common field. Such organizational apparatus should be visually minimal; better to use the space for information."

**Low-resolution screens (VE, p.116):**

> "contrasts among multiple images often must be made temporally from screen to screen — one damn thing after another — rather than spatially within the eyespan. Improved resolution means more effective comparisons."

**False clustering (VE, p.112):** Accidental communalities in design — shared colors, border weights, spatial proximity — "can easily induce false groupings in the eyes of viewers, who are often busy searching for visual hints that help to boil down, organize, group, and otherwise make sense of multiple images." False *temporal* clusters arise as well: sequential display creates apparent patterns as the viewer moves frame to frame.

**Administrative bloat (VE, p.118):** Ad Reinhardt's 12-version wine glass multiple was surrounded by noisy borders "that consume an astonishing 42% of space in each framed rectangle." Tufte's redesign strips all frames — the edge of each image defines itself.

> Ad Reinhardt: "As for a picture, if it isn't worth a thousand words, the hell with it." (VE, p.119)

---

## §8. Motion and Sequence in Still Images (Ch.6, pp.108–109)

> "For still-land images that depict movement, space replaces time as the sequencing dimension. The adjacency of images helps us to assess change and possibly rates of change within each image and between images in sequence — and we can do so at our own pace." (VE, p.109)

Still images lose the experience of duration — the rates and rhythms of actual motion. This loss is structurally unavoidable. But it is compounded by a design failure:

> "many still-land multiples depicting motion omit any explicit time-scale. Dequantification all over again." (VE, p.109)

**Temporal density rule:** The tempo of time-sampling must match the character of the motion.
- Smooth, deliberate, incremental motion (planetary orbit, continental drift): few frames suffice. Huygens gaps 1.8 Earth-years between Saturn positions — tolerable because the motion is smooth and predictable.
- Abrupt, irregular motion requires denser sampling. Muybridge used 18 photographs to capture a few seconds of leapfrog.

**The interpolation problem:** "To resolve such discontinuous spatial representations of continuous temporal activity, viewers must interpolate between images, closing up the gaps." (VE, p.108) When motion is irregular, large gaps between frames mislead.

**Why still images support analysis:** Still images allow the viewer to set their own pace, return to earlier frames, and compare non-adjacent frames — none of which continuous video permits. The analytical advantage is self-pacing and the spatial adjacency of frames.

**Note on Ybry's graphical timetable:** Ybry's 1846 train timetable, encoding time, station, train, speed, and type as a grid of diagonal lines, is documented in *Envisioning Information* (EI), Tufte, 1990, pp. 97–113 — not in VE. VE footnote 12 (p.93) explicitly redirects: "For space-by-time and time-by-time grids, see Edward R. Tufte, *Envisioning Information* (Cheshire, Connecticut, 1990), pp. 32, 45, 97–113."

---

## §9. Named Failure Modes

| Failure mode | Source location | Description |
|---|---|---|
| Selective data display | VE, Ch.2 | Showing only confirming cases; the 7 O-ring flights without the 17 no-damage flights |
| Wrong variable on axis | VE, Ch.2 | Arbitrary sequence (flight number, alphabet) instead of the causal variable |
| Missing decision boundary | VE, Ch.2 | No reference line showing where the threshold falls in the data space |
| Dequantification | VE, p.109 | Still-image multiples without an explicit time axis |
| Faulty parallelism — content | VE, p.102 | Parallel structures not comparable on same terms (Repton boats, deer added to "after") |
| Faulty parallelism — caption | VE, p.102 | Positional label does not correspond to the named person (Yanomami photograph) |
| Unequal parallel scales | VE, p.103 | HIV mortality charts — different vertical extents prevent valid slope comparison |
| False visual clustering | VE, p.112 | Accidental design similarities (color, border) induce groupings unrelated to data |
| False temporal clustering | VE, p.112 | Sequential display creates apparent patterns as viewer moves frame to frame |
| Administrative bloat | VE, p.118 | 42% of frame area consumed by borders instead of information (Reinhardt multiple) |
| Screen-to-screen sequencing | VE, p.116 | Low-resolution forces temporal comparison instead of spatial adjacency |
| Heavy secondary elements | VE, Ch.4 | Grids, borders, shadows given same visual weight as data signal |

---

## §10. Do / Don't Pairs

| Do | Don't |
|---|---|
| Show all data including zero-effect cases | Show only confirming cases |
| Put causally relevant variable on axis | Put arbitrary sequence (flight number, alphabet) on axis |
| Show decision boundary as explicit reference line | Leave threshold implicit |
| Place before/after states adjacent in space | Show them in temporal sequence only |
| Maintain strict parallelism — same scales, same terms, same elements in both panels | Add elements to "after" not in "before"; use different vertical scales |
| Label time axis explicitly on every motion multiple | Let viewer infer time scale |
| Match temporal density to abruptness of motion | Apply uniform frame density regardless of motion character |
| Mute all secondary visual elements to minimum effective contrast | Give grids, borders, and labels the same visual weight as data |
| Use still images adjacent in space for analytical comparisons | Default to video when stop-action enables better analysis |
| Organize multiples by data-meaningful dimension (time, frequency, type) | Organize alphabetically or arbitrarily |
| Keep organizational apparatus (grids, compartments) visually minimal | Devote space to administrative framing instead of information |
| Tell the audience the problem, its importance, and the solution at the start (PGP rule 1) | Begin with methodology before the audience knows what the problem is |
| Begin with a concrete particular, then generalize, then return to a particular (PGP) | Present general principles before the audience has a concrete anchor |
