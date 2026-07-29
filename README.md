# Tufte Skills — Edward Tufte's Visual Design Principles as Agent Skills

![38 skills + router](https://img.shields.io/badge/skills-38%20%2B%20router-1a1a1a)
![Sources: 5 books](https://img.shields.io/badge/sources-5%20books-6b7280)
![Verified against the printed page](https://img.shields.io/badge/claims-verified%20page--by--page-2f6f4e)
![Agent-agnostic](https://img.shields.io/badge/agents-Claude%20Code%20%C2%B7%20Codex%20%C2%B7%20Copilot%20%C2%B7%20Gemini-4b5563)
![MIT](https://img.shields.io/badge/license-MIT-1a1a1a)

**38 reference-grade skills + a `tufte` router**, extracted from all five Edward Tufte books as agent-agnostic `SKILL.md` files — they work in Claude Code, Codex CLI, Copilot CLI, Gemini CLI, and any agent that can read a file. Each skill carries Tufte's named principles, formulas and thresholds (Lie Factor, data-ink ratio, the 1+1=3 noise rule, aspect-ratio math), comparison tables, do/don't pairs, and named failure modes — written as original reference prose with brief attributed quotations, not reproductions of the source text.

```bash
git clone https://github.com/jpoindexter/tufte-skills.git && cd tufte-skills && ./install.sh
```

Then hand your agent the work, not a skill name: `/tufte audit this dashboard`

When a skill is installed, the agent loads its full content at the start of a relevant design task and works from the actual principle, not a vague memory of it.

Every claim in every skill has been read back against the printed page. The library was built in four passes: extract, re-extract, adversarially verify each skill against its source book, then test the router itself against realistic tasks. That process removed roughly a hundred factual and citation errors — including an inverted framing, a misattributed quotation, and a chapter-boundary error that had propagated across three files — and the pack carries no run of two consecutive sentences from any source.

## The router — `/tufte`

**Don't pick a skill. Describe the task and let the router pick.**

`skills/tufte/` is the pack's only front door. Invoke it by name (`/tufte` in Claude Code, `$tufte` in Codex, or just "tufte" in any agent) and hand it the work — "audit this dashboard", "our funnel chart for the board deck", "this 200-row table reads like a wall". The router matches the task against a 49-row signal→skill table, decides which 1–4 skills apply, loads them, and applies them. It is a dispatcher, not a document: it never returns a catalogue of the pack.

Three things make that decision reliable:

- **A precedence block** for the collisions that actually happen — dataset-vs-presentation-vs-causal-claim audits, meeting-format vs deck-format questions, photo annotation vs chart annotation. When several rows fire, it takes the narrowest and at most one broader.
- **A 12-point Master Audit** to run before any display ships, each point naming the skill to load on a failure.
- **Triggers written in your vocabulary, not Tufte's** — "dashboard", "heatmap", "mobile", "accessibility", "PRD", "vendor demo", "changelog". The routing table was scored against 25 realistic product-design tasks and rebuilt where it missed.

It loads siblings by file path (`../<slug>/SKILL.md`), so it works in every runtime — no Claude-specific tooling required. `skills/tufte/CANON.md` is the single-file fallback: the whole pack condensed into one document, one section per skill, for runtimes where loading siblings is impractical.

Invoking a skill directly still works (`/tufte-sparklines`), and agents with auto-discovery will load one when a task matches its description — but the router is the intended entry point.

---

## Skills (38 + router)

Grouped by primary source book. Many principles span several books; each skill names every source it draws from. The `tufte` router (above) fronts them all.

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
| `tufte-aesthetics-and-technique` | The visual craft of a finished graphic: friendly vs unfriendly, proportion, thin-line work, beauty as a by-product of clarity |
| `tufte-tables-and-text-tables` | The sentence → text-table → table → semi-graphic → graphic format ladder, the 20-number rule, supertable grammar, semi-graphic hybrids |
| `tufte-graphical-competence` | Why organizations ship bad graphics — the three causes, the Pravda School, the relational-graphic metric, the three-skills remedy (VDQI ch. 3) |

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
| `tufte-disinformation-design` | Magic inverted — two-viewpoint instruction geometry, the detection catalog for displays built to conceal, copied-error provenance (VE ch. 3) |

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
| `tufte-integration-of-modes` | Words, numbers, and images together — mode segregation as a production artifact, the Newton's *Opticks* 300-year case, layering over deletion |
| `tufte-presentation-of-artifacts` | The Fallacy of the Pedestal — presentation apparatus accreting around finished work; chrome, frames, mounts, and packaging as physical chartjunk |

### Seeing with Fresh Eyes (SWFE, 2020)

| Slug | Covers |
|---|---|
| `tufte-visual-thinking` | The SEE / REASON / ACT triad, model criticism and remodeling, graphical sentences and stacklists, data-analysis integrity |
| `tufte-typography-for-data` | Content-responsive typography: space and linebreaks as meaning, direct labeling over legends, data paragraphs, annotation as evidence (VDQI + EI + BE + SWFE) |
| `tufte-annotation-as-thinking` | Annotation as a mode of thinking — the expert-at-your-side principle, layered commentary from Kircher to the Talmud page; unannotated evidence is decorative |
| `tufte-instructions-at-point-of-need` | Instructions at the exact place and moment of action — wayfinding, stroke-order coding, real-time surgical checklists, glare and legibility in the physical environment |
| `tufte-lists` | The list as information architecture — ordering principle as a claim about the world, stacklists in 2-space, Borges' reductio, depth budgets (SWFE ch. 7) |
| `tufte-meetings-and-documents` | The study-hall meeting protocol — dense paper document + silent reading + discussion; Jobs/Bezos practice, time budgets, the low-power concerns-list variant (SWFE ch. 8) |
| `tufte-data-forensics` | The step-by-step analysis audit — prevalence-based screening, moment-of-measurement checks, the Lucent traceability triad, follow-the-money, credibility narratives (SWFE ch. 4) |
| `tufte-visual-index` | Visual, browsable back matter — thumbnails as retrieval keys, ordering by space/time/subject, the recursive quilt-of-sources test (SWFE ch. 9) |

---

## Installation

### Via install.sh (local)

```bash
git clone https://github.com/jpoindexter/tufte-skills.git
cd tufte-skills
./install.sh
```

Skills install to every detected agent skills directory:

| Agent | Directory |
|---|---|
| Claude Code | `~/.claude/skills/` |
| Codex CLI | `~/.codex/skills/` |
| Copilot CLI / agentskills-spec agents | `~/.agents/skills/` |

Override the targets with a colon-separated list:

```bash
TUFTE_SKILLS_DIRS="$HOME/.claude/skills:$HOME/.config/opencode/skills" ./install.sh
```

Dry run (shows what would be installed without writing):

```bash
./install.sh --dry-run
```

Restart your agent to pick up new skills.

### Via npx

```bash
npx tufte-skills
```

---

## Using the pack

Describe the work; the router chooses the skills:

```
/tufte audit this dashboard                      # Claude Code
$tufte our funnel chart for the board deck       # Codex CLI
/tufte this 200-row table reads like a wall
/tufte is this A/B readout actually causal?
/tufte the deck for Thursday's design review
```

Each of those hits a different row and loads a different set — sparklines + tables + data-density for the dashboard; graphical-integrity for the funnel's 1-D-drawn-as-2-D taper; micro-macro + tables for the long table; causal-reasoning for the readout; meetings-and-documents for the review. You don't have to know that mapping, which is the point.

Direct invocation still works when you already know what you want — `/tufte-data-ink-ratio`, `/tufte-graphical-integrity`, `/tufte-small-multiples` — as does referencing one in context ("audit this chart with tufte-chartjunk"). Agents with skill auto-discovery will also load a skill whose description matches the task.

In agents without native skill support, point the agent at the installed files: "read `~/.agents/skills/tufte/SKILL.md` and follow it" — the router's sibling references are plain file paths, so routing works from a file-read alone.

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
description: "Use when <trigger conditions and symptoms — never a summary of contents>"
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

## How it was built

Four passes, because the first two weren't enough:

| Pass | Job | Outcome |
|---|---|---|
| 1 | Extract from all five books | 27 skills, then audited page-by-page — ~40 factual and citation errors fixed |
| 2 | Re-extract with a changed mission | +11 skills from chapters the first pass parked; one book returned "residue thin," and that was accepted |
| 3 | Adversarially verify every new skill against its source | ~55 wrong claims fixed, incl. an inverted framing, a misattributed quote, and one 2-sentence verbatim run |
| 4 | Mine the dropped backlog, then test the router itself | 34 orphaned items applied; the router mis-routed 12 of 25 realistic tasks and was rebuilt |

Every claim in every skill has been read back against the printed page. Where a figure could not be confirmed, it was softened or removed rather than left as unverifiable precision — the same discipline the pack teaches.

---

## License & Copyright

These skills are **original reference documents** that explain Tufte's principles in their own words. Direct quotations are brief, single-sentence, and attributed — used for educational commentary, not reproduction. No skill reproduces a substantial portion of any copyrighted work; the books themselves are published by Graphics Press and must be purchased separately. This library is not affiliated with or endorsed by Edward Tufte or Graphics Press.

MIT — see [LICENSE](LICENSE), and [NOTICE.md](NOTICE.md) for what it does and doesn't cover. The license applies to the skill documents, installer, and surrounding code; quotations remain the property of their copyright holders.

**Buy the books.** They are the source, and they are better than any summary of them: [edwardtufte.com/books](https://www.edwardtufte.com/books/).
