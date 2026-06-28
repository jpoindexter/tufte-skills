---
name: tufte-mapped-pictures
description: Establishes when and how to annotate any visual — photograph, map, drawing, satellite image, anatomical plate — with scale bars, coordinate grids, categorical overlays, cross-section markers, and quantitative legends so it functions as falsifiable, readable evidence rather than decoration.
tags: [tufte, data-visualization, mapped-pictures, images-as-evidence, annotation, cartography, information-design, scale-references]
---
# Mapped Pictures: Images as Evidence

## Overview

A picture without quantitative annotation is decoration. The same picture with a calibrated scale bar, a coordinate grid, and a labeled overlay becomes a data display capable of carrying thousands of numbers, generating hypotheses, and supporting causal arguments. Tufte's mapped-pictures framework identifies the specific additions — scale references, symbol systems, cross-section markers, coordinate grids, multi-variable encodings — that cross a visual from illustration into evidence. The test is strict: a viewer must be able to extract a number from the image without leaving it.

The data map is the oldest form of this transformation. A geographic outline is not evidence. A geographic outline overlaid with dot-density, shaded counties, directional vectors, and a calibrated legend carries 21,000 numbers in the space of a page — and that density is the argument.

---

## §1. The Evidentiary Standard: Illustration vs. Evidence

The core distinction is measurability. An illustrative picture shows what something looks like. An evidentiary picture lets the viewer measure, compare, and falsify.

> "Only a picture can carry such a volume of data in such a small space. Furthermore, all that data, thanks to the graphic, can be thought about in many different ways at many different levels of analysis — ranging from the contemplation of general overall patterns to the detection of very fine county-by-county detail."
> — *The Visual Display of Quantitative Information*, p. 16

**The measurability test** — ask these three questions before calling an annotated image complete:

1. Can a viewer extract at least one specific number without leaving the image?
2. Can two points in the image be compared quantitatively, not just visually?
3. Does the annotation survive removal of prior knowledge — would a stranger read the same value?

If any answer is no, the image is still illustration.

| Image type | Illustrative form | Evidentiary form |
|---|---|---|
| Street map | Named roads, building outlines | + Scale bar, dot per death, pump locations (John Snow, 1854) |
| Geographic outline | Coastline and county borders | + Shaded tones keyed to 5 statistical significance levels (cancer atlas) |
| Sky photograph | Star field | + Grid of 1,024 × 2,222 cells, 10-tone galaxy-count key |
| Engineering drawing | Bridge elevation | + Water-level marker, foundation-depth cross-section, stratigraphy labels |
| World map | Continent outlines | + Directional stroke vectors for wind (Halley, 1686) |

**DO:** Ask what number a viewer should be able to read before designing the annotation.

**DON'T:** Add annotation after the image is "done" — it will be cosmetic rather than structural.

---

## §2. Scale References: The First Obligation

Every spatially interpreted image requires at least one calibrated scale reference. Without it, relative sizes, distances, and densities are guesses.

### Forms of scale reference

**External scale bar** — a labeled ruler placed in the image margin or a corner. John Snow's 1854 cholera map carries a scale bar reading "50 — 0 — 50 Yards — 100 — 150 — 200" with X marks for pumps and dots for deaths. The scale bar makes the spatial clustering around the Broad Street pump not merely visible but measurable: the pump sits at the center of the death cluster within a radius of roughly 250 yards.

**Internal coordinate grid** — the grid itself is the scale. The Yü Chi Thu (Map of the Tracks of Yü the Great), carved in stone in 1137 CE but probably dating from before 1100, uses a regular grid at 100 *li* per division across the entire map surface. Joseph Needham's assessment:

> "The scale of the grid is 100 li to the division. The coastal outline is relatively firm and the precision of the network of river systems extraordinary. The size of the original, which is now in the Pei Lin Museum at Sian, is about 3 feet square. . . . There was nothing like it in Europe till the Escorial MS. map of about +1550."
> — *Science and Civilisation in China*, vol. 3, pp. 546–547, quoted in *The Visual Display of Quantitative Information*, p. 20

