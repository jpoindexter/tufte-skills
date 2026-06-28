---
name: tufte-graphical-integrity
description: Apply Tufte's six principles of graphical integrity and the Lie Factor formula to detect and eliminate distortion in data graphics.
tags: [tufte, data-visualization, graphical-integrity, lie-factor, statistical-graphics]
---
# Graphical Integrity

## Overview
Graphical integrity means that the physical representation of numbers on a graphic's surface is directly proportional to the numerical quantities represented. Violations are systematic and predictable: in practice nearly all distortions involve overstating the size of recent change. The Lie Factor formula makes these violations measurable rather than a matter of opinion.

## §1. The Lie Factor Formula

The fundamental measure of graphical dishonesty:

```
Lie Factor = (size of effect shown in graphic) / (size of effect in data)
```

**Thresholds:**

| Lie Factor | Verdict |
|---|---|
| 0.95 – 1.05 | Acceptable — minor plotting inaccuracies only |
| < 0.95 | Understates — graphic diminishes the effect |
| > 1.05 | Overstates — substantial distortion |
| 2 – 5 | Common range for published newspaper graphics |
| > 10 | Extreme; the graphic falsifies the news in the data |

Tufte sets the acceptable band at 0.95–1.05; outside this range, distortion goes beyond ordinary plotting error. Taking the logarithm symmetrizes comparison of overstating (positive) and understating (negative) deviations. Empirically, distortion almost always runs in one direction — Lie Factors of two to five appear regularly in published graphics. — *The Visual Display of Quantitative Information*

**How to compute it — worked example (Fuel Economy Standards, NYT, 1978):**

- Data: fuel economy standards rise from 18 mpg (1978) to 27.5 mpg (1985)
- Data effect: (27.5 − 18.0) / 18.0 × 100 = **53%**
- Graphic lines: 0.6 inches (1978) and 5.3 inches (1985)
- Graphic effect: (5.3 − 0.6) / 0.6 × 100 = **783%**
- Lie Factor: 783 / 53 = **14.8**

## §2. The Six Principles of Graphical Integrity

Tufte defines six principles of graphical integrity:

> "Graphical integrity is more likely to result if these six principles are followed."
> — *The Visual Display of Quantitative Information*

| # | Principle | What it rules out |
|---|---|---|
| 1 | Numbers should be physically represented on a graphic's surface in direct proportion to the quantities they encode. | Scaled pictograms, perspective distortion, non-zero baselines used to exaggerate slopes |
| 2 | Use clear, thorough labeling to prevent distortion and ambiguity — including written explanations directly on the graphic and annotations for key data events. | Unlabeled axes, missing units, no annotation of key events |
| 3 | Show data variation, not design variation. | Multiple scales, irregular intervals, varying canvas sizes across time |
| 4 | In time-series displays of money, deflated and standardized units of monetary measurement are nearly always better than nominal units. | Nominal dollar charts showing "skyrocketing" spending that is flat in real per-capita terms |
| 5 | The number of information-carrying (variable) dimensions depicted should not exceed the number of dimensions in the data. | 2D or 3D icons (barrels, doctors, dollar bills) used to show a single scalar value |
| 6 | Graphics must not quote data out of context. | Before/after charts that omit the surrounding trend; single-country comparisons that omit neighboring geographies |

## §3. Named Failure Modes — Case Catalog

Each entry gives the graphic, the Lie Factor, and the mechanism of distortion.

### Fuel Economy Standards for Autos (NYT, Aug 9, 1978)
- Data effect: +53% (18 → 27.5 mpg, 1978–1985)
- Graphic effect: +783% (line lengths 0.6 in → 5.3 in)
- **Lie Factor: 14.8**
- Mechanisms: perspective road receding to horizon reverses conventional time-flow; width of road shrinks due to simultaneous perspective and data change (viewer cannot separate them); date labels stay constant size despite moving toward vanishing point

### "In the Barrel" Oil Price Barrels (Time, Apr 9, 1979)
- Data effect: +454% (oil prices 1973–1979)
- Graphic effect (surface area): +4,280% → **Lie Factor: 9.4**
- Graphic effect (volume, if barrel metaphor taken seriously): +27,000% → **Lie Factor: 59.4**
- Mechanism: two-dimensional (or three-dimensional) icon used to represent one-dimensional price data

### OPEC Oil Derricks (Washington Post, Mar 28, 1979)
- Data effect: +708%
- Graphic effect: +6,700%
- **Lie Factor: 9.5**
- Mechanism: same as barrels — 2D area varied for 1D data

### OPEC Oil Price Chart (NYT, Dec 19, 1978)
- No single Lie Factor — the mechanism is design variation masquerading as data variation
- Five different vertical scales and two different horizontal scales in one graphic
- The same price for one year of oil occupies 0.31 sq in on the left and 4.69 sq in on the right — **15.1x difference in representation for the same quantity**
- Principle violated: Show data variation, not design variation

