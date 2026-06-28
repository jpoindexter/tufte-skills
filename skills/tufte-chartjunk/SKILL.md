---
name: tufte-chartjunk
description: Identifies and eliminates the three categories of chartjunk — vibrations, grids, and ducks — that corrupt data communication by generating graphic activity unrelated to information.
tags: [tufte, data-visualization, chartjunk, visual-noise, data-ink]
---
# Chartjunk

## Overview
Chartjunk is any graphical element that does not communicate data — it consumes ink, area, and viewer attention while adding nothing to meaning. Tufte names three distinct types: vibrations (optical illusions from busy patterns), grids (heavy lines that compete with data), and ducks (decorative forms that overwhelm the data they supposedly display). The governing principle is that graphics stand or fall on their content, and no amount of ornament rescues a thin dataset or compensates for poor design. Decoration may amplify a weak graphic's failure, but it cannot generate insight where none exists.

---

## §1. Vibrations — Optical Illusions from Busy Patterns

Vibrations are optical interference effects produced when dense, repetitive patterns are applied to graphic elements. The most common source is moiré: two or more fine regular patterns (crosshatching, diagonal lines, dot screens) overlaid at slight angles produce a shimmering, unstable illusion that the eye cannot resolve into stable information.

### Mechanism
The visual system interprets closely spaced alternating high-contrast lines as motion or depth — a perceptual artifact, not data. The result is an eye-straining quality that contaminates the entire graphic and makes accurate reading of the underlying quantities impossible.

### Moiré as the Primary Vibration Source
Crosshatching applied to bar charts and area fills is the chief culprit in print and early computer graphics. Tufte's survey of textbooks and software manuals quantified prevalence:

| Publication | Year | % Graphics with Moiré Vibration | Total Graphics |
|---|---|---|---|
| Willard C. Brinton, *Graphic Methods for Presenting Facts* | 1914 | 12% | 255 |
| R. Satet, *Les Graphiques* | 1932 | 29% | 28 |
| Herbert Arkin & Raymond R. Colton, *Graphs: How to Make and Use Them* | 1936 | 17% | 95 |
| Mary Eleanor Spear, *Charting Statistics* | 1952 | 46% | 134 |
| Anna C. Rogers, *Graphic Charts Handbook* | 1961 | 32% | 201 |
| F. J. Monkhouse & H. R. Wilkinson, *Maps and Diagrams* | 1971 | 14% | 322 |
| Calvin F. Schmid & Stanton E. Schmid, *Handbook of Graphic Presentation* | 1979 | 22% | 399 |
| A. J. MacGregor, *Graphics Simplified* | 1979 | 34% | 65 |
| *SAS/GRAPH User's Guide* | 1980 | 68% | 28 |
| *Tell-A-Graf User's Manual* | 1981 | 53% | 459 |

The computer graphics manuals (SAS/GRAPH at 68%, Tell-A-Graf at 53%) show the worst rates — software that generates vibration by default is actively producing chartjunk at scale.

### The Bertin Test
Jacques Bertin argued that a designer's duty is to obtain resonance of moiré vibration without provoking an uncomfortable sensation — to "flirt with ambiguity without succumbing to it." Tufte's rebuttal:

> "Moiré vibration is an *undisciplined* ambiguity, with an illusive, eye-straining quality that contaminates the entire graphic. It has no place in data graphical design."
> — *The Visual Display of Quantitative Information*

No good examples exist of statistical graphics that successfully "flirt with ambiguity" via vibration. The pattern is always cost without benefit.

### Do / Don't: Vibrations

| Do | Don't |
|---|---|
| Solid fills, distinct grays, or white space to differentiate areas | Crosshatching, diagonal lines, or dot patterns on fills |
| Light gray or open fills for secondary data series | Dense alternating line patterns at any scale |
| Color saturation differences (print-safe) for categorical distinction | Overlapping screen patterns that produce moiré at any zoom level |
| Test fills at actual print resolution before committing | Rely on software defaults — most generate vibration by default |

