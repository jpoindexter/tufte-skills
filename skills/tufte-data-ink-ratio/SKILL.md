---
name: tufte-data-ink-ratio
description: Apply Tufte's data-ink ratio framework to strip non-data ink and redundant data ink from statistical graphics, raising the ratio toward 0.9 through iterative erasure and redesign.
tags: [tufte, data-visualization, graphical-design, chartjunk, statistical-graphics]
---
# Data-Ink Ratio

## Overview
The data-ink ratio measures how much of a graphic's ink is doing real informational work. Tufte's core claim: the larger the share of ink devoted to data, the better the graphic. The ratio gives a concrete lever — identify what can be erased without losing data, then erase it. This solves the chronic problem of decoration, redundancy, and convention adding ink that competes with rather than conveys information.

## §1. The Formula and Thresholds

```
Data-ink ratio = data-ink / total ink used in the graphic
```

> "The larger the share of a graphic's ink devoted to data, the better (other relevant matters being equal): Maximize the data-ink ratio, within reason."
> — *The Visual Display of Quantitative Information*

In *The Visual Display of Quantitative Information*, Tufte argues that every mark placed on a graphic must justify its presence, and that justification should almost always be that the mark conveys information not represented anywhere else on the graphic.

| Ratio | Assessment |
|---|---|
| < 0.5 | Problematic — ink is mostly decoration or redundancy |
| ~0.6 | Marginal — Tufte explicitly flags this as too low (atomic volume chart with 63 grid ticks over 76 data points) |
| 0.7–0.8 | Acceptable after one round of editing |
| ~0.9 | Target — reached after erasing grid ticks from the atomic volume chart, "only the frame lines remaining as pure non-information" |
| 1.0 | Theoretical maximum; frame lines and axis labels still carry some non-data ink |

The "within reason" qualifier matters. Redundancy occasionally earns its ink (see §6). The ratio is a tool for finding waste, not a score to maximize blindly.

## §2. What Counts as Data-Ink vs Non-Data-Ink

**Data-ink:** ink that, if erased, would destroy some part of the data information. The ink that changes when the data changes.

**Non-data-ink:** ink that could be erased without losing data — borders, frames, grid lines, background shading, decorative fills, tick marks when labels serve.

**Redundant data-ink:** ink that depicts the same number more than once. A shaded, labeled, bordered bar locates its value in six independent ways — five of those representations are redundant.

| Ink type | Example | Erase? |
|---|---|---|
| Data-ink | Plotted point position, line path, height of a bar's top edge | No |
| Non-data-ink | Frame borders, background shading, grid mesh, axis tick marks when axis labels exist | Yes — erase first |
| Redundant data-ink | Bar fill shading (the bar height already encodes the value), bilateral symmetry in box plots, the second half of a Chernoff face | Yes — erase second |
| Justified redundancy | Repeated cycle in a periodic time-series so the eye can track without jumping back to the start | Keep — purposeful |

### The bar chart's six-way redundancy
A single shaded, labeled, bordered bar unambiguously locates its value via:
1. Height of the left line
2. Height of the shading
3. Height of the right line
4. Position of the top horizontal line
5. Position (not content) of the number at the bar's top
6. The number itself

Any five of those six can be erased; the sixth still locates the value. All five are redundant data-ink.

## §3. The Five Principles of Graphical Redesign

Tufte's conclusion to the data-ink chapter states these in order of priority:

1. **Above all else show the data.**
2. **Maximize the data-ink ratio.**
3. **Erase non-data-ink.**
4. **Erase redundant data-ink.**
5. **Revise and edit.**

The sequence is the procedure: start from what the data demands (1), then maximize (2) by executing the two erasure passes (3, 4), then iterate (5). Principles 3 and 4 are the operational moves that execute principle 2.

## §4. The Erasure Procedure

Two passes, in order:

### Pass 1 — Erase non-data-ink

> "Erase non-data-ink, within reason."
> — *The Visual Display of Quantitative Information*

Remove ink that fails to depict statistical information at all. Common targets:
- Background fills and shading on the plot area
- Grid lines and tick marks (especially dense grids)
- Box frames around the chart area
- Decorative borders on bars or columns
- 3D effects, drop shadows, perspective distortion