### The Shrinking Family Doctor (LA Times, Aug 5, 1979)
- Data: family practice doctors declining from 27% (1964) to 16% (1975) to 12% (1990)
- Data effect (1964→1990): −55.6% in share
- Graphic effect: doctor figure height (and proportional area) varies far beyond this
- **Lie Factor: 2.8** (not counting additional exaggeration from perspective and irregular horizontal spacing)
- Mechanism: 2D human figure used to represent 1D percentage

### Purchasing Power of the Diminishing Dollar (Washington Post, Oct 25, 1978)
- Shows dollar bills physically shrinking to depict inflation (1958: $1.00 → 1978: $0.44)
- Value of money is **one-dimensional**
- Varying both dimensions simultaneously — if area is to reflect purchasing power, the 1978 dollar should be about twice as large as depicted
- Mechanism: shrinking dollar fallacy — "many published efforts using areas to show magnitudes make the elementary mistake of varying both dimensions simultaneously in response to changes in one-dimensional data"

### New York State Budget (NYT, Feb 1, 1976)
- Nominal chart creates impression of sustained, rapid budget growth
- Reality (constant dollars per capita): budget grew ~20% from 1967–1970, then was essentially flat through 1976; 1977 shows a **decline**
- Graphic mechanisms (cumulative): 3D parallelepipeds placed in perspective so newer bars appear to tower over older ones; squeezed type for early years creates impression of a small stable base; upward-pointing arrows on recent bars; tall/thin canvas shape (2.7x taller than wide) amplifies apparent vertical growth
- Principle violated: time-series money must be deflated and standardized

### Nobel Prize Awards (National Science Foundation, 1974)
- Irregular horizontal scale: first 7 intervals = 10 years each; rightmost interval = only 4 years
- Creates apparent sharp decline in US prizes in the most recent period — the decline exists solely because the last interval is compressed
- With proper uniform scale, the US curve turned sharply upward post-1970
- Principle violated: Show data variation, not design variation

### Connecticut Traffic Deaths (before/after, 1955–1956)
- Single data point comparison makes speed enforcement appear uniquely effective
- Expanded series (1951–1959): the 1955–1956 drop falls within normal year-to-year variation
- Multi-state comparison: neighboring states (NY, MA, RI) show similar declines in the same year — the decline was region-wide, not enforcement-specific
- Principle violated: Graphics must not quote data out of context

## §4. Design Variation vs. Data Variation

The confounding of design variation with data variation is the most technically subtle integrity violation. It occurs when the visual canvas itself changes across the surface of the graphic, making the eye mistake design changes for data changes.

Tufte argues that when design elements vary across a graphic's surface alongside data, the eye cannot distinguish which changes belong to the data and which to the layout — an inherently deceptive condition. A stable, uniform canvas is the remedy. — *The Visual Display of Quantitative Information*

**The principle:** Show data variation, not design variation.

| Design variation type | Mechanism | Example |
|---|---|---|
| Multiple vertical scales in one frame | Area representing same quantity differs by position on graphic | OPEC price chart: 15.1x difference for same quantity |
| Non-uniform horizontal time axis | Compresses or expands recent intervals vs. historical | Nobel Prizes: 4-year vs. 10-year intervals |
| Shifting aspect ratio | Tall/thin canvas amplifies apparent vertical growth | NY State Budget: 2.7x taller than wide |
| Perspective receding to horizon | Combines data change with perspective shrinkage — indistinguishable | Fuel Economy road graphic |

## §5. Visual Area and Numerical Measure

One-dimensional data should be represented by one-dimensional ink. Using area or volume to represent a scalar value introduces two compounding errors:

1. The graphic distorts by the square (area) or cube (volume) of the intended distortion
2. Perceptual research shows people do not reliably convert perceived area or volume back to the correct linear proportion

> "The use of two (or three) varying dimensions to show one-dimensional data is a weak and inefficient technique, capable of handling only very small data sets, often with error in design and ambiguity in perception."
> — *The Visual Display of Quantitative Information*

**Do / don't pairs:**

| Do | Don't |
|---|---|
| Use line length or position on a common scale for 1D data | Use circle area, icon height+width, or 3D volume for 1D data |
| Scale one dimension only when using a scaled symbol | Scale both width and height in response to a single data change |
| Use dot plots or bar charts with a zero baseline | Use 3D bar charts where perspective creates false depth cues |
| If using circles, scale by radius (not area) and label values | Use pictograms (barrels, doctors, dollar bills) without acknowledging the area-vs-data mismatch |