**Tone/density legend** — when the scale encodes intensity rather than distance, a keyed legend strip is the scale reference. The Lick Observatory galaxy-count map divides the northern galactic hemisphere into 1,024 × 2,222 rectangles (2,275,328 total cells). The scale strip at the bottom maps 10 gray tones to galaxy counts; without it the image is a texture, not a measurement.

**Proportional symbol key** — when symbol size encodes magnitude, a labeled example symbol sets the unit. Minard's 1864 French wine export map uses flow-line width proportional to export volume; a labeled reference width in the legend converts any measured line width to tonnes.

### Scale resolution rule

Scale resolution should match the finest distinction the data actually supports. A scale bar calibrated to 10 meters is misleading when the underlying data has 50-meter precision. Over-precision invites false readings; under-precision destroys the scale's utility.

| Image context | Minimum scale requirement | Common failure |
|---|---|---|
| Medical/anatomical plate | Linear ruler with stated magnification (e.g., "×40") | "Not to scale" caption with no reference |
| Satellite/aerial image | Scale bar + north arrow | Resolution stated in text only, not visually |
| Choropleth map | Classified legend with exact breakpoints | Color gradient with no value stops |
| Scientific micrograph | Bar with unit (nm, µm, mm) embedded in image | Bar in caption only, not in image |
| Architectural section | Dimension lines or bar scale | Decorative "scale figure" without measurement |

---

## §3. Coordinate Grids: Making Position Measurable

A coordinate grid transforms a picture into a measuring instrument. Any point in a gridded image can be located, returned to, and compared with any other point. Without a grid, position is approximate; with one, it is exact.

### What the grid commits to

Imposing a grid is an epistemological commitment: the producer is asserting that location within the image is meaningful and should be comparable across the entire surface. The Yü Chi Thu's 100-*li* grid was not decorative — it allowed distances between any two cities to be read directly off the stone. The 1,024 × 2,222 cell grid of the galaxy-count map is not an aesthetic choice; it is the unit of measurement for galaxy density.

The 1546 *Cosmographia* by Petrus Apianus showed European cartography approaching statistical graphicacy — latitude and longitude coordinates occupied every intersection. What was missing was the final step: placing a *measured quantity* at the intersection instead of a city name.

> "No one had yet made the quantitative abstraction of placing a measured quantity on the map's surface at the intersection of the two threads instead of the name of a city, let alone the more difficult abstraction of replacing latitude and longitude with some other dimensions, such as time and money."
> — *The Visual Display of Quantitative Information*, p. 22

### When to add a grid

Add a coordinate grid when:
- Position within the image is itself the variable of interest (spatial distribution of disease, pollution, galaxies)
- The viewer needs to locate specific features reproducibly across multiple images
- Small multiples of the same image are compared (same grid enables direct visual alignment)

Omit or suppress the grid when:
- The grid competes with the data signal (rule: grid lines should be lighter than any data mark)
- The image is relational rather than spatial (a scatterplot uses axes, not a geographic grid)

**DO:** Set grid-line weight to no more than 30% of the weight of the primary data marks.

**DON'T:** Use a grid as decoration — if it doesn't enable measurement, remove it.

---

## §4. Categorical and Quantitative Symbol Overlays

Overlays encode additional variables on top of a base image without replacing the image. The overlay must be legible against the background and must carry a key that converts visual properties to measured values.

### The cancer atlas: five-level statistical significance coding

The Atlas of Cancer Mortality for U.S. Counties, 1950–1969, redesigned by Lawrence Fahey and Edward Tufte, applies a five-level shade system to 3,056 county polygons across six cancer types and two sexes — approximately 21,000 numbers in six maps. Each county receives one of:

