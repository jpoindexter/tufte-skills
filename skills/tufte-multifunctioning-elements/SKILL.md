---
name: tufte-multifunctioning-elements
description: Apply Tufte's principle of multifunctioning graphical elements — designing every visual component to carry multiple data dimensions simultaneously, including data-built marks, data-based grids, double-functioning labels, and the named design forms that result.
tags: [tufte, data-visualization, design-efficiency, information-density, multifunctioning]
---
# Multifunctioning Graphical Elements

**Source:** The Visual Display of Quantitative Information (VDQI), 1983/2001, Chapter 7 (pp. 138–159); named design forms first introduced in Chapter 6 (pp. 123–137) and reframed within the multifunctioning conceptual superstructure in Chapter 7.

## Overview

The same ink should often serve more than one graphical purpose. A graphical element may carry data information and also perform a design function usually left to non-data-ink. Or it might show several different pieces of data. Such *multifunctioning graphical elements*, if designed with care and subtlety, can effectively display complex, multivariate data. The conventional graphical frame performs only a modest design function — separation of the grid and data measures from the labels, and a place to hang grid ticks. With all that ink doing so little, it is a prime candidate for mobilization. Hence the range-frame, the quartile frame, and the dot-dash-plot. The principle: **"Mobilize every graphical element, perhaps several times over, to show the data."** (VDQI, p. 138)

The danger of multifunctioning elements is that they tend to generate graphical puzzles, with encodings that can only be broken by their inventor. Design techniques for enhancing graphical clarity in the face of complexity must therefore be developed alongside multifunctioning elements.

## §1. Data-Built Data Measures

The graphical element that actually locates or plots the data is the *data measure*. The ink of the data measure can itself carry data. Building data measures out of the data increases the quantitative detail and dimensionality of a graphic.

**Stem-and-leaf plot** (John Tukey): The distribution of a variable constructed from the actual digits. Tukey's principle, as Tufte cites it: if a mark must be made, it should carry meaning — and the simplest meaningful mark is a digit. (VDQI, p. 140) The data form the data measure.

**Colonel Ayres' WWI divisions** (p. 141): A triple-functioning data measure. Each American division's numerical designation (a name) becomes both the data mark and the timeline. Shows simultaneously: (1) the number of divisions in France each month, June 1917 to October 1918; (2) which particular divisions were in France each month; and (3) the duration of each division's presence in France. Every drop of ink carries three distinct data display functions.

**Chernoff faces** (p. 142): Each plotted point is a cartoon face; each facial feature (nose length, eye shape, brow angle) encodes a separate variable. Legible at 0.05 square inches per face. Outliers are recognizable as "strangers" — inconsistent with others in the neighborhood. "With cartoon faces and even numbers becoming data measures, we would appear to have reached the limit of graphical economy of presentation, imagination, and, let it be admitted, eccentricity." (VDQI, p. 142)

## §2. The Principle Is General — Not Limited to Statistical Graphics

Chapter 7 establishes that multifunctioning is a general design insight, not a statistical technique. Two non-statistical examples:

**Easter Wings by George Herbert, 1593–1633** (p. 143): A shaped poem in which the length of each line encodes quantity — all done 150 years before Playfair invented statistical graphics. Tufte observes that line length double-functions throughout: longer lines accompany themes of wealth and abundance; shorter lines correspond to poverty and diminishment; and intermediate lengths mark transitions and change. (VDQI, p. 143) Space — line length — does double duty as text and as a magnitude display. The visual shape IS the data.

**W. J. Youden's typographic display** (p. 143): The statistician Youden set a sentence about the Normal Law of Error in concentric lines of increasing then decreasing width. The typographic form — line widths widening and narrowing concentrically — encodes the bell-curve shape of the distribution being described. Word arrangement serves as both text and diagram.

**Road stripe chart** (p. 144): "The visual data as the data measure, as in the living histogram." The chart shows how 48 U.S. states once differed in their engineering standards for painting lane stripes on road pavement. "Portrayed in the graphic is the actual physical pattern painted on the road, with 48 U.S. states ordered by the length of the painted mark." (VDQI, p. 144) The data mark IS the road stripe itself — the graphic element and the measured phenomenon are the same object.

## §3. Data-Based Grids

Very occasionally the grid can report directly on the data, rather than being an arbitrary coordinate structure.

**Plasma physics grid** (p. 145): The grid is formed by the location of measurement instruments; plain dots register a zero reading in contrast with the white background where no readings were taken. Erasing the grid would erase measured data.

**Galton's bivariate frequency table** (p. 145): Adult children heights vs. mid-parent heights. The arrangement of data in this table-graphic yields an internal grid — a rare example of data as grid. The grid IS the data.

**Mitchell Map, 1783** (p. 146): The labeled grid is the element of interest, not the map. Each labeled square on the Mitchell map has a counterpart on the modern map, making relative stretching, compressing, and twisting of the earth's surface perceptible.

