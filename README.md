# Tufte Skills — Edward Tufte's Visual Design Principles as Claude Code Skills

**27 reference-grade skills** extracted from all five Edward Tufte books, formatted as Claude Code `SKILL.md` files. Each skill carries Tufte's named principles, formulas and thresholds (Lie Factor, data-ink ratio, the 1+1=3 noise rule, aspect-ratio math), comparison tables, do/don't pairs, and named failure modes — written as original reference prose with brief attributed quotations, not reproductions of the source text.

When a skill is installed, Claude loads its full content at the start of a relevant design task and works from the actual principle, not a vague memory of it.

---

## Skills (27 total)

Grouped by primary source book. Many principles span several books; each skill names every source it draws from.

### The Visual Display of Quantitative Information (VDQI, 1983 / 2001)

| Slug | Covers |
|---|---|
| `tufte-graphical-excellence` | The five criteria of excellence, the ideas/time/ink/space formula, the four exemplary graphic forms, the substance/statistics/design test |
| `tufte-graphical-integrity` | The Lie Factor, the six integrity principles, contextual scaling, full-range axes — measuring and removing distortion |
| `tufte-data-ink-ratio` | The two-pass erasure procedure, graphical redesign, converting frame/tick ink into data |
| `tufte-chartjunk` | The three categories — vibrations, grids, ducks — and how to audit any graphic for ink that carries no data |
| `tufte-data-density` | Data density and data-matrix size: the formulas, the typographic-density yardstick, the Shrink Principle, three viewing depths |
| `tufte-small-multiples` | Identical structure, shared scale and encoding, only the data changing — for direct comparison across conditions, time, or variables |
| `tufte-multifunctioning-elements` | Elements that carry several data functions at once: data-built marks, data-based grids, range-frame, dot-dash-plot, quartile plot |
| `tufte-aesthetics-and-technique` | The visual craft of a finished graphic: friendly vs unfriendly, the golden rectangle, thin-line work, beauty as a by-product of clarity |

### Envisioning Information (EI, 1990)

| Slug | Covers |
|---|---|
| `tufte-escaping-flatland` | The two goals (more dimensions, higher density) reached through five methods — the framework for putting multivariate data on a flat surface |
| `tufte-layering-and-separation` | The 1+1=3 noise rule, the noise formula, figure/ground, weight hierarchy, color as a layering tool |
| `tufte-micro-macro-readings` | Displays that read at two scales at once: the individual datum up close, the aggregate pattern from a distance |
| `tufte-color-in-information-design` | The four functional uses of color, color's three dimensions, Imhof's four rules, palette strategy, redundant coding |
| `tufte-data-maps` | Data maps as the densest escape from flatland — increasing dimensions and density, letting the data question override cartographic convention |
| `tufte-redundant-encoding` | Warranted multi-channel encoding for robustness, separation, and accessibility without generating 1+1=3 noise |

### Visual Explanations (VE, 1997)

| Slug | Covers |
|---|---|
| `tufte-narrative-and-sequence` | Quantified images, the causally relevant axis variable, showing all data including zero-effect cases, motion in static displays, smallest effective difference |
| `tufte-causal-reasoning-in-graphics` | Designing graphics that demonstrate causality not correlation — the Snow cholera map and Challenger O-ring analyses |
| `tufte-space-time-graphics` | Graphical timetables: encoding movement, speed, and scheduling conflict by mapping position against time |

### Beautiful Evidence (BE, 2006)

