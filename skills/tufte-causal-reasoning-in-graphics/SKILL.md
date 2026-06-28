---
name: tufte-causal-reasoning-in-graphics
description: How to design graphics that demonstrate causality rather than mere correlation, drawn from Tufte's analysis of the Snow cholera map and the Challenger O-ring disaster; use when building or critiquing any display whose purpose is to support a causal claim or policy decision.
tags: [tufte, data-visualization, causal-inference, evidence-design, decision-making]
---
# Causal Reasoning in Graphics

## Overview

Most data graphics describe; few argue. The difference is whether the display is organized around the causal variable or merely around time and sequence. Tufte's chapter "Visual and Statistical Thinking" in *Visual Explanations* establishes the standard through two paired case studies: John Snow's 1854 cholera map, which correctly displays a causal argument and helps end an epidemic, and the 13 Morton Thiokol charts faxed to NASA the night before the Challenger launch, which contained the right data but displayed it in a way that concealed the causal signal and contributed to seven deaths. The lesson is not stylistic: how data is arranged determines whether a causal relationship is visible or invisible, and that invisibility can be fatal.

---

## §1. The Fundamental Question: Compared with What?

Every causal claim requires a comparison. Without a baseline, a count is only a count.

Tufte identifies "Compared with what?" as the foundational question in statistical analysis. In *Visual Explanations* (p. 30), he argues that studying only cholera victims provides only half the evidence — a complete causal investigation requires equally rigorous analysis of those who did *not* contract the disease.

Snow had 83 deaths mapped. The map's causal argument depended equally on showing the spaces with no deaths — the brewery (70+ workers, no cholera; they drank malt liquor and never used the Broad Street pump) and the workhouse (535 inmates, only 5 deaths; they had their own well and never sent to Broad Street for water). Both anomalies are visible only because they appear on the same map as the deaths.

The Thiokol engineers committed the mirror failure: their 13 charts showed only the 7 flights with O-ring damage, omitting the 17 flights without damage. Those undamaged flights, almost all at warm temperatures, are the statistical leverage that reveals the temperature-damage correlation.

Tufte draws the parallel directly in *Visual Explanations* (p. 44): the Thiokol engineers' data selection was equivalent to Snow having mapped only a subset of cholera deaths while ignoring all the disease-free areas and their pumps. The undamaged flights carry the statistical leverage that makes the temperature pattern visible — numbers become evidence only when placed in relation to each other.

### Do / Don't: Baseline inclusion

| Do | Don't |
|---|---|
| Show all observations: cases AND non-cases | Show only the damaged flights, the sick patients, the failing products |
| Label the comparison groups explicitly on the display | Let the viewer assume the shown data is the complete data |
| Quantify the expected rate vs. observed rate | Report only the count of anomalies |
| Include anomalies that work against your argument | Select for publication only results consistent with your case |

---

## §2. Temporal vs. Causal Data Structure

Time-series is the default graphic form. It is almost never the right form for causal argument.

> "Descriptive narration is not causal explanation; the passage of time is a poor explanatory variable, practically useless in discovering a strategy of how to intervene and stop the epidemic."
> — *Visual Explanations*, p. 29

Snow's original data was a list of 83 deaths in date order — a natural time-series. Plotted as daily counts, the chart shows the epidemic's rise and fall but reveals nothing about cause: there is no pump on the chart, no geography, no comparison. The chart is purely descriptive.

Snow converted the 1D temporal ordering into a 2D spatial comparison: deaths plotted by address on a street map, with all 13 community pumps also marked. This recast the same data into a form that could bear a causal argument.

The Thiokol engineers faced the same choice and made the wrong one. Their 48-rocket iconographic display arranged the rockets in temporal order — SRM 1 through SRM 24. The causal variable, temperature, was written sideways in small type near each rocket. Tufte's corrected version places rockets in temperature order along the horizontal axis, with damage markers, and adds the Challenger forecast position at 29°F — far beyond all previous experience. The pattern is immediately visible.

> "Information displays should serve the analytic purpose at hand; if the substantive matter is a possible cause-effect relationship, then graphs should organize data so as to illuminate such a link."
> — *Visual Explanations*, p. 49