**Playfair's National Debt of Britain** (p. 148): Vertical grid lines placed at historically significant events, not at regular time intervals. Tufte calls the data-based grid a shrewd device because it works with the data rather than against it — and notes the technique remains underused in contemporary graphical practice. (VDQI, p. 148)

**3D religion and politics charts** (p. 147): Two 3D displays comparing the effect of religion — taking into account party affiliation — on the presidential vote in 1956 and 1960. The grid presents data on the surface of the rock; on the sides, the grid is conventional. Reading the slopes vertically shows the party effect; reading diagonally shows the religion effect; reading in the other direction shows the persistent effect of party in both elections. The viewing architecture of the 3D surface enables simultaneous access to multiple data relationships that a flat chart would force into separate panels.

## §4. Double-Functioning Labels

Data-based coordinate lines lead to *data-based labels*. The issue is the same: why not use the ink to show data?

**Range-frame with range-labels** (pp. 149, 152): Frame lines trimmed to extend only to the measured limits of the data; the endpoints display the actual minimum and maximum values rather than round numbers. In Tufte's assessment, the range-frame with range-labels outperforms the version using round-number labels because it is more precise and eliminates two unnecessary ticks; both versions, however, are improvements over the standard passive frame. (VDQI, p. 149) Example: standard axis labeled 0, 10, 20, 30, 40 replaced by frame running from 4 to 37 — two fewer ticks, more precise boundaries.

**Identification numbers as temporal index** (pp. 149–150): In the thermal conductivity of tungsten chart, each plotted curve bears a circled identification number (author + year code). The numbers double-function: they identify the particular study AND, if ordered by publication date, would also indicate the time sequence in which the conductivity determinations were made. "This extra information requires no additional ink." (VDQI, p. 150)

**Grid increments relocated to the data path** (p. 151): X-axis grid increments moved upward to mark the actual path of the data; the round-number Y-scale replaced by the exact data values at each point. "The Y-scale now resembles the dashes of the dot-dash-plot, with the vertical column of data-positioned numbers serving as the dashes to indicate the marginal distribution." (VDQI, p. 151)

**Enhanced dot-dash-plot with data labels** (p. 152): The numbers in the margin eliminate the standard frame and even a range-frame, replace the coordinate ticks, show the marginal distribution of both variables, and record the exact values of the two measurements made on each unit of observation. This graphical arrangement "performs better for smaller data sets (say 30 observations or less) and when a fine level of detail is required." (VDQI, p. 152)

## §5. Named Design Forms

**Range-frame:** Frame lines trimmed to the actual extent of the data on both axes. Frame endpoints become data (minimum and maximum). Replaces the standard non-data-bearing frame. Self-explanatory without decoding instructions.

**Dot-dash-plot:** A scatterplot combined with tick marks placed on each axis at the exact position of each individual data observation — one tick per data point per axis. The density and spacing of these per-observation ticks reveals the marginal frequency distribution of each variable along that axis. Combines two fundamental graphical designs: the marginal frequency distribution and the bivariate distribution. "The dot-dash-plot combines the two fundamental graphical designs used in statistical analysis, the marginal frequency distribution and the bivariate distribution." (VDQI) The axis ticks are individual observation positions — analogous to a rug plot on each axis — not quartile summaries. The quartile plot is a distinct, separate design form.

**Rugplot:** A series of connected dot-dash-plots. The fringe of dashes connects a series of bivariate scatters; the dashes encourage the eye to notice how each plot filters and translates the data from one adjacent plot to the next. "The quantitative history of a single observation can be traced through a series of one- and two-dimensional contexts." (VDQI, p. 135)

**White grid:** Instead of background grid lines (non-data-ink), white lines cut through filled bars. Coordinate lines are more precisely read than tick marks alone. The white lines serve as both gridlines and data measurement aids simultaneously.

**Quartile plot:** An erased box plot — remove the filled box, retain only minimum, maximum, the two quartile endpoints, and the median. The original Tukey box plot requires approximately 80 straightedge placements to read parallel plots; the quartile plot requires approximately 10 — same data content, ~87% reduction in ink. Distinct from the dot-dash-plot: shows 5 summary statistics per variable, not individual observation positions.

## §6. Puzzles and the Hierarchy of Information

The complexity of multifunctioning elements can sometimes turn data graphics into visual puzzles — "crypto-graphical mysteries for the viewer to decode." (VDQI, p. 153)

**The puzzle diagnostic:** "A sure sign of a puzzle is that the graphic must be interpreted through a verbal rather than a visual process." (VDQI, p. 153) A 16-color county map with two crossed color scales forces viewers to "run little phrases through their minds" — matching color to meaning verbally. In a non-puzzle graphic, the translation of visual to verbal is quickly learned, automatic, and implicit so that the visual image flows right through the verbal decoder.

Paul Valéry: "Seeing is forgetting the name of the thing one sees." If the viewer must name the color to read the value, the design has failed.

**Color vs. gray-scale:** "Because they do have a natural visual hierarchy, varying shades of gray show varying quantities better than color." (VDQI, p. 154) Ten gray shades worked effectively in the galaxies map. Color generates verbal decoding loops — mnemonic phrases *about* the phrases required for graphical decoding. Gray-scale provides a directly comprehended order to the data measures.

