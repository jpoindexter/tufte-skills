---
name: tufte-data-density
description: Covers Tufte's data density principle (VDQI ch.8, pp.161-176) — the formula, empirical benchmarks across publications, the Shrink Principle, three viewing depths, multifunctioning elements, small multiples, and the supertable — for designing, evaluating, or critiquing any statistical graphic.
tags: [tufte, data-visualization, information-density, small-multiples, data-ink]
---
# Data Density and High-Information Displays

## Overview
Data density is the ratio of data entries to graphic area. Tufte's empirical finding, drawn from sampling published graphics circa 1979-1980, is that most graphics are radically under-dense — the average published graphic carries about 10 numbers per square inch when the medium can support thousands. High density is not clutter: clutter is non-data-ink competing for space, while high density is data-ink filling it. The two require opposite remedies. The chapter's governing aphorism: "For non-data-ink, less is more. For data-ink, less is a bore."

Source: *The Visual Display of Quantitative Information*, Chapter 8, "Data Density and Small Multiples," pp.161-176; Chapter 7, "Multifunctioning Graphical Elements," pp.138-159.

## §1. The Formula

**data density of a graphic = number of entries in the data matrix / area of the data graphic**

The data matrix is the source table: rows × columns of numerical values. Area is measured in square inches (or square centimeters).

### Visual resolution establishes the ceiling

The eye can locate 625 points in one square inch (100 per square centimeter) with very light grid lines. A cartographer writes that "the resolving power of the eye enables it to differentiate to 0.1 mm where provoked to do so" — 254 distinctions per inch. An 80-by-80 grid over one square inch creates 25,281 distinct locations. Most statistical graphics use a fraction of this capacity.

### Named density benchmarks from the book (pp.162-168)

| Graphic | Density | Note |
|---|---|---|
| 4-entry bar chart (p.162) | **0.15 numbers/sq in** (0.02/sq cm) | 26.5 sq in canvas; 4 data entries; originally printed in 5 colors |
| JASA histogram (p.164) | **3.8 numbers/sq in** (0.6/sq cm) | 32-entry data matrix; "lightweight" |
| NYC weather chart (p.164) | **181 numbers/sq in** (28/sq cm) | Reduced version; benchmark for statistical press work |
| Annual sunshine record (p.165) | **~1,000 numbers/sq in** (160/sq cm) | Monkhouse & Wilkinson record |
| Bertin's communes of France map (p.166) | **~9,000 numbers/sq in** (1,400/sq cm) | 27 sq in; 30,000 communes; 240,000 numbers to reconstruct |
| Galaxy map (p.166) | **110,000 numbers/sq in** (17,000/sq cm) | 2,275,328 rectangles × 3 numbers; 61 sq in; "current record" |
| USGS topo quadrangle 17×23 in (p.168) | **~250,000 bits/sq in** (40,000/sq cm) | 100 million bits total; ceiling reference |

> "Very few statistical graphics achieve the information display rates found in maps."
> — *The Visual Display of Quantitative Information*, p.168

## §2. Data Density in Publication Practice

Tufte sampled at least 20 graphics from each publication (circa 1979-1980). Median densities in numbers per square inch:

| Publication | Median | Min | Max |
|---|---|---|---|
| *Nature* | 48 | 3 | 362 |
| *Journal of the Royal Statistical Society, B* | 27 | 4 | 115 |
| *Science* | 21 | 5 | 44 |
| *Wall Street Journal* | 19 | 3 | 154 |
| *Fortune* | 18 | 5 | 31 |
| *The Times* (London) | 18 | 2 | 122 |
| *Journal of the American Statistical Association* | 17 | 4 | 167 |
| *Asahi* | 13 | 2 | 113 |
| *New England Journal of Medicine* | 12 | 3 | 923 |
| *The Economist* | 9 | 1 | 51 |
| *New York Times* | 7 | 1 | 13 |
| *Business Week* | 6 | 2 | 12 |
| *Newsweek* | 6 | 1 | 13 |
| *Scientific American* | 5 | 1 | 69 |
| *American Political Science Review* | 2 | 1 | 10 |
| *Pravda* | 0.2 | 0.1 | 1 |

Source: p.167. *Wall Street Journal*, *The Times* (London), and *Asahi* publish data-rich graphics comparable to academic journals. Most American papers and magazines publish less data per graphic than major papers of other industrialized countries. The average published graphic is based on about 50 numbers at 10 per square inch.