| Slug | Covers |
|---|---|
| `tufte-analytical-design` | The six principles of analytical design — comparison, causality, multivariate data, integration, documentation, content primacy |
| `tufte-sparklines` | Word-sized data graphics: design rules, the density argument, aspect-ratio math, variations, anchoring methods |
| `tufte-cognitive-style` | How the bullet-and-slide format degrades reasoning — the named deficiencies, density thresholds, the Columbia case, the written-report remedy |
| `tufte-evidence-corruption` | Five ways evidence is corrupted — effects without causes, cherry-picking, overreaching, chartjunk, the rage to conclude — and detection methods |
| `tufte-mapped-pictures` | Turning a representational image into evidence with measurement scales, the x-y-z-t grid, on-image labels, and a falsifiable mapping |
| `tufte-link-differentiation` | Diagram connectors as differentiated evidence about each relationship — type, direction, strength, certainty, mechanism |
| `tufte-parallelism` | Visual parallels that answer "compared with what?" — position, orientation, overlap, synchronization; flap/superimposed/synchronized variants |
| `tufte-visual-confections` | Compositions that juxtapose heterogeneous, real-and-imagined image-events to make an argument |

### Seeing with Fresh Eyes (SWFE, 2020)

| Slug | Covers |
|---|---|
| `tufte-visual-thinking` | The SEE / REASON / ACT triad, model criticism and remodeling, graphical sentences and stacklists, data-analysis integrity |
| `tufte-typography-for-data` | Content-responsive typography: space and linebreaks as meaning, direct labeling over legends, data paragraphs, annotation as evidence (VDQI + EI + BE + SWFE) |

---

## Installation

### Via install.sh (local)

```bash
git clone https://github.com/jpoindexter/tufte-skills.git
cd tufte-skills
./install.sh
```

Skills install to `~/.claude/skills/<slug>/SKILL.md`. Reload Claude Code to pick them up.

Dry run (shows what would be installed without writing):

```bash
./install.sh --dry-run
```

### Via npx

```bash
npx tufte-skills
```

---

## Using a skill

Once installed, invoke any skill by name in Claude Code:

```
/tufte-data-ink-ratio
/tufte-graphical-integrity
/tufte-small-multiples
```

Or reference it in context: "Apply tufte-sparklines to this dashboard design," or "audit this chart with tufte-chartjunk." Claude also auto-loads the relevant skill when a design task matches its description.

---

## Book Sources

All five Tufte books are primary sources. Skills cite chapter and page where relevant.

1. **The Visual Display of Quantitative Information** (VDQI) — Graphics Press, 1983; 2nd ed. 2001. The foundational text: graphical excellence and integrity, the data-ink ratio, chartjunk, small multiples, data density.
2. **Envisioning Information** (EI) — Graphics Press, 1990. Escaping flatland, layering and separation, color, data maps, micro/macro readings.
3. **Visual Explanations** (VE) — Graphics Press, 1997. Evidence and narrative, causality, space-time graphics, the Challenger analysis, John Snow's cholera map.
4. **Beautiful Evidence** (BE) — Graphics Press, 2006. Analytical design, sparklines, mapped pictures, links and causal arrows, the cognitive style of PowerPoint.
5. **Seeing with Fresh Eyes** (SWFE) — Graphics Press, 2020. The seeing/reasoning/acting discipline, content-responsive typography, visual thinking as practice.

---

## SKILL.md Format

Each skill follows this structure:

```
---
name: tufte-<slug>
description: <one-sentence description of what it covers and when to use it>
tags: [tufte, data-visualization, ...]
---
# <Principle Title>

## Overview
<core insight, why it matters, the problem it solves>

## §1. <First named sub-principle>
...

## §N. Do / Don't
| Do | Don't |
|---|---|
| ... | ... |
```

Sections are numbered (§1, §2…). Skills carry comparison tables for any decision with more than two options, concrete formulas and thresholds where Tufte gives them, named failure modes, and short attributed quotations (one sentence each).

---

## License & Copyright

These skills are **original reference documents** that explain Tufte's principles in their own words. Direct quotations are brief, single-sentence, and attributed — used for educational commentary, not reproduction. No skill reproduces a substantial portion of any copyrighted work; the books themselves are published by Graphics Press and must be purchased separately. This library is not affiliated with or endorsed by Edward Tufte or Graphics Press.

MIT License covers the skill format, installer, and surrounding code. Quotations remain the property of their copyright holders.