### Choosing the display axis

| Situation | Wrong axis | Right axis |
|---|---|---|
| Epidemic investigation: where did people get sick? | Date of death (time-series) | Location relative to water sources (spatial) |
| O-ring risk at cold temperatures | Launch sequence number (temporal) | Temperature at launch time (causal variable) |
| Drug efficacy by patient subgroup | Enrollment date | Dosage or patient characteristic |
| Equipment failure rates | Serial number / production date | Operating temperature or stress load |

### Aggregation artifacts

Temporal aggregation can manufacture or destroy a signal. Daily Challenger deaths from cholera show a smooth decline already well underway when the pump handle was removed (September 8). Grouped into weekly intervals with the conventional Sunday-to-Saturday boundary, the handle removal appears to cut weekly deaths from 458 to 112 — a dramatic "effect" produced entirely by the arbitrary choice of interval boundary.

> "Time-series are exquisitely sensitive to choice of intervals and end points."
> — *Visual Explanations*, p. 37

Rule: when in doubt, graph the detailed underlying data and assess the effects of aggregation afterward. Never publish only the aggregated result without checking that the signal survives across plausible alternative groupings.

---

## §3. The Snow Cholera Map as a Model of Causal Argument

Snow's map succeeds as a causal display because it satisfies four principles simultaneously.

### Principle 1 — Place data in the context appropriate to assessing cause and effect

The map's two-dimensional geography is the natural context for a question about contaminated water sources. Every data point (a death) is plotted relative to its distance from every potential cause (each pump). The causal candidate and the effect are on the same display.

As Tufte describes in *Visual Explanations* (p. 30), Snow transformed his data from a one-dimensional temporal list into a two-dimensional spatial display — plotting each death by address against the locations of all 13 community pumps. The resulting map exposes a strong association between cholera mortality and the Broad Street pump, visible precisely because it includes both the affected areas and the surrounding neighborhoods that escaped the disease.

### Principle 2 — Make quantitative comparisons

The workhouse case provides the clearest quantitative argument: 535 inmates surrounded on three sides by streets with heavy cholera mortality, yet only 5 died — because they had a separate water source. Snow calculated that if mortality had matched the surrounding streets, over 100 would have died. The map makes this comparison spatially visible; Snow's report makes it numerically explicit.

### Principle 3 — Consider alternative explanations and contrary cases

Snow investigated every death that appeared far from the Broad Street pump and explained each one: a child who attended school near the pump, a cabinet-maker who worked on Broad Street, a widow in West End whose son arranged a daily delivery of Broad Street pump water because she preferred its taste. Each apparent counter-case, on investigation, confirmed the theory rather than weakening it.

Tufte argues in *Visual Explanations* (p. 32) that analytic credibility depends on engaging all the evidence — not just the data that supports the preferred explanation. The goal is accuracy, not advocacy: apparent puzzles and inconsistencies belong in the analysis, not beneath it.

### Principle 4 — Assess possible errors in the reported numbers

Snow documented data limitations explicitly — patients who died in hospitals after moving, addresses not registered, cases he could not confirm. He argued these gaps would be distributed proportionally across the outbreak area and therefore would not bias the map's main conclusion. Acknowledging error is not weakness; it demonstrates analytic integrity.

---

## §4. The Challenger Failure: Thinking Causally but Not Displaying Causally

The engineers at Morton Thiokol who opposed the Challenger launch had the correct causal theory: low temperature degrades O-ring resiliency, which risks catastrophic joint failure. They were right. Their 13 charts failed to communicate this because the charts were not designed to display a causal relationship.

Tufte's verdict in *Visual Explanations* (p. 44) is precise: the engineers had reached the correct conclusion and held the right causal theory, but their thirteen charts organized the data in ways that made the temperature-damage relationship invisible. They were thinking causally without displaying causally.

### The specific failures of the 13 charts

**Failure mode 1 — Wrong measure of effect.** The title chart focused on "blow-by" (soot passing the primary O-ring) rather than erosion, the more serious damage mode. SRM 15 at 53°F had substantial erosion and blow-by; SRM 22 at 75°F had blow-by only. The comparison invited the rebuttal: "We had blow-by on the hottest motor and on the coldest motor" — making temperature appear irrelevant. With only two cases, no statistical statement about cause and effect was possible.