## §3. The Maximization Principle

> "Maximize data density and the size of the data matrix, within reason."
> — *The Visual Display of Quantitative Information*, p.168

The "within reason" qualifier is narrow. Reason means: if the graphic becomes overcrowded, apply data-reduction techniques — averaging, clustering, smoothing — before plotting. Thin the numbers if necessary, but do not shrink the graphic as a first resort.

### Why more information is better

- Marginal cost of handling additional information is low for most graphics
- Simple data belongs in tables or sentences; graphics earn their place with complexity
- High-density graphics allow comparison of many parts of the data while displaying much information within the view of the eye: "we look at one page at a time and the more on the page, the more effective and comparative our eye can be"

> "Data-rich designs give a context and credibility to statistical evidence. Low-information designs are suspect: what is left out, what is hidden, why are we shown so little?"
> — *The Visual Display of Quantitative Information*, p.168

> "Summary graphics can emerge from high-information displays, but there is nowhere to go if we begin with a low-information design."
> — *The Visual Display of Quantitative Information*, p.168

### Mark size must scale with data volume

> "As the volume of data increases, data measures must shrink (smaller dots for scatters, thinner lines for busy time-series)."
> — *The Visual Display of Quantitative Information*, p.169

## §4. The Shrink Principle

The primary mechanism for increasing data density (beyond enlarging the data matrix) is reducing the area of the graphic.

> "Graphics can be shrunk way down."
> — *The Visual Display of Quantitative Information*, p.169

Tufte's finding: many published graphics can be reduced to half their published size with virtually no loss in legibility or information. This directly doubles density without adding a single data point. Repeated application of the Shrink Principle leads to the small multiple.

Bertin's crisp, elegant line style in *Semiologie Graphique* demonstrates the practical ceiling: it allows 17 small-scale graphics on a single page alongside extensive text — a layout impossible at conventional American graphic sizes.

### Do / Don't: Shrinking

| Do | Don't |
|---|---|
| Shrink graphic area to increase density | Enlarge the canvas to "give data room to breathe" |
| Run multiple small graphics per page | Dedicate a full page to a chart with 12 data points |
| Use crisp, thin line weights to survive reduction | Add line weight, shadows, or fill to compensate for smallness |
| Apply data-reduction (averaging, smoothing) if overcrowded | Remove data points to reduce apparent density |

## §5. Three Viewing Depths and Viewing Architecture

Tufte identifies two organizational principles from ch.7 that directly serve high data density: multiple viewing depths and viewing architecture (pp.154-159).

### Three viewing depths (p.155)

Graphics can be designed to have at least three viewing depths:

1. **Distance view** — what is seen from a distance: an overall structure usually aggregated from underlying microstructure
2. **Close-up** — what is seen up close and in detail: the fine structure of the data
3. **Implicit** — what is seen implicitly, underlying the graphic: that which is behind the graphic

The payoff: a single dense graphic can serve multiple analytical purposes simultaneously. The US population density map (Bureau of Census) demonstrates all three — overall urban/rural pattern, fine county-level detail, and the implicit geography of landforms shaping settlement.

### Viewing architecture (p.159)

Multiple viewing angles organize graphical information so different aspects of multivariate data come to the eye through separate, uncluttered paths. Each separate line of sight should remain unchanging — preferably horizontal or vertical — as the eye watches for data variation.

The government tax receipts table-graphic (15 countries, 1970 and 1979) demonstrates viewing architecture: read vertically to rank countries; read horizontally for paired comparisons; read the slopes diagonally for change patterns. The information is both integrated and separated — integrated through connected content, separated so the eye follows several different and uncluttered paths.

> "Such an analysis of the viewing architecture of a graphic will help in creating and evaluating designs that organize complex information hierarchically."
> — *The Visual Display of Quantitative Information*, p.159

## §6. Multifunctioning Graphical Elements as Density Tools

Chapter 7 establishes that elements which serve multiple data-display functions are a primary technique for increasing effective density without adding ink. Each of these design moves eliminates non-data-ink and replaces it with data-ink.

### Data-based grids (pp.145-148)
Grids formed by measurement instrument locations, or by data-significant events, report directly on the data. Playfair's debt graphic places vertical grid lines at historically significant events rather than regular intervals — the grid becomes evidence. Erasing a data-based grid erases data; erasing a conventional decorative grid erases nothing of value.