**Failure mode — "The We-Used-A-Computer-To-Build-A-Duck Syndrome":** Computer output crosshatching is pointlessly ordered, produces optical vibration, and signals technology over content. The correct response to software-generated crosshatching is to turn it off, not to select a different pattern.

---

## §2. Grids — Lines That Compete with Data

The grid is the most sedate form of chartjunk, but when heavy it is still chartjunk. Grid lines serve one legitimate purpose: helping a viewer read and interpolate values. When they are darker, heavier, or denser than the data they support, they reverse priority — the grid becomes the graphic and data becomes secondary.

### The Governing Rule

In *The Visual Display of Quantitative Information*, Tufte argues that the grid should be muted or suppressed entirely in final output, kept implicit so it never competes with the data itself. Grids belong to the working stage — for plotting data at home or in the office — not to finished print graphics. Dark grid lines are, by definition, chartjunk.

### Grid Weight Hierarchy (ordered by correctness)

| Grid treatment | Data priority | Verdict |
|---|---|---|
| No grid, data-derived tick marks only | Data dominant | Preferred for most charts |
| Light gray grid, weight well below data strokes | Data dominant | Acceptable when look-up is required |
| White grid on filled bars (negative space grid) | Data dominant | Elegant alternative for bar charts/histograms |
| Medium gray grid, equal weight to data | Competing | Marginal; suppress if possible |
| Dark/black grid, full weight | Grid dominant | Chartjunk — suppress |
| Doubled grid lines (heavy box + inner grid) | Grid dominant | Severe chartjunk |

### Named Example: Population of France, 1967
The original age-sex pyramid appeared with a full dark grid. The grid camouflaged the profile of the data — the staircase shape encoding military losses (World War I, World War II) and post-war baby boom was buried in the grid lines. Removing the grid and letting the data silhouette speak produced a graphic where the historically significant notches became immediately visible.

### Named Example: Particle Physics Multiwindow Plot (Tukey & Tukey)
A "multiwindow plot" used doubled grid lines to separate panels. The doubled lines consumed **18 percent of the graphic's total area** — nearly one-fifth of the available space dedicated to structural decoration rather than data. Optical white dots appeared at grid intersections, adding a second vibration artifact on top of the grid. Redrawing with light panel separators eliminated both problems.

### Named Example: Marey Train Schedule
E. J. Marey's classic Paris-Lyon train schedule is an extremely data-dense graphic — every diagonal line is a train, every intersection a station stop. The original heavy grid is very active and competes with the train-line data. Three treatments compared:

| Treatment | Result |
|---|---|
| Heavy black grid (original) | Grid dominates; trains hard to trace |
| Thinned black grid | Helps a little; trains more readable |
| Gray grid | Best; trains clearly foreground; grid recedes to reference layer |

The correct fix is always a gray (not thinned-black) grid when a grid is required. Most ready-made graph paper comes with a darkly printed grid; use the reverse (unprinted) side so lines show through faintly without cluttering data.

### The Look-Up Exception
When a graphic functions as a look-up table — where readers will interpolate specific values — a grid may legitimately help. Even then: gray, muted, never dark. A gray grid with a delicate line may promote more accurate data reconstruction than a dark grid that visually overwhelms the points being read.

### Do / Don't: Grids

| Do | Don't |
|---|---|
| Suppress grid entirely for most charts | Heavy/dark grid lines in any published graphic |
| Use light gray grid only when look-up is the primary task | Doubled grid lines or box frames around panels |
| Use a white grid (negative space) within filled bar charts | Graph paper printed-side-up as a plotting surface for publication |
| Match grid weight to roughly 20-30% of data stroke weight | Grid lines equal to or heavier than data strokes |
| If grid is necessary, prefer gray over any thinned black | Dense grids in data-rich graphics where lines already cross frequently |

---

## §3. Ducks — Self-Promoting Graphics

The duck is chartjunk at its most severe: decoration that overwhelms, replaces, or structurally becomes the data. Named after "Big Duck," a duck-shaped building in Flanders, New York (photographed by Tufte), where the entire structure is decoration — the building is its own sign.