**Failure mode 2 — Selective data.** The temperature chart reported data for 4 development motors, 2 qualifying motors, and 2 actual launches with blow-by. Missing: 92% of temperature data, covering 5 flights with erosion and 17 flights without damage. The chart defined the database for the decision.

Tufte observes in *Visual Explanations* (p. 43) that every display of evidence silently defines what counts as relevant — the presented data is always a selection from a larger pool. The choice of what to include is as consequential as the data itself.

**Failure mode 3 — Wrong ordering.** The 48-rocket iconographic chart arranged launches in temporal sequence. The causal variable, temperature, appeared only as small numbers written sideways. Any viewer trying to assess temperature-damage correlation had to mentally extract and re-sort 48 numbers while reading across two sequentially projected slides.

**Failure mode 4 — Disappearing legend.** The damage-severity code used on the 9-rocket chart vanished when that chart was replaced by the 48-rocket chart on the overhead projector. Viewers had to memorize the code across slides to read the damage values on the full chart.

**Failure mode 5 — Chartjunk obscuring the signal.** The outline shapes of 48 little rockets dominated the visual field. The marks encoding actual data were small, opaque, and scattered inside the rocket silhouettes.

> "Chartjunk indicates statistical stupidity, just as weak writing often reflects weak thought: 'Neither can his mind be thought to be in tune, whose words do jarre, nor his reason in frame, whose sentence is preposterous.'"
> — *Visual Explanations*, p. 48 (quoting Ben Jonson)

> "A lack of visual clarity in arranging evidence is a sign of a lack of intellectual clarity in reasoning about evidence."
> — *Visual Explanations*, p. 48

### What the correct display would have shown

A complete scatterplot of all 24 previous launches — O-ring damage index (y-axis) vs. temperature at launch (x-axis), with the Challenger forecast temperature of 29°F marked on the extended x-axis — makes the relationship visible in seconds:

- Every launch below 66°F resulted in damaged O-rings
- The coolest launch without damage was at 66°F
- The Challenger forecast of 29°F was 5.7 standard deviations below the mean launch temperature
- 29°F was 37°F colder than any previous undamaged launch

Tufte's corrected scatterplot in *Visual Explanations* (p. 45) — plotting all 24 pre-Challenger launches by temperature and O-ring damage — makes the risk visible at a glance: every launch below 66°F had damaged O-rings, and the Challenger's 29°F forecast falls far beyond the range of any prior flight.

---

## §5. Named Failure Modes

| Failure mode | Description | Example |
|---|---|---|
| **Control omission** | Showing only cases, not non-cases; omitting the comparison baseline | 13 charts show 7 damaged flights; omit 17 undamaged flights |
| **Temporal displacement** | Organizing by time when the causal variable is not time | Rockets ordered by launch sequence, not temperature |
| **Selective database** | Defining the dataset to include only data consistent with advocacy position | Temperature chart covers 7 of 24 flights; 92% missing |
| **Anecdote substitution** | Using 1-2 cases as if they establish cause and effect | Blow-by on SRM 15 and SRM 22 only; n = 2 |
| **Iconographic corruption** | Using decorative pictorial units that resist proportional measurement | 48 little rockets with damage coded as opaque interior marks |
| **Disappearing legend** | Calibration code visible on one slide, gone on the next | Damage severity scale present on 9-rocket chart, absent on 48-rocket chart |
| **Aggregation artifact** | Choosing aggregation intervals that manufacture or destroy a signal | Weekly cholera groupings make pump-handle removal look decisive |
| **One-glass experiment** | Demonstrating an effect without a controlled comparison | Feynman's O-ring in ice water: no dry O-ring shown alongside, cause (cold vs. wet vs. clamped) unresolved |
| **Mechanism without quantification** | Naming the mechanism but not linking it measurably to the outcome | Charts show O-ring rotation physics but do not connect rotation magnitude to temperature |
| **Extrapolation without acknowledgment** | Plotting a recommendation (53°F minimum) based on a sample of one without stating the inference problem | 53°F line drawn from SRM 15 alone |