### Pass 2 — Erase redundant data-ink

> "Erase redundant data-ink, within reason."
> — *The Visual Display of Quantitative Information*

Remove ink that depicts the same number multiple times. Common targets:
- Fill/shading on bars (height already encodes the value)
- Bilateral symmetry in box plots, open bars, Chernoff faces
- Repeated axis labels when spacing makes them clear
- Dual y-axes encoding the same variable at different scales

### Post-erasure: use the recovered space

Space freed by erasing is not wasted — it can carry new information. In the atomic volume redesign, erasing the grid allowed labeling the alkali elements at each period peak directly on the chart, adding information that was absent from the original dense version.

The graphical arithmetic:

```
original design = erased part + good part
```

In the bar chart redesign, approximately **65% of the original ink** was identified as non-data-ink and redundant data-ink, then erased. The data survived intact.

## §5. Named Redesign Examples

### Bar chart (Kuznicki/McCutcheon taste papillae data)

| Version | Ink budget | Data loss |
|---|---|---|
| Original | Full shading, borders, asterisks, gridlines, grouped panels | None (but ~65% redundant or non-data) |
| After erasure | Left and top edges only for each bar; right edge and fill removed; asterisks removed from caption | None |
| Net | ~65% of original ink erased | 0% |

The horizontals connecting paired bars count as data-ink — they indicate the paired comparison structure and would change if the experimental design changed. They stay.

### Dot plot / atomic volume chart (Pauling, General Chemistry)

| Version | Data-ink ratio | Notes |
|---|---|---|
| Original (Hayward) | < 0.6 | 63 dark grid tick-marks compete with 76 data points and reference curves |
| After erasing grid ticks | ~0.9 | "Only the frame lines remaining as pure non-information" |
| Dots only, no reference curves | Ratio high but useless | Periodicity structure invisible — demonstrates that some structure ink earns its place |
| Dots + ticks restored without curves | Worse than original | Grid competes; eye needs curves to navigate the dots-and-crosses maze |

The redesign also rotated the y-axis label from vertical (bottom-to-top) to horizontal, improving readability — space from erasing the frame interior made room.

### Box plot

Standard bilateral box plot encodes each quartile boundary on both the left and right side of the box. The right half is a mirror of the left — it is redundant data-ink. A half-box carries the same distributional information in half the ink. Half-faces (Chernoff) carry the same information as full faces; bilateral symmetry "doubles the space consumed by the design in a graphic, without adding new information."

### Open bar

A solid filled bar communicates its value via three redundant encodings: left edge height, fill height, right edge height. An open bar (left edge + top edge + right edge only) erases the fill while preserving all three, then an erased bar (left edge + tick at top) preserves just one — sufficient.

## §6. When Redundancy Has Legitimate Uses

Erasing redundancy is not unconditional. Tufte identifies purposeful redundancy:

- **Cyclical time-series:** Repeating one cycle in Marey's 1880 train schedule lets the eye track trains running off the right edge of the chart, picking them up on the left — without this redundancy, the reader must jump back to the beginning. Redundancy here supports continuous reading.
- **Complexity navigation:** "giving a context and order to complexity, facilitating comparisons over various parts of the data, perhaps creating an aesthetic balance."
- **One-number graphics:** A single uncomplicated value may not need the second erasing principle applied — the first (non-data-ink) is always applicable; the second (redundant data-ink) depends on whether the redundancy serves comprehension.

> "Redundancy, upon occasion, has its uses: giving a context and order to complexity, facilitating comparisons over various parts of the data, perhaps creating an aesthetic balance."
> — *The Visual Display of Quantitative Information*

The test: does the redundancy help the reader move through the data, or does it reinforce a number the reader already has?

## §7. Failure Modes

### Chartjunk taxonomy

> "The interior decoration of graphics generates a lot of ink that does not tell the viewer anything new."
> — *The Visual Display of Quantitative Information* (Chapter 5)

Three categories of non-data and redundant ink that appear routinely in scientific and technical publications:

| Failure mode | Description | Mechanism | Fix |
|---|---|---|---|
| Unintentional optical art (moire) | Dense cross-hatching, parallel lines, dot grids used to fill bars or areas | Interacts with the eye's physiological tremor to produce vibration and movement; noise clouds the data | Replace hatching with a single flat gray tint; label areas with words instead |
| The dreaded grid | Dense tick mesh arrayed across the data plane | Grid competes visually with the data marks it is meant to help locate; the more data, the worse the competition | Erase the grid; use a light reference line only when the data genuinely needs positional help |
| Self-promoting graphical duck | Elaborate 3D constructions, pictograms scaled by area/volume, perspective distortion | Decoration overwhelms the data; one variable (stacked depth of pyramids) has no label or scale | Use simple geometric marks; map one variable to one visual attribute |

### Named failure instances

- **JASA "proper form" histogram:** Published as a model graphic; required 131 line-strokes and 15 digits to communicate simple information. The dense vertical bar shading produced visible moire vibration.
- **Pauling atomic volume chart:** 63 grid marks (non-data-ink) competed with 76 data points; ratio dropped below 0.6.
- **New England Journal of Medicine pyramids:** 3D stacked pyramids introduced moire, a Necker-illusion flip between back planes, and an unlabeled depth axis. A simple table would have served.

### Ratio killers (ranked by frequency)

1. Grid mesh printed at full weight across the data plane
2. Bar/area fill shading (cross-hatch or dark solid)
3. 3D perspective applied to 2D data
4. Bilateral symmetry in box plots, bullet charts, faces
5. Duplicate axis labels on both sides of the chart
6. Decorative border frame around the entire graphic
7. Background color fill on the plot area

## §8. Do / Don't Pairs

### Chart frames

| Do | Don't |
|---|---|
| Use left axis line + bottom axis line only, or none | Draw a full four-sided box around the plot |
| Let data determine axis extent | Extend the frame beyond the data range |

### Bars and columns

| Do | Don't |
|---|---|
| Use a single left edge + top horizontal edge to define each bar | Fill bars with shading or cross-hatch |
| Label the value once (in the data or in a direct label) | Label the value and shade it and border it |
| Use dot plots for multi-category comparisons | Use grouped 3D bars |

### Grids and ticks

| Do | Don't |
|---|---|
| Use thin reference lines sparingly when positional reading is genuinely hard | Print a full mesh of grid lines at the same weight as the data |
| Erase tick marks when axis labels provide sufficient reference | Add ticks at every integer when only 5 data points exist |
| Use plain gray tint for area fills | Use cross-hatch, diagonal lines, or dot patterns |

### Symmetry

| Do | Don't |
|---|---|
| Use a half-box plot to show distribution shape | Mirror the box plot — the right half adds nothing |
| Use asymmetric half-faces if exploring Chernoff encoding | Display full Chernoff faces when half-faces carry the same data |
| Show one pass of a cyclical series unless navigation requires wrapping | Repeat data in a non-cyclical series purely for visual balance |

### Redesign editing

| Do | Don't |
|---|---|
| Run two passes: non-data-ink first, redundant data-ink second | Try to redesign in one pass — redundancy is harder to see before non-data-ink is gone |
| Use recovered white space to add genuinely new labels or annotations | Leave recovered space blank as a design choice unless the data needs breathing room |
| Keep horizontal connectors in paired-comparison charts — they encode the pairing structure | Erase structural ink that would change if the experimental design changed |

## §9. Application Checklist

Before finalizing any statistical graphic, run this erasure audit:

- [ ] Does every ink mark on this graphic change if the data changes? (If no, it is a candidate for erasure.)
- [ ] Is any data value represented more than once in ink? (If yes, erase all but one representation.)
- [ ] Are grid lines present? (Erase unless positional reading genuinely requires them; replace with light gray if keeping.)
- [ ] Are bars or areas filled with shading or hatching? (Erase fill; keep bounding edges only.)
- [ ] Does the chart have a four-sided frame? (Erase top and right lines at minimum.)
- [ ] Is there bilateral symmetry for a variable that is not itself bilateral? (Erase one side.)
- [ ] Is the y-axis label rotated 90 degrees? (Rotate to horizontal where space — recovered from erasing — permits.)
- [ ] After erasure, is there recovered space? (Consider direct labeling of interesting data points in that space.)
- [ ] What is the approximate data-ink ratio? (Target 0.7 minimum, 0.9 preferred.)