| Shade | Meaning |
|---|---|
| Black (solid) | Highest decile, statistically significant |
| Dark gray | Significantly high, but not highest decile |
| Medium gray | Highest decile, but not statistically significant |
| Light gray | Not significantly different from U.S. as a whole |
| White | Significantly lower than U.S. as a whole |

This five-level key encodes two dimensions simultaneously — magnitude (decile) and confidence (statistical significance) — in a single visual channel. The maps enabled a real investigative outcome: Salem County, New Jersey's elevated bladder cancer rate was traced to occupational exposure in chemical plants; at least 330 workers at a single plant had developed bladder cancer over 50 years.

> "The maps repay careful study. Notice how quickly and naturally our attention has been directed toward exploring the substantive content of the data rather than toward questions of methodology and technique."
> — *The Visual Display of Quantitative Information*, p. 20

### Halley's directional vector field (1686)

Edmond Halley's 1686 world wind chart encodes continuous directional data across the globe using oriented stroke symbols. Each stroke's sharp end points toward the wind's origin. Where monsoons occur, strokes alternate direction, creating a visually denser texture that encodes not just direction but the alternating nature of monsoon winds.

> ". . . the sharp end of each little stroak pointing out that part of the Horizon, from whence the wind continually comes; and where there are Monsoons the rows of stroaks run alternately backwards and forwards, by which means they are thicker [denser] than elsewhere."
> — Halley, *Philosophical Transactions*, 183 (1686), 153–168, quoted in *The Visual Display of Quantitative Information*, p. 23

This is a complete vector field: direction and relative intensity, encoded in a symbol system that overlays the geographic base without obscuring it.

### Overlay design rules

| Variable type | Encoding method | Key requirement |
|---|---|---|
| Continuous magnitude | Tone gradient / color ramp | Minimum 5 labeled stops with values |
| Discrete categories with ordering | Stepped gray scale | Each step labeled with exact breakpoints |
| Directional / vector | Oriented symbols | Example symbol with labeled bearing |
| Count / density | Dot density (1 dot = N units) | "1 dot = N" statement in legend |
| Proportion | Proportional symbol size | Labeled reference symbol at ≥2 sizes |

**DO:** Make the overlay key self-contained — a viewer who has only the legend and one image region should be able to read a value.

**DON'T:** Use more than two overlay channels on a single base image without small-multiple decomposition.

---

## §5. Cross-Section Markers and Structural Annotation

Cross-sections reveal internal structure that plan views and photographs cannot show: depth, stratigraphy, foundation geometry, internal tissue layers. A cross-section marker on an image — the A–A' line with an accompanying section drawing — is the standard form.

### The Minard bridge cross-section

Charles Joseph Minard's 1856 analysis of the collapse of the bridge at Bourg-St-Andeol on the Rhône provides a worked example. The image combines:

- An elevation drawing of the bridge showing the structure above water
- A cross-section below the water line showing foundation depth and riverbed stratigraphy
- A water-level marker ("Crue du 2 Nov. 1840" — the flood level of November 2, 1840)
- A directional arrow showing current flow
- Labeled depth dimensions for the foundation pilings

Each annotation layer answers a specific question the elevation view cannot: How deep did the foundations go? What was the riverbed composition? At what water level did the structure fail? The cross-section converts a picture of a collapsed bridge into evidence about *why* it collapsed.

### Rules for structural annotation

1. **Name what is labeled** — every arrow or leader line must terminate at a labeled structure with a precise name, not a generic "A" or "1."
2. **Dimension what matters** — if depth, width, or length is the argument, state the value directly on the dimension line. Do not force the viewer to compute from scale.
3. **Mark the section cut** — a section drawing without a section-cut line on the plan/elevation is unverifiable. The viewer cannot know where the section was taken.
4. **Date field conditions** — in forensic or temporal contexts (collapse analysis, medical imaging), mark the date and conditions of the image as part of the image, not only the caption.