> "When a graphic is taken over by decorative forms or computer debris, when the data measures and structures become Design Elements, when the overall design purveys Graphical Style rather than quantitative information, then that graphic may be called a *duck*."
> — *The Visual Display of Quantitative Information*

### The Architectural Analogy (Venturi, Scott Brown, Izenour)
From *Learning from Las Vegas* (1977, p. 163): Modern architects who abandoned applied ornament unconsciously designed buildings that *were* ornament. The rule that follows:

> "It is all right to decorate construction but never construct decoration."

Applied to data graphics: axis labels, fills, borders, and annotations may be styled — but the graphic's structure must not itself become decoration. When fake perspective, 3-D extrusion, or pictorial frames are the structure, the graphic is a duck.

### Named Examples of Ducks

**American Education age-structure chart (1970s):** Five colors report five pieces of data — the percentage split between under-25 and 25-and-over college enrollees across five years. The design features blobs of color with organic, wave-like fills, dramatic curves, and no clear reading path. Five numbers require five data points, not a full-page color illustration. Tufte calls this "may well be the worst graphic ever to find its way into print."

**California Water Atlas, Applied Irrigation Water 1972:** A superbly produced duck — the colored block grids placed on each hydrologic basin region of California are visually spectacular. The heavy mosaic patterns produce vibration effects and the decorative density of the block grids overwhelms the quantitative information (acre-feet by crop type). Excellent craft in service of chartjunk.

**Cross-hatched bar chart from *American Political Science Review* (1979):** Nine categories of newspaper coverage, each bar filled with a different crosshatch pattern, axis overcrowded with percentage markers and labels, all text in upper-case sans serif. The "We-Used-A-Computer-To-Build-A-Duck Syndrome" in full effect: the correct response is a simple table.

The same data as a table:

| Issue Area | Number of Articles | % with Negative Criticism |
|---|---|---|
| Watergate | 537 | 49% |
| Inflation, high cost of living | 415 | 28% |
| Government competence | 322 | 30% |
| Confidence in government | 266 | 52% |
| Government power | 154 | 42% |
| Crime | 123 | 30% |
| Race | 103 | 25% |
| Unemployment | 100 | 13% |
| Shortages: energy, food | 68 | 16% |

The table conveys more: exact numbers, full category names, two columns of data — no vibration, no visual noise, immediate reading.

### Interior Decoration — The Core Failure Mode
The "interior decoration" failure mode is the duck expressed as a general design philosophy: treating a chart as a canvas to be styled rather than a communication to be optimized. Symptoms:

- Fake perspective added to bar or pie charts to appear "modern"
- 3-D extrusion that makes quantitative comparison impossible (the front face ≠ the data value)
- Pictorial fills (dollar bills in money charts, people icons in population charts) that obscure the very quantities they represent
- Color gradients applied to areas whose value is encoded by area, not color
- Drop shadows, glows, or embossing on any chart element
- Graphic complexity as a credential signal: "Isn't it remarkable that the computer can draw like that?" instead of "My, what interesting data."

### "Boutique Data Graphics" — The High-Fashion Duck
Corporate annual reports, mass media, and advertising actively cultivate the duck aesthetic. Tufte labels this "Boutique Data Graphics" — chartjunk at high fashion, producing visually elaborate displays whose complexity is inversely related to their informational value. Fake perspective is the signature technique of this genre.

### Do / Don't: Ducks

| Do | Don't |
|---|---|
| Let data structure determine graphic structure | Let graphic structure become decoration |
| Use a table when the data is a few numbers and many words | Use a multicolor chart for 5 data points |
| Design to provoke "My, what interesting data" | Design to provoke "Isn't it remarkable the computer drew that" |
| Decorate construction (style axis labels, type, weight) | Construct decoration (extrude bars into 3-D, add fake perspective) |
| Test: can the decoration be removed without losing information? | Any decoration that cannot be removed without information loss |

---

## §4. Chartjunk and Data Density — The Corruption Mechanism

Chartjunk does not merely waste space — it actively corrupts. The corruption operates through three channels:

**1. Perceptual masking.** Vibration and heavy grids raise the visual noise floor. Data signals that are genuinely present (the notch in the French population pyramid, the slope of a trend line) become unreadable against the background noise.