### Range-frame and data-based labels (pp.149-152)
The standard axis frame with round-number endpoints (0 to 40) replaced by a range-frame: the line extends only from the actual data minimum to the actual data maximum (4 to 37). This eliminates two non-data tick-marks and simultaneously encodes the data range in the frame itself. Further: replacing round-number scale labels with exact data values turns the label into a measurement.

### Dot-dash-plot and rugplot
The dot-dash-plot adds marginal distribution marks along both axes of a scatterplot. The vertical column of data-positioned numbers serves as dashes indicating the marginal distribution — requiring no additional ink because the numbers replace the conventional axis ticks. This works best for smaller data sets (30 observations or fewer) where fine detail matters.

**Design principle**: before adding any structural element (frame, grid, tick, label), ask whether the same ink can simultaneously show data. If yes, the multifunctioning version is superior.

## §7. Density Is Not Clutter

The confusion between density and clutter is the most common misreading of data graphics. They differ in source and require opposite remedies.

| Concept | Definition | Source | Remedy |
|---|---|---|---|
| **High density** | Many data entries per unit area | Data matrix is large | Preserve; increase where possible |
| **Clutter** | Non-data-ink or redundant data-ink crowding the field | Chartjunk, decorative grids, heavy borders | Erase |

> "The clutter of chartjunk, non-data-ink, and redundant data-ink is even more costly than usual in data-rich designs."
> — *The Visual Display of Quantitative Information*, p.169

The penalty for chartjunk scales with density. In a sparse 10-number graphic, a decorative border is merely wasteful. In a dense 2,000-number graphic, the same border actively competes with data for the viewer's attention — the cost is proportionally higher.

**Test before cutting**: classify the element. If it is non-data-ink, remove it. If it is data-ink, the default is to keep it, and the burden of proof is on removal.

## §8. Density by Chart Type — Measured and Ranked

| Chart type | Typical density | Tufte's verdict |
|---|---|---|
| 4-entry bar chart | **0.15/sq in** (p.162) | Data matrix of 4; "thin indeed"; table would be superior |
| Single pie chart | Very low | "A table is nearly always better than a dumb pie chart" |
| Multiple pie charts | Very low | "Completely useless" (Bertin); viewer compares in spatial disarray |
| JASA histogram | **3.8/sq in** (p.164) | 32-entry matrix; "lightweight" |
| Scatterplot | Medium–high | Scales with n; reduce dot size as n grows |
| NYC weather chart | **181/sq in** (p.164) | High-density benchmark for news graphics |
| Annual sunshine record | **~1,000/sq in** (p.165) | Upper range for printed statistical graphics |
| Statistical table (supertable) | High | Best for exact values and many localized comparisons |
| Small multiples | High | Tufte's preferred format for complex, multivariate data |
| Detailed geographic map | **9,000–110,000/sq in** | Ceiling; most statistical graphics are orders of magnitude below |

> "Given their low data-density and failure to order numbers along a visual dimension, pie charts should never be used."
> — *The Visual Display of Quantitative Information*, p.178

## §9. Small Multiples — Density at Scale

Small multiples are the primary design pattern for high data density across complex, multivariate data. They are a series of graphics showing the same combination of variables, indexed by changes in another variable. The design remains constant across all frames so that attention goes entirely to shifts in the data.

### Seven-property conclusion (p.175)

Well-designed small multiples are:

- inevitably comparative
- deftly multivariate
- shrunken, high-density graphics
- usually based on a large data matrix
- drawn almost entirely with data-ink
- efficient in interpretation
- often narrative in content, showing shifts in the relationship between variables as the index variable changes (thereby revealing interaction or multiplicative effects)

> "Small multiples reflect much of the theory of data graphics."
> — *The Visual Display of Quantitative Information*, p.175

### Examples Tufte cites (pp.170-174)

| Dataset | Structure | Data volume |
|---|---|---|
| LA air pollution — reactive hydrocarbons (p.170) | 23 hourly frames, geographic heat maps of LA basin | 23 maps × spatial grid; from computer-generated video tape by McRae, Goodin, Seinfeld |
| Cancer melanoma sites — Wiskemann (p.171) | Head-and-neck diagrams by sex | 269 primary melanoma sites across 3 panels |
| Herring catch age distribution 1908–1913 (p.172) | Stacked line charts by year | 6 panels × age distribution |
| Sampling error in normal deviates (p.172) | Distribution curves | 12 panels × 50-observation samples |
| Human/ape chromosome comparison (p.173) | Vertical band diagrams | 22 autosomes + XY × 4 species |
| *Consumer Reports* repair frequency 1976–1981 (p.174) | Dot-matrix table-graphic hybrid | 12 car models × 19 trouble spots × 6 years |