---

## §6. The Six Dual Principles for Causal Display Design

Tufte closes the chapter with six principles that apply equally to statistical reasoning and to display design. They are paired because the design should recapitulate the analysis.

In *Visual Explanations* (p. 53), Tufte frames the governing principle: display design and statistical reasoning are not separate disciplines — both must obey the same logic of evidence. When seeing and thinking operate on the same principles, graphic clarity and analytic clarity become the same thing.

| Principle | What it means for display design | What it means for reasoning |
|---|---|---|
| **1. Document sources and data characteristics** | Label data provenance, sample size, collection method on the display | Know where every number came from and what errors are possible |
| **2. Enforce appropriate comparisons** | Place cause and effect on the same display; show baseline and treatment | Ask "compared with what?" before drawing any conclusion |
| **3. Demonstrate mechanisms of cause and effect** | Show the causal pathway visually, not just the correlation | Have a theory of why the cause produces the effect |
| **4. Express mechanisms quantitatively** | Use scaled axes; mark the magnitude of effect, not just its direction | Quantify how much the cause changes the effect, not just whether it does |
| **5. Recognize the multivariate nature of problems** | Do not reduce to a single variable when confounders exist; consider population density, alternative sources | Identify all plausible competing causes before concluding |
| **6. Inspect and evaluate alternative explanations** | Include contrary cases on the display; do not select only confirming data | Seek the disconfirming case as hard as the confirming one |

---

## §7. Applying Snow's Method — Practical Checklist

Before finalizing any display intended to support a causal claim:

- [ ] **Does the display include the non-cases?** Every display of damage, illness, or failure needs the undamaged, healthy, or successful comparison group on the same graphic.
- [ ] **Is the causal variable the organizing axis?** If you suspect X causes Y, X should be the horizontal axis, not time, not sequence number, not alphabetical order.
- [ ] **Is the full dataset shown?** List what data exists and what fraction appears in the display. If less than 100%, state why.
- [ ] **Are contrary cases investigated and reported?** The two or three data points that do not fit the pattern need explicit explanation on the display or in adjacent annotation.
- [ ] **Is the proposed intervention temperature / dose / quantity shown at its actual value on the axis?** The Challenger argument required seeing 29°F on the same axis as 53°–81°F. Without that extension the extrapolation is invisible.
- [ ] **Can the display be read without an oral explanation?** If a caveat says "cannot be considered complete without the oral discussion," the display is not a display — it is a prop for advocacy.
- [ ] **Are all aggregation choices tested for sensitivity?** Daily, weekly, monthly groupings of the same data should tell the same story. If they do not, show the detailed data.

---

## §8. Feynman's Demonstration as Counter-Example

Feynman's ice-water O-ring experiment at the presidential commission hearing became a media sensation but committed the same error as the 13 charts: it was an uncontrolled demonstration, not an experiment.

Tufte notes in *Visual Explanations* (pp. 51–52) that the single-glass demonstration is inconclusive: it cannot separate whether the O-ring lost resiliency due to cold temperature, mechanical clamping, or simple contact with water. A controlled comparison — two O-ring samples, identical clamping, one glass at 32°F and one at room temperature — is required to isolate the variable.

The one-glass method is an experience, not an experiment. It evokes the well-known connection but does not establish its magnitude or isolate its cause. A correct design: two O-rings, two glasses, identical clamping duration, same rubber material, one at 32°F and one at 70°F, both released simultaneously. Only then is the question "Compared with what?" answered.

This applies to all demonstrations and "proof of concept" displays: a single evocative example is never sufficient evidence for a causal claim, regardless of its rhetorical power.

---

## §9. Feynman's Summary Principle

> "For a successful technology, reality must take precedence over public relations, for Nature cannot be fooled."
> — Richard Feynman, quoted in *Visual Explanations*, p. 53

Applied to display design: a graphic that persuades by concealing the full evidence is not a successful display, even if it wins the argument in the room. The Thiokol engineers' charts failed not because they were deliberately dishonest, but because the designers did not impose the discipline of showing all the data in the right order. The discipline is not optional when the decision has irreversible consequences.