**Barrel volume example:** A graphic showing oil prices via barrel *height* already has LF 9.4 by surface area. If a viewer interprets barrel *volume* as the measure, the implied LF rises to **59.4**.

## §6. Time-Series Distortions of Money

Nominal dollar charts nearly always create a false impression that spending or prices are growing more rapidly than they are in real terms.

> "In time-series displays of money, deflated and standardized units of monetary measurement are nearly always better than nominal units."
> — *The Visual Display of Quantitative Information*

**Three adjustments typically required:**

| Adjustment | Why it matters | NY State Budget example |
|---|---|---|
| Deflate for inflation | Nominal dollars overstate real growth | $1.00 in 1967 bought what $2.03 did in 1977 |
| Standardize per capita | Population growth alone inflates aggregate totals | NY State population grew 1.7M (10%) over the study period |
| Normalize aspect ratio | Tall/thin charts amplify apparent vertical growth | Budget chart was 2.7x taller than wide |

**Result of applying all three to the NY State budget:** What appeared as steep continuous growth becomes: +20% real per-capita growth 1967–1970, flat 1970–1976, then a decline in 1977. The real news story — a budget *cut* in real terms — was completely invisible in the nominal graphic.

## §7. Context is Essential

A graphic answers a question. The question is always "Compared to what?" A graphic that cannot answer comparisons lies by omission.

Tufte holds that every honest data graphic must engage the central question of quantitative reasoning — "Compared to what?" — and that sparse, data-thin graphics should trigger skepticism, since omitting comparison data is one of the most common ways a graphic deceives without technically lying. — *The Visual Display of Quantitative Information*

**Checklist for context:**

| Question | Adds what |
|---|---|
| What was the trend before the intervention? | Distinguishes real signal from noise and regression to the mean |
| What happened after? | Shows whether the effect persisted |
| What happened to comparable groups? | Separates local cause from regional or global trend |
| Is the baseline period cherry-picked? | Reveals whether the "before" was an anomalous extreme |

**Connecticut Traffic Deaths — three views:**

| Data shown | Apparent conclusion |
|---|---|
| 1955 and 1956 only | Crackdown caused dramatic decline |
| 1951–1959 | Drop looks like normal year-to-year variation around a stable trend |
| All four adjacent states, 1951–1959 | All states declined similarly — crackdown had no unique effect |

## §8. Labeling as Defense Against Distortion

Labels are not decorative — they are the primary defense against ambiguity and the reader's only check on a graphic that might be lying.

Tufte treats labeling as the primary weapon against graphical distortion: detailed, clear labels written directly on the graphic, with annotations marking significant events in the data. — *The Visual Display of Quantitative Information*

**Labeling do / don't:**

| Do | Don't |
|---|---|
| State the unit of measurement on every axis | Use bare numbers with no unit |
| Write out what the index base year is (e.g., 1972 = 100) | Use an unmarked index whose base is buried in a footnote |
| Annotate key events directly on the chart (wars, policy changes, recessions) | Rely on readers inferring causation from an unlabeled inflection |
| State whether dollars are nominal or real | Default to nominal and let readers assume real |
| Note data sources on the graphic | Attribute data only in a remote caption or not at all |

## §9. The Pravda School of Ordinal Graphics

Tufte identifies a systematic failure mode where designers get direction right but magnitudes wrong — showing only ordinal information (bigger/smaller) with fantasy quantitative scaling.

Tufte coined "Pravda School of Ordinal Graphics" to describe the rationalization that getting direction right is enough — producing charts with clear directional signals paired with wholly fabricated magnitudes. — *The Visual Display of Quantitative Information*

This is the rationalization behind most lying graphics: "At least it was approximately correct; we were just trying to show the general direction of change." But a 15-fold Lie Factor is not approximately correct, and when the distortion reverses the real story (a budget cut shown as rapid growth), ordinal correctness is not a meaningful defense.

**Numbers have magnitude, not just order.** Graphics that show only direction discard half the information in the data.

## §10. Quick-Reference Audit Protocol

Before publishing any data graphic, run this checklist:

```
[ ] Compute Lie Factor: effect in graphic / effect in data. Is it 0.95–1.05?
[ ] Are all axes uniform? Same scale throughout, no mid-chart breaks?
[ ] Is money inflation-adjusted and per-capita (if population changed)?
[ ] Does visual dimensionality match data dimensionality? (1D data → 1D ink)
[ ] Are all axes, units, and index bases labeled?
[ ] Are key events annotated directly on the graphic?
[ ] Is there enough surrounding context to answer "compared to what?"
[ ] Is the aspect ratio neutral — neither exaggerating nor suppressing slope?
[ ] Have decorative elements been stripped if they distort data positions?
```

Failing any item does not automatically mean the graphic is dishonest — but each failure raises the probability of a Lie Factor outside the acceptable band and should prompt explicit calculation.