The *Consumer Reports* format is "a particularly ingenious mix of table and graphic, portraying a complex set of comparisons between manufacturers, types of cars, year, and trouble spots" — the grid format itself becomes the data structure.

### Design rule for small multiples

The design (axis scales, graphic format, encoding) must stay constant across all frames. Only the data changes. Any variation in design across frames creates a comparison of designs rather than a comparison of data.

## §10. The Supertable — High Density Without Graphics

Not all high-density displays are graphics. A well-designed statistical table can carry more data per area than most charts, and is preferable to graphics when exact values or many localized comparisons are required.

Tufte's 410-number New York Times presidential voting table (*New York Times*, November 9, 1980) is the worked example (p.179). Horizontal rules divide data into topical paragraphs. Rows are ordered to tell a story. Within-cluster reading (downward) and cross-cluster reading (horizontal) serve different analytical questions. This type of elaborate table is what Tufte calls a **supertable**.

> "One supertable is far better than a hundred little bar charts."
> — *The Visual Display of Quantitative Information*, p.179

**When to use a supertable over a graphic**: when the data requires many localized comparisons, when exact values matter more than spatial pattern, and when the data does not benefit from the graphic's advantage of visual comparison across spatial dimensions.

## §11. Failure Modes

**Failure mode 1: Starting sparse.** Designing a low-density graphic and calling it "clean." There is nowhere to go — adding data requires a redesign. Summary graphics can emerge from high-information displays; there is no direction of travel from low-information ones.

**Failure mode 2: Confusing density with clutter.** Removing data to "reduce clutter" when the actual problem is chartjunk. This fixes the wrong variable and loses information.

**Failure mode 3: Enlarging to accommodate data.** Increasing the canvas instead of shrinking the marks. Density falls; cross-page comparison becomes harder; the eye must travel further.

**Failure mode 4: Fixed mark size as data grows.** Keeping dot diameter or line weight constant as n increases. The graphic overprints and apparent density collapses into visual noise. Marks must shrink as data volume grows.

**Failure mode 5: The pie chart reflex.** Reaching for pie charts. They are among the lowest-density formats, cannot be stacked into useful multiples, and fail to order numbers along a visual dimension.

**Failure mode 6: Separating words from the graphic field.** Treating annotations and labels as non-data and moving them to a legend. Data-positioned labels, data-positioned notes, and integrated captions are data-ink. Forcing the eye to the legend wastes the graphic's field and imposes navigation cost.

**Failure mode 7: Decorative grids at high density.** Using conventional decorative grids instead of data-based grids. At high density, the conventional grid competes directly with data marks. The data-based alternative (grid keyed to data-significant positions) adds information at the same ink cost.

## §12. The Governing Aphorism

Tufte closes Chapter 8 with the clearest statement of the asymmetry between data-ink and non-data-ink:

> "For non-data-ink, less is more.
> For data-ink, less is a bore."
> — *The Visual Display of Quantitative Information*, p.175

This is the operational test before any edit to a graphic: classify the element first. Non-data-ink (decoration, redundant encoding, chartjunk) — remove it. Data-ink — preserve it by default; the burden of proof is on removal.

## §13. Design Checklist

| Check | Pass condition |
|---|---|
| Data matrix size | Is the source matrix as large as the question warrants? |
| Density benchmark | What is the computed density? Is it above 10/sq in (JASA territory)? |
| Graphic area | Could the graphic be reduced to half size without information loss? |
| Mark size | Are dots/lines sized to the data volume, not aesthetic convention? |
| Chartjunk | Is every ink mark either data or necessary structure? |
| Multifunctioning opportunity | Can any structural element (frame, grid, tick, label) be replaced with a data-carrying version? |
| Viewing depths | Does the graphic reward both distance viewing (overall pattern) and close-up reading (fine structure)? |
| Viewing architecture | Are multiple reading paths (vertical, horizontal, slope) uncluttered and independent? |
| Chart type | Is a small-multiple or supertable format available that would carry more data? |
| Pie chart trap | Is a pie chart used? Replace with dot chart or table. |
| Clutter vs. density | Is any proposed cut removing data or removing decoration? |
| Supertable candidate | Does the data require many localized comparisons? If yes, consider a supertable. |
