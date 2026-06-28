# Tufte Skills — Edward Tufte's Visual Design Principles as Claude Code Skills

20 reference-grade skills extracted from all 5 Tufte books, formatted as Claude Code SKILL.md files. Each skill contains direct quotations, named principles, numbered procedures, do/don't tables, and self-check checklists drawn from the primary texts — not summaries or paraphrases.

---

## Skills (20 total)

Skills are organized by primary source book. Many principles span multiple books; each skill names all sources it draws from.

### The Visual Display of Quantitative Information (VDQI, 1983/2001)

| Slug | Description |
|---|---|
| `tufte-aesthetics-and-technique` | Core aesthetic principles: data-ink ratio, the erasure procedure, graphic proportion, line weight, and the six qualities of attractive displays |
| `tufte-graphical-integrity` | Honest data representation: the Lie Factor, contextual scaling, full-range axes, and the ethics of visual encoding |
| `tufte-small-multiples` | Faceted display: showing many versions of the same graphic to enable direct comparison across a data variable |
| `tufte-data-density` | Maximizing information density per unit display area through micro/macro readings and layered complexity |

### Envisioning Information (EI, 1990)

| Slug | Description |
|---|---|
| `tufte-multifunctioning-elements` | Designing every visual component to carry multiple data dimensions simultaneously |
| `tufte-layering-and-separation` | Organizing information into visual layers with distinct line weight, color, and spatial hierarchy for simultaneous depth and clarity |
| `tufte-color-and-information` | Using color as precise information encoding: when to use it, how many hues, labeling over legend |
| `tufte-escaping-flatland` | Representing complexity and dimensionality in 2D flat displays through layering, faceting, and encoding |
| `tufte-micro-macro-readings` | Designing displays that work at both the overview and the detail level simultaneously |

### Visual Explanations (VE, 1997)

| Slug | Description |
|---|---|
| `tufte-narrative-and-sequence` | Visual explanation of process, causality, and change — selecting the causally relevant axis variable and representing motion in static displays |
| `tufte-evidence-and-causality` | Marshaling evidence for causal inference: showing mechanism, ruling out confounds, the Challenger and John Snow examples |
| `tufte-confections` | Assembled visual explanations combining narrative, data, image, and annotation into a single integrated display |
| `tufte-visual-mechanism` | Explaining physical mechanism, motion, and process through annotated static images and sequential diagrams |

### Beautiful Evidence (BE, 2006)

| Slug | Description |
|---|---|
| `tufte-cognitive-style` | How bullet-point culture degrades analytical thinking — and what good analytical communication requires instead: sentences, integration, documentation, density |
| `tufte-sparklines` | Word-sized, intense, simple data graphics designed to be embedded in prose and tables |
| `tufte-analytical-design` | The six principles of analytical design: comparison, causality, multivariate data, integrated evidence, documentation, content primacy |
| `tufte-image-annotations` | Annotating images with words, numbers, and arrows to transform depiction into evidence |
| `tufte-links-and-causal-arrows` | Diagramming cause, effect, and comparison: when and how to use connecting lines, arrows, and nodes |
| `tufte-words-and-images` | Integrating prose, numbers, and images on the same surface rather than segregating them by medium |

### Seeing with Fresh Eyes (SFE, 2020)

| Slug | Description |
|---|---|
| `tufte-seeing-fresh` | The practice of fresh observation: noticing what is actually present in visual fields rather than confirming expectations |

---

## Installation

### Via install.sh (local)

```bash
git clone https://github.com/jasonpoindexter/tufte-skills.git
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
/tufte-aesthetics-and-technique
/tufte-graphical-integrity
/tufte-small-multiples
```

Or reference it in context: "Apply tufte-sparklines to this dashboard design."

---

## Book Sources

All five Tufte books are primary sources. Skills cite chapter and page where relevant.

1. **The Visual Display of Quantitative Information** (VDQI) — Graphics Press, 1983; 2nd ed. 2001. The foundational text: data-ink ratio, chartjunk, graphical integrity, small multiples.

2. **Envisioning Information** (EI) — Graphics Press, 1990. Escaping flatland, layering and separation, color and information, multifunctioning elements.

3. **Visual Explanations** (VE) — Graphics Press, 1997. Images and quantities, evidence and narrative, animation, the Challenger analysis, John Snow's cholera map.

4. **Beautiful Evidence** (BE) — Graphics Press, 2006. Analytical design principles, sparklines, image annotations, links and causal arrows, the cognitive style of PowerPoint.

5. **Seeing with Fresh Eyes** (SFE) — Graphics Press, 2020. Fresh observation, noticing, visual thinking as a practiced discipline.

---

## SKILL.md Format

Each skill follows this structure:

```
---
name: tufte-<slug>
description: <one-sentence description>
tags: [tufte, ...]
---
# <Principle Title>

**Source:** <Book(s)>, <Year>, Chapter(s)

## Overview
<~150-word framing of the principle>

## §1. <First named sub-principle>
...

## §N. Do / Don't Pairs
| Do | Don't |
|---|---|
| ... | ... |

## Self-Check
| Question | Red flag if... |
|---|---|
| ... | ... |
```

Skills contain direct quotations (attributed), named procedures, numbered rules, and concrete examples from the primary texts. They do not paraphrase or generalize beyond what Tufte states.

---

## Status

| Slug | Status |
|---|---|
| `tufte-aesthetics-and-technique` | complete |
| `tufte-cognitive-style` | complete |
| `tufte-multifunctioning-elements` | complete |
| `tufte-narrative-and-sequence` | complete |
| `tufte-graphical-integrity` | planned |
| `tufte-small-multiples` | planned |
| `tufte-data-density` | planned |
| `tufte-layering-and-separation` | planned |
| `tufte-color-and-information` | planned |
| `tufte-escaping-flatland` | planned |
| `tufte-micro-macro-readings` | planned |
| `tufte-evidence-and-causality` | planned |
| `tufte-confections` | planned |
| `tufte-visual-mechanism` | planned |
| `tufte-sparklines` | planned |
| `tufte-analytical-design` | planned |
| `tufte-image-annotations` | planned |
| `tufte-links-and-causal-arrows` | planned |
| `tufte-words-and-images` | planned |
| `tufte-seeing-fresh` | planned |

---

## License

Skills are original reference documents synthesizing publicly available descriptions of Tufte's principles. Direct quotations are brief, attributed, and used for educational commentary — they do not reproduce substantial portions of any copyrighted work. The Tufte books themselves are published by Graphics Press and must be purchased separately. This library is not affiliated with or endorsed by Edward Tufte or Graphics Press.

MIT License for the skill format and surrounding code. Quotations remain the property of their respective copyright holders.