**DO:** Integrate dimension values directly into the image where they are measured.

**DON'T:** Relegate structural data to a caption that will be separated from the image in reproduction.

---

## §6. Multi-Variable Integration: The Fully Mapped Picture

The highest form of the mapped picture integrates multiple quantitative variables into a single display without losing any of them to visual confusion. Minard's 1869 map of Napoleon's Russian campaign is the standard example.

### Minard's six-variable integration

The map encodes six distinct variables:

| Variable | Encoding |
|---|---|
| Army size | Band width (1 mm = 10,000 men) |
| Geographic position | x–y location on map |
| Direction of movement | Band color (tan = advance, black = retreat) |
| Temperature during retreat | Separate scaled line below the map |
| Date | Labels on temperature scale |
| Auxiliary troop movements | Separate flow lines for flanking corps |

Numerical anchors: 422,000 men crossed into Russia; 100,000 reached Moscow; 10,000 returned to Poland. The Berezina River crossing is visible as a sudden narrowing of the retreat band. Temperature reached −30° Réaumur (approximately −38°C) during the worst days.

> "Described by E. J. Marey as seeming to defy the pen of the historian by its brutal eloquence, this combination of data map and time-series, drawn in 1869, portrays a sequence of devastating losses suffered in Napoleon's Russian campaign of 1812."
> — *The Visual Display of Quantitative Information*, p. 40

> "It may well be the best statistical graphic ever drawn."
> — *The Visual Display of Quantitative Information*, p. 40

### The integration budget

Each additional variable added to an image competes with existing variables for visual attention. The budget is approximately:

- **2 variables**: baseline (position × one encoded measure) — always viable
- **3–4 variables**: achievable with distinct encoding channels (size + color + position)
- **5–6 variables**: requires deliberate layering; test with naive readers before publishing
- **7+ variables**: almost always requires decomposition into small multiples

**Rule:** Add a variable only if it can be encoded in a channel not yet used, and only if its addition does not reduce the legibility of any existing channel by more than ~20% (assessed empirically, not by feel).

> "The most extensive data maps, such as the cancer atlas and the count of the galaxies, place millions of bits of information on a single page before our eyes. No other method for the display of statistical information is so powerful."
> — *The Visual Display of Quantitative Information*, p. 26

---

## §7. Data Density Thresholds

A mapped picture's power scales with its data density. Images carrying too few numbers for the annotation complexity they impose are over-engineered illustration.

| Image scale | Minimum data density to justify annotation | Reference |
|---|---|---|
| Single map (full page) | ≥500 distinct values | Cancer atlas: ~3,500 per map |
| Small-multiple grid (12 panels) | ≥200 values per panel | LA air pollution: 2,400 spatial locations × 12 panels = 28,800 readings |
| Galaxy-count map | 2,275,328 cells, 10 tone levels | ~22.7M measurable states |
| Time-series with spatial context | ≥1,000 data points | NY weather: 1,888 numbers |

A mapped picture that carries fewer than 50 numbers should be examined for whether a table or a plain chart would serve better. Annotation overhead — scale bars, legends, grid, labels — is fixed cost; it is only justified when the data density makes it pay off.

---

## §8. Failure Modes

### AREA-WEIGHT DISTORTION (choropleth maps)
**Name:** The patch-map problem ("blot maps").
**What happens:** Large-area counties with sparse populations dominate the visual impression. A sparsely populated western county with high cancer rates appears more important than a densely populated northeastern county with equally high rates.
**Tufte:** "The maps wrongly equate the visual importance of each county with its geographic area rather than with the number of people living in the county."
**Fix:** Use dot-density, cartogram (area proportional to population), or explicit population-weighted analysis.