**The organizing principle:** Central to maintaining clarity in the face of complexity are graphical methods that *organize and order the flow of graphical information* presented to the eye. The graphic must enable the viewer to peel back layer after layer of data.

## §7. Multiple Viewing Depths and Viewing Angles

Complex multifunctioning graphics support hierarchical reading at multiple distances and directions.

**Three viewing depths** (p. 155):
1. **Distant overview:** what is seen from a distance — overall structure, usually aggregated from underlying microstructure
2. **Close detail:** what is seen up close and in fine detail — the microstructure of the data
3. **Implicit structure:** what is seen implicitly, underlying the graphic — that which is behind the graphic, the context or model it rests on

**Multiple viewing angles** (p. 155): "Each separate line of sight should remain unchanging (preferably horizontal or vertical) as the eye watches for data variation off the flat of the line of sight." (VDQI) Ayres' WWI divisions graphic achieves three: "the profile of the horizon for the upward-moving time-series, the vertical for the composition of the bar, and the horizontal for each division's stay." Three separate visual angles make the flow of information coherent; thus while every drop of ink serves three different data display functions, each of the three comes to the eye with its own independence and integrity.

**15-country government tax table-graphic** (pp. 158–159): Current Receipts of Government as a Percentage of GDP, 1970 and 1979, for 15 countries. This table-graphic organizes data for viewing in several directions simultaneously:
- *Vertical read:* ranks all 15 countries by tax collections in 1970, and again in 1979, with names spaced in proportion to the percentages — a ranked display at each time point
- *Horizontal read:* paired comparisons across columns show how each country's number changed over the decade
- *Diagonal read:* the slopes of the connecting lines, read down the collection, show the overall upward pattern; lines of unusual slope stand out

"The information shown is both integrated and separated: integrated through its connected content, separated in that the eye follows several different and uncluttered paths in looking over the data." (VDQI, p. 159) The viewing architecture diagram for this graphic shows overlapping horizontal, vertical, and diagonal arrows — all simultaneously navigable.

"Such an analysis of the *viewing architecture* of a graphic will help in creating and evaluating designs that organize complex information hierarchically." (VDQI, p. 159)

## §8. Quantitative Summary

| Standard design | Multifunctioning redesign | Gain |
|---|---|---|
| Box plot (parallel) | Quartile plot | ~87% reduction in ink; same 5-number summary |
| Scatter with frame to round numbers | Range-frame | Frame endpoints become data (min/max); 2 fewer ticks |
| Scatter only | Dot-dash-plot | Per-observation marginal ticks added at no space cost |
| Round-number axis labels | Labels at actual data values | Tick marks eliminated; precision increases |
| Bar chart with background grid | White grid through bars | Grid ink approaches zero; coordinate precision unchanged |
| Color for ordered quantities | Gray-scale | Removes verbal decoding; direct visual hierarchy |

## §9. Failure Modes

| Failure | Diagnostic | Fix |
|---|---|---|
| Graphical puzzle | Viewer must verbalize to decode ("purple means both high mortality AND high density") | Replace crossed color scales with gray-scale or separate panels |
| Single-function frame | Frame extends to arbitrary round numbers; no data at endpoints | Trim to range-frame; put actual min/max at endpoints |
| Axis as coordinate only | Axis blank between ticks; marginal distribution invisible | Add per-observation ticks (dot-dash-plot) or relocate grid increments to data path |
| Round-number labels | Axis shows 0, 25, 50, 75, 100 when data runs 18–73 | Replace with actual data values at data positions |
| Conflating dot-dash-plot with quartile plot | Axis ticks described as quartile summaries | Dot-dash-plot ticks = one tick per observation at its position; quartile plot = 5 summary statistics only |
| Single viewing angle | Complex multivariate data forced into one reading direction | Design for vertical + horizontal + diagonal simultaneous readings |

## §10. Do / Don't Pairs

| Do | Don't |
|---|---|
| Build data marks from data values (stem-and-leaf, digit codes, shaped text) | Use uniform abstract dots when a digit or form would carry meaning |
| Place grid lines at data-meaningful positions (events, significant thresholds) | Place grid lines at arbitrary round-number intervals |
| Trim frame to actual data extent (range-frame) | Extend frame to arbitrary round numbers beyond data range |
| Replace round-number axis labels with actual data values at data positions | Label axes 0, 25, 50, 75, 100 when data range is 18–73 |
| Put per-observation ticks on axes to show marginal distribution (dot-dash-plot) | Conflate per-observation ticks with quartile summaries |
| Use gray-scale for ordered quantities (direct visual hierarchy) | Use color when gray-scale ordering is sufficient |
| Design for multiple simultaneous viewing angles and depths | Force all reading into a single direction |
| Ask of every single-function element: what data could this also show? | Accept any graphical element at single-function without evaluation |
| Recognize when a non-statistical artifact (poem, road stripe, typography) encodes data in its physical form | Assume multifunctioning elements apply only to statistical charts |
