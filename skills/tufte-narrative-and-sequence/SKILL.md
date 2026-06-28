---
name: tufte-narrative-and-sequence
description: Apply Tufte's principles for visual explanations of process, causality, and change — selecting the causally relevant axis variable, showing all data including zero-effect cases, enforcing spatial adjacency for comparison, and representing motion and sequence in static displays.
tags: [tufte, narrative, sequence, causality, process, animation, data-visualization]
---
# Narrative and Sequence

**Source:** Visual Explanations (VE), 1997, Chapters 2–5; The Visual Display of Quantitative Information (VDQI), 1983/2001

## Overview
Visual explanations are distinct from data displays: they explain why and how, not just what. The central principle is evidence-based causality — showing all relevant data with the causally meaningful variable on the correct axis, making comparisons within the eyespan, never omitting the cases that fail to confirm a pattern. Tufte's most consequential case study is the Challenger disaster: seven people died in part because engineers showed flight number (irrelevant) instead of temperature (causal) on the x-axis and omitted all flights with no O-ring damage. Visual sequence and narrative design are therefore not aesthetic choices — they are epistemic ones with consequences.

## §1. The Evidence of Causality — Core Rules

**Rule 1: Show ALL the data, including cases where the effect did not occur.**

"Had the Challenger engineers and managers shown all their data about O-rings and temperature, the evidence for not launching on the cold January 28, 1986 morning would have been overwhelming." (VE)

Engineers showed only the 7 flights with O-ring damage. They omitted the 17 flights with no damage — which, when included, make the temperature pattern unmistakable.

**Rule 2: Put the causally relevant variable on the axis.**

Engineers plotted O-ring damage against flight number — a random, meaningless sequence. Temperature was the causal variable and appeared nowhere on the chart. The pattern only becomes visible when the correct variable (launch temperature) is mapped to the x-axis.

**Rule 3: Show the decision boundary.**

A vertical reference line at 29°F (the planned launch temperature) on a temperature-vs.-damage chart would have immediately shown that the planned launch was far outside any previous experience — no data existed in that temperature range.

**The Challenger correct display:**
- X-axis: launch temperature (°F)
- Y-axis: number of O-rings with damage (0–6)
- All 24 flights plotted, including the 17 with zero damage
- Vertical reference line at 29°F

## §2. Parallelism — Spatial Adjacency Beats Temporal Sequencing

"Comparisons are usually more effective when the information is adjacent in space rather than stacked in time." (VE)

| Method | Mechanism | Effectiveness |
|---|---|---|
| Spatial adjacency (small multiples) | Both states visible simultaneously within eyespan | High — direct comparison, no memory required |
| Temporal sequencing (slides, animation frames) | States shown one at a time | Low — requires visual memory to compare |
| Before/after flip mechanism (Repton) | Quasi-spatial through rapid physical alternation | Medium — nearly simultaneous when flipped quickly |

"Visual reasoning almost always works more effectively when the relevant evidence is shown adjacent in space within our eyespan." (VE)

**Key constraint:** "Comparisons must be enforced within the scope of the eyespan." (VDQI) If the viewer must scroll or move their head to compare, the comparison is degraded.

## §3. Before/After Display Rules

**What works:**
- Rapid comparison enabled by physical proximity
- "Temporal flip-parallelism enhances the reading of differences" (VE)
- The local shape of the flap concentrates attention on the changed area

**Named failure — faulty parallelism:**
- The "before" and "after" must be comparable on exactly the same terms
- Repton's flaw: his "after" views contained elements not in the "before" (nine boats vs. tiny boats, deer added to meadows) — embellishments beyond scope break the comparison
- Any element in "after" that was not in "before" is a confound

## §4. Principles for Establishing Visual Parallelism

"By establishing a structure of rhythms and relationships, parallelism becomes the poetry of visual information." (VE)