**2. False complexity.** A graphic crammed with crosshatching, borders, grids, and fills reads as information-dense even when it encodes 5 data points. The viewer's time and attention are consumed decoding the structure rather than reading the data.

**3. Displaced trust.** When a graphic evokes "remarkable that a computer drew this," viewer attention shifts to the medium rather than the message. The data's credibility depends on the data, not on the sophistication of the rendering.

### The Fundamental Test

In *The Visual Display of Quantitative Information*, Tufte argues that chartjunk fails even on its own terms. Data graphics succeed or fail on their content, gracefully displayed; ornamental hatching and false perspective add nothing to a weak dataset. Decoration can amplify the failure of a dull graphic — making it worse — but it has never rescued a thin data set from its own emptiness.

### Data-Ink Ratio as a Chartjunk Detector
Every element of chartjunk reduces the data-ink ratio. Applying the ratio as an audit:

```
Data-Ink Ratio = Data Ink / Total Ink Used to Print the Graphic
```

- Moiré fill on a bar: adds non-data ink, reduces ratio
- Heavy grid: adds non-data ink, reduces ratio
- 3-D extrusion: adds non-data ink AND distorts data ink, doubly penalized
- Decorative border: adds non-data ink, reduces ratio

A chartjunk audit is a data-ink ratio audit. Every element that cannot be defended as encoding data or as a minimal navigational aid (a single axis line, a muted grid for look-up) is chartjunk.

---

## §5. Diagnosis Checklist — Identifying Chartjunk

Run these checks before publishing any chart:

| Check | Pass condition | Fail = chartjunk type |
|---|---|---|
| Are fills solid, gray, or open? | Yes | Vibration (crosshatch/moiré) |
| Is the grid lighter than data strokes? | Yes, or no grid | Grid chartjunk |
| Does the grid use gray rather than black? | Yes, or no grid | Grid chartjunk |
| Can you read the data profile without the grid? | Yes | Grid chartjunk |
| Does removing any element lose information? | Yes for each element kept | Duck (decoration) |
| Is the number of ink marks proportional to the number of data points? | Roughly yes | Duck |
| Does the chart evoke curiosity about the data, not the rendering? | Yes | Duck |
| Are there more percentage markers on the axis than data points? | No | Duck (overcrowded axis) |
| Is perspective purely flat/2-D? | Yes | Duck (fake 3-D) |
| Would a table communicate this more accurately? | No | Duck (few numbers, chart form unjustified) |

---

## §6. Remediation Patterns

### Vibration Fix
1. Replace all crosshatch/pattern fills with solid fills, grays, or white.
2. If differentiating multiple series: use lightness steps (white → light gray → medium gray → dark gray → black) before resorting to patterns.
3. If software generates crosshatch by default: override in the rendering layer; never accept default fill patterns.

### Grid Fix
1. First attempt: delete the grid entirely. Can you still read the chart? If yes, leave it deleted.
2. If look-up is required: set grid stroke to 10-20% gray, weight 0.25pt or below (vs. ~1pt for data).
3. Alternative: use a white grid (plot grid as gaps within filled bars, or erase grid lines to white on a gray/colored background).
4. Never use graph paper printed-side-up. Use back side or plain paper.

### Duck Fix
1. Remove all elements that do not encode data.
2. Flatten any 3-D extrusion to 2-D.
3. Remove fake perspective.
4. If the graphic structure itself is decoration (the fill is the message), redraw from scratch as a 2-D chart or table.
5. When data is fewer than ~10 numbers and the story is comparative: use a table, not a chart.

---

## §7. The Conclusion Tufte States Directly

> "Forgo chartjunk, including moiré vibration, the grid, and the duck."
> — *The Visual Display of Quantitative Information*

No information, no sense of discovery, no wonder, no substance is generated by chartjunk. The best graphics — Minard on Napoleon in Russia, Marey's train schedule, the *Times* weather history of New York City — are intriguing and curiosity-provoking through narrative power, immense detail, or elegant presentation of genuinely interesting data. None of these qualities is achievable through decoration.