### SOURCE CONTAMINATION
**Name:** Diagnostic-fashion confounding.
**What happens:** The measurement instrument (death certificates, diagnostic codes, observational protocol) varies systematically across the geography being mapped.
**Tufte:** Regional clustering in the cancer atlas may "reflect varying diagnostic customs and fads along with the actual differences in cancer rates between areas."
**Fix:** State the data source and its known limitations directly in the image caption, not in an appendix.

### SCALE ABSENCE
**Name:** The unanchored picture.
**What happens:** No scale reference exists; distances and sizes are impressionistic. Viewers cannot extract a number.
**Fix:** Add at minimum one calibrated reference (bar, grid division, labeled symbol). "Not to scale" is not a fix — it is a confession.

### ANNOTATION OVERDOMINANCE
**Name:** Legend eating the map.
**What happens:** The annotation apparatus (labels, arrows, legend, scale bar) occupies more visual space than the data, or the grid weight exceeds the data-mark weight.
**Fix:** Reduce all non-data ink until it is clearly subordinate. Grid lines at ≤30% of data-mark weight. Legend outside the data field unless space is critical.

### PRECISION MISMATCH
**Name:** False precision.
**What happens:** The scale bar or key implies a resolution the underlying data does not support. A 1-meter scale bar on satellite imagery with 30-meter resolution.
**Fix:** Match scale resolution to actual data precision. State the data's native resolution in the caption.

### VARIABLE OVERLOAD
**Name:** The seven-variable swamp.
**What happens:** Too many overlaid variables compete for the same visual channels; all become unreadable.
**Fix:** Apply the integration budget (§6). Decompose into small multiples — one variable separated per panel, sharing the same base image format.

### ILLUSTRATION MASQUERADING AS EVIDENCE
**Name:** The decorative diagram.
**What happens:** The image carries no quantitative annotation but is presented in an evidential context (scientific paper, report) where readers assume measurability.
**Fix:** Apply the measurability test (§1). If the image fails all three questions, either annotate it or reclassify it explicitly as illustration.

---

## §9. Evaluation Checklist: Is This Image Doing Explanatory Work?

Run this before publishing any annotated image.

**Scale and measurement**
- [ ] At least one calibrated scale reference is embedded in the image (not only in caption)
- [ ] Scale resolution matches actual data precision
- [ ] A viewer can extract a specific number without prior knowledge

**Annotation completeness**
- [ ] Every symbol in the image appears in a keyed legend with labeled values
- [ ] All leader lines and arrows terminate at named, labeled features
- [ ] Cross-section cuts are marked on the corresponding plan/elevation view

**Data density**
- [ ] The annotation overhead (legend, scale, labels) is justified by data density (≥50 numbers minimum; aim for hundreds)
- [ ] If fewer than 50 numbers: consider whether a table is the right format

**Integrity**
- [ ] Data source and its known limitations are stated
- [ ] Area-weighting or sampling distortions are acknowledged
- [ ] No scale bar implies precision beyond what the data supports

**Multi-variable integration**
- [ ] Each encoded variable uses a distinct visual channel
- [ ] Adding any overlay did not measurably reduce legibility of prior overlays
- [ ] If ≥5 variables: tested with at least one naive reader

**Reproduction robustness**
- [ ] Image remains legible at half its designed size
- [ ] All annotation is legible in grayscale (color is not the sole encoding channel)
- [ ] Legend is not separated from the image in the document layout

---

## Quick Reference: Annotation Channel Selection

| Data type | Primary channel | Secondary channel | Avoid |
|---|---|---|---|
| Magnitude (continuous) | Tone/value | Size | Hue alone |
| Direction / vector | Symbol orientation | Density/texture | Color alone |
| Category (ordered) | Stepped gray scale | Shape | Random hue assignment |
| Count / frequency | Dot density | Symbol size | Area shading without key |
| Temporal change | Overlaid before/after lines | Separate panels | Animated GIF in static documents |
| Depth / stratigraphy | Cross-section drawing | Hatching convention | Perspective without section |