Visual parallelism is established by:
- **Position:** elements in corresponding spatial locations across panels
- **Orientation:** matching orientation across instances
- **Overlap:** direct superimposition for maximum comparison
- **Synchronization:** events linked across parallel time tracks
- **Content similarity:** visual elements that resemble what they represent

## §5. Small Multiples for Sequence and Process

Six principles from Visual Explanations:
1. "Multiple images reveal repetition and change, pattern and surprise — the defining elements in the idea of information."
2. "Multiples directly depict comparisons, the essence of statistical thinking."
3. "Multiples enhance the dimensionality of the flatlands of paper and computer screen."
4. "Multiples create visual lists of objects and activities, nouns and verbs."
5. "Multiples represent and narrate sequences of motion."
6. "Multiples amplify, intensify, and reinforce the meaning of images." (VE)

**Temporal density principle:** "Representation of more abrupt and irregular motion demands a quicker tempo and greater density of time-sampling." (VE) The number of frames must match the abruptness of change — smooth orbits need few frames; rapid or irregular motion needs many.

**The interpolation problem:** "Viewers must interpolate between images, closing up the gaps." (VE) For smooth processes, large gaps between frames are tolerable. For irregular processes, gaps mislead.

**Dequantification failure:** "Many still-image multiples depicting motion omit any explicit time-scale. Dequantification all over again." (VE) Every multiple sequence must show its time axis explicitly.

## §6. Animation Principles

**When animation helps:**
- When the process being shown is genuinely temporal
- When the sequence itself is the data

**When animation obscures:**
- "Secondary elements in motion attract eye attention disproportionately" — any non-data element that moves pulls focus from the data signal
- Redesign: mute secondary elements, clarify primary element, add quantitative data

**Animation vs. stop-action rule:** "To explore/understand/explain dynamic flowing information, stop-action images adjacent in space are helpful — and often better than continuous video, where the quick pace and high autocorrelation blurs analytical thinking." (VE)

## §7. The Graphical Timetable as Narrative Model

Ybry's graphical timetable (British patent, 1846) encodes 4–5 variables simultaneously:
- X-axis: time
- Y-axis: stations (discrete positions)
- Each diagonal line: one train
- Slope of line: speed (steeper = slower)
- Color or line weight: train type

"The visual timetable provides a detailed reading of times of a particular train along with an overview of the daily structure of times, stations, and routes — separating and combining micro/macro data." (VE)

## §8. Named Failure Modes

| Failure mode | Description |
|---|---|
| Selective data display | Showing only confirming cases; destroys pattern detection |
| Wrong variable on axis | Irrelevant variable used (flight number, alphabetical order, arbitrary sequence) |
| Dequantification | Photographs or symbols without quantitative scales |
| Context switching | Forcing viewers to jump between separate views rather than comparing within eyespan |
| Faulty parallelism | Parallel structures not comparable on the same terms |
| Serpentine data formation | Rigid grid forces data into unnatural reading paths |
| False temporal clusters | Accidental visual groupings in sequential displays based on design properties unrelated to data |
| Unmuted secondary animation | Non-data elements moving with same visual weight as data |
| Missing time axis | Multiples showing sequence without an explicit time scale |

## §9. Do / Don't Pairs

| Do | Don't |
|---|---|
| Show all data including zero-effect cases | Show only confirming cases |
| Put causally relevant variable on axis | Put arbitrary sequence (flight number, alphabet) on axis |
| Show decision boundary as explicit reference line | Leave boundary implicit |
| Place before/after states adjacent in space | Show them in temporal sequence only |
| Maintain strict parallelism (same terms, same scale) | Add elements to "after" not present in "before" |
| Label time axis explicitly on every multiple | Let viewer infer time scale |
| Mute all secondary animated elements | Let all elements animate with equal visual weight |
| Use stop-action multiples instead of continuous video where analysis is the goal | Default to video when stop-action would serve analysis better |
| Show natural experiments and anomalies | Show only the clean confirming cases |
