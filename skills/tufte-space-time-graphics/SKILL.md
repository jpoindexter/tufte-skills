---
name: tufte-space-time-graphics
description: Design, construction, and reading of space-time graphics — graphical timetables and related forms that encode movement, speed, and scheduling conflicts by mapping spatial position against time on orthogonal axes.
tags: [tufte, data-visualization, space-time, timetables, scheduling, information-density, transit, narrative]
---
# Space-Time Graphics: Narratives of Space and Time

## Overview

Space-time graphics place a spatial dimension (route position, stations, distance along a path) on one axis and time on the other, so a moving entity traces a line whose angle encodes its speed, whose crossings reveal encounters, and whose density reveals congestion. The form was developed by the Paris engineer Charles Ybry in his 1846 British patent for railway scheduling, later carried into the famous Paris-Lyon graphical train schedule, and it extends to any phenomenon that moves or develops through both space and time at once. The payoff: one flat graphic narrates a four-or-five-variable story (entity identity, departure place, arrival place, departure time, arrival time, speed) without a table of numbers.

**Source note (read this first).** The substance here lives in *Envisioning Information* (EI), the chapter "Narratives of Space and Time," pp. 101–113, with the grid-weight progression from *The Visual Display of Quantitative Information* (VDQI) pp. 115–116. *Visual Explanations* (VE) itself redirects this material: its footnote 12 (p. 93) points the reader to EI pp. 32, 45, 97–113. The one genuine space-by-time grid inside VE is the **Salyut-6 cyclogram** (pp. 92–95) — see §13, which bridges this skill to VE.

---

## §1. The Canonical Axis Setup

The standard graphical timetable for a linear route:

| Axis | Encodes | Typical direction |
|---|---|---|
| Horizontal | Time | Left = earlier, right = later |
| Vertical | Space (position along route) | Top = one terminus, bottom = other |

**Station placement:** stations sit as horizontal bands or tick lines at their *true proportional distance* from the terminus. Unequal real spacing produces unequal vertical gaps — that is correct. Forcing equal vertical spacing onto unequal distances corrupts every slope on the chart.

**Time scale:** uniform clock time across the horizontal. To cover a full 24 hours without a hard cut at midnight, Tufte gives two devices: glue the schedule end-to-end onto a cylinder so midnight joins the next day seamlessly, or simply prolong the grid a few extra hours (as in his Atlanta-to-Chicago airplane schedule) to expose the complete cycle.

**Dimensional compression:** the graphic measures distance *along the rail line itself*, collapsing three-space geography into a one-dimensional "lineland" path — the same trick as an itinerary or strip map. Curvature and compass heading of the real route are discarded; only along-track position survives on the spatial axis.

**Which axis gets space vs. time:** time is *normally* horizontal, space vertical. Two named departures:
- **Reversed (time vertical):** the Jupiter/Saturn satellite corkscrew diagrams (Galileo 1613, Cassini 1668) run successive nights *down* the page and satellite east-west position *across* it — time vertical, space horizontal.
- **Doubled (two variables on one axis):** the Japanese-beetle life cycle (§7) carries *both* time and a horizontal ground-position on the horizontal axis while a second spatial dimension (depth, underground→surface) runs vertical.

**Note — common mislabeling:** the esophageal transit study is **NOT** a reversal. It uses the standard orientation — time horizontal (12 s), space (mouth→stomach) vertical. The reversed/doubled cases above are the only departures; §7 has the full set.

---

## §2. Reading Speed from Line Angle

Every moving entity traces a diagonal. Its angle against the horizontal *is* its speed.

```
vertical axis   = distance (km or stations)
horizontal axis = time (hours)
slope of line   = Δdistance / Δtime = speed
```

| Line appearance | Meaning |
|---|---|
| Steep (toward vertical) | Fast — much distance per unit time |
| Shallow (toward horizontal) | Slow — little distance per unit time |
| Horizontal segment | Stopped — time passing, no movement (dwell at station) |
| Vertical segment | Impossible — instantaneous teleportation |

- **Direction:** opposite travel directions produce opposite slopes (one leans `\`, the other `/`); the two line populations lean against each other across the grid.
- **Comparison without arithmetic:** an express reads as one steep clean diagonal; a local reads as a shallower line broken by many short horizontal dwell steps. Speed comparison is pure angle comparison.

Ybry's 1846 patent already states the design use: with the table in hand, drivers and guards regulate train speeds exactly, and for a special train its speed line can be ruled straight onto the chart to keep it clear of every preceding train. (Charles Ybry, British Patent No. 11,868, 1846, paraphrased; quoted in EI p. 108.)

---

## §3. Crossings, Gaps, and Density

### Line crossings — trains meeting
Two lines intersecting means two trains share one location at one moment. Unremarkable on double track; a hard constraint on single track.
- x-coordinate of the crossing = the time they meet.
- y-coordinate = the station or milepost where they meet.
- Crossing *between* stations on a single-track line = a physically impossible schedule — a fatal conflict requiring redesign.

### Gaps — dwell time
A horizontal segment = a stopped train; its horizontal length = minutes stopped. Instantly visible here; in a numeric timetable dwell time is invisible unless explicitly listed, and it rarely is.

### Density — frequency and congestion
Tight clustering of lines in a time window = high frequency = rush hour, packing toward spaghetti. The density is itself the message: when lines crowd that tightly, service is frequent enough that the rider just shows up. Sparse regions (few lines, wide gaps) = low-frequency midday or late night. The whole day's service pattern is legible in one glance — something a column of numbers cannot deliver.

---

## §4. Single-Track Planning: Crossings Only at Sidings

On single track, opposite-direction trains can pass only where a siding exists. Tufte's example is a Swiss Federal Railroad chart of a few daily trains from La Chaux-de-Fonds (1932): the diagonals cross *only at stations*, revealing that the line is single-track and trains pass only at sidings within those stations.

- **Visual signature:** every crossing lands on a horizontal station band. A crossing between bands = a collision designed into the schedule.
- **Correctly planned:** up-trains and down-trains interleave at sidings with strict rhythmic regularity.
- **Planning use:** railways used the graphical form as the primary design tool for negotiating passing sequences across systems of immense complexity (thousands of station stops) long before computational optimization. Doing the same task nonvisually is clumsy and error-prone.

---

## §5. Grid Treatment

The space-time graphic needs a grid more than most charts, because readers interpolate precise times and locations from it — but the grid must never compete with the data lines.

The weight progression Tufte demonstrates (VDQI pp. 115–116):

| Grid treatment | Effect | Verdict |
|---|---|---|
| Dark black grid | Grid dominates; data lines lost; moiré (1+1=3) where lines are dense | Chartjunk |
| Thinned dark grid | Better, still competes | Marginal |
| Light gray grid | Grid recedes; data reads clearly; interpolation still possible | Correct |

- **Subordination rule:** when a graphic doubles as a lookup table a grid genuinely aids interpolation, but it must stay subordinate — a delicate gray grid supports *more* accurate data reconstruction than a heavy dark one.
- **Interval (concrete):** for transit, a gray grid at **ten-minute intervals** — fine enough to interpolate arrivals, coarse enough to stay quiet.
  > "The gray grid is set at ten-minute intervals in order to ease visual interpolation of the times of arrival." — Tufte, *Envisioning Information*, p. 110
- **Paper trick (VDQI):** ordinary graph paper prints its grid too dark for data; work on the reverse side so the rules show through faintly.

---

## §6. Spatial Detail vs. Temporal Precision: The Tradeoff

Two finite axes must be split between two continuous variables. Every choice shifts emphasis:

| More spatial detail | More temporal precision |
|---|---|
| More stations on the spatial axis | Finer time increments on the time axis |
| True proportional distance preserved | Equal-interval clock time preserved |
| Route topology visible | Individual minutes readable |
| Maps integrated into the structure | Dense schedule data legible |

Worked resolutions:
- **Czechoslovak Air Transport (1933):** a route network *is* the spatial structure, with flight times and flight numbers annotated on the edges. Sacrifices minute-by-minute reading; reveals topology.
- **China Railway index (200-page):** route map carries page numbers along each line, pointing to where the detailed schedule lives. Sacrifices temporal data on the map entirely; provides a spatial index into a large document and avoids a witless alphabetical index.
- **Hoboken-NYC bus schedule (Tufte & Druckrey):** layers two full-fidelity representations — an aerial photograph at *house resolution* for space, a complete graphical timetable for time — neither compressing the other. Residents personalize the photo (finding their own street), then read the schedule above it.

There is no single correct ratio. Decide by reader task: planning routes → spatial detail dominant; planning departures → temporal precision dominant.

---

## §7. The Space-Time Grid's Natural Universality

> "The space-time grid has a natural universality, with nearly boundless subtleties and extensions." — Tufte, *Envisioning Information*, p. 110

One spatial dimension on one axis, time on the other — the same structure spans unrelated domains. Note the orientation column; most are standard, two are not.

| Domain | Spatial axis | Time axis | Lines show | Orientation |
|---|---|---|---|---|
| Transit scheduling | Stations / distance (vertical) | Clock time (horizontal) | Train/bus journeys | Standard |
| Single-track planning | Same | Same | Crossing conflicts at sidings | Standard |
| Jupiter & Saturn satellites (Galileo 1613; Cassini 1668) | East-west position vs. Jupiter (horizontal) | Successive nights (vertical, downward) | Corkscrew orbits of Io, Europa, Ganymede, Callisto | **Reversed** (time vertical) |
| Japanese beetle life cycle | Depth, underground→surface (vertical) | Months Jan–Dec, doubled with ground-position (horizontal) | Annual cycle of *Popillia japonica* | **Doubled** (two variables on horizontal) |
| Esophageal transit | Mouth→stomach (vertical) | 12 seconds (horizontal) | Food bolus descent | Standard |
| Bumps chart (rowing) | Starting rank (vertical) | Race days (horizontal) | Rank changes; crossings = passes | Standard |
| Wagner operas | Compositional milestones, first idea→first performance (vertical) | Years, roughly 1830s–1880s (horizontal) | Each opera's development trajectory | Standard |

### Esophageal timetable (medical)
Eight consecutive video frames of 0.2 s each, 64×64 pixels, are compressed: each frame is summed along its horizontal rows into a single 1-pixel-wide column. The columns are assembled side by side — 60 in the full study — to build one condensed dynamic image of a complete swallow.
- Horizontal axis: 12 seconds total. Vertical axis: mouth (top) → stomach (bottom).
- Reading: a clean downward bolus trajectory is normal; descent rate reads from slope; reflux would appear as upward motion. (Standard orientation — time horizontal.)

### Japanese-beetle life cycle (biological)
*Popillia japonica* Newman's full year is shown by *doubling* variables on the horizontal axis: it carries both the months (Jan–Dec) and the beetle's horizontal ground-position, while the vertical axis is depth (deep underground at bottom, surface at top). The illustrated organism sits at its true spatial-temporal position at each stage — a smooth escape from flatland.

### Jupiter/Saturn corkscrew (astronomy)
Three centuries of individual nightly observations are joined into continuous spirals (Io, Europa, Ganymede, Callisto). The diagram is a true micro/macro space-time grid — one spatial dimension stretched by time — but **reversed**: time runs vertically, satellite east-west position horizontally. Tufte mutes the horizontal "prison-bar" gridlines to kill the 1+1=3 clutter (see §5). The continuous-curve form arrived only in the 20th century, ~300 years after Galileo's dots.

### Bumps chart (competitive rowing)
The example is the **Oxford University Torpids** (Oxford colleges; redrawn from *The Times*, 3 March 1987) — *not* Oxford-and-Cambridge. Rivers are too narrow for crews to row side by side (on bends, room for one boat), so crews start spaced apart and chase the boat ahead; catching it ("bumping," historically a literal touch) advances a rank.
- Vertical axis: crews by starting rank. Horizontal axis: race days.
- Crossed lines record each overtake. The form depends on the physical no-passing constraint of the narrow river.

---

## §8. Conventional Typographic Timetable vs. Graphical Timetable

Tufte's analysis of the New York–New Haven Metro-North table (1983), *Envisioning Information* pp. 104–105:

| Defect | Consequence |
|---|---|
| Only 21% of table area shows train times | 79% is scaffold, not data — 80 times / 410 characters buried under grids |
| Column headings repeated 3×; 24 AM/PM labels | Folded sequence forces the eye on a serpentine path; another for weekends |
| 41 inches (104 cm) of rules for a small table | Rules impose an appearance of order without delivering it |
| Bold sans-serif direction labels | Weak distinction between the two travel directions |
| Most-used rush-hour block is most cluttered | Murky screen tint + heavy symbols obscure peak service |
| Poor column break orphans the last peak-hour train | Cognitive discontinuity at the most critical transition |

> "Only 21 percent of the timetable's area is devoted to display of times that trains run." — Tufte, *Envisioning Information*, p. 104

The graphical form resolves all of these at once: direction = slope direction; rush-hour load = visible crowding; speed comparison = angle comparison; dwell = horizontal segment; whole-day structure = one glance. It gives both the precise reading of one train and the macro overview of the day's structure — micro and macro together. (Tufte's redesign also reset the numbers in Carter's Bell Centennial, a typeface built for legibility in tight space.)

---

## §9. Do / Don't Pairs

| Do | Don't |
|---|---|
| Place stations at true proportional distance on the spatial axis | Space stations equally regardless of real distance |
| Use a light gray grid; ten-minute intervals for transit | Use a dark black grid — it competes with and obscures the data |
| Let line angle carry speed (steep = fast, shallow = slow) | Add redundant speed labels the slope already encodes |
| Mark stations with labeled horizontal rules/bands | Omit station labels — the spatial axis is then useless |
| Use opposite slopes for opposite directions; let crossings emerge | Color-code direction instead of relying on slope |
| Plan single-track passings graphically; force every crossing onto a siding station | Resolve single-track conflicts in a numeric timetable (it hides them) |
| Layer aerial photo / route map and graphical timetable separately | Cram spatial topology and temporal detail onto one overloaded axis |
| Extend past midnight (cylinder, or prolong the grid a few hours) | Cut the schedule at midnight and hide the overnight pattern |
| Let dense rush-hour lines speak ("just show up") | Over-annotate dense periods — density is the message |
| Compress a video sequence to 1-px columns when one spatial axis matters (esophageal trick) | Lay sequential frames out as separate panels when the question is spatial progression over time |

---

## §10. Failure Modes

1. **Equally spaced stations (false geography).** Equal vertical spacing on unequal real distances distorts every slope, misrepresents speed, and puts crossings at wrong locations. Slope is meaningful only when vertical position is proportional to true distance.
2. **Dark grid destroying data.** A full black grid over the lines vibrates (moiré / 1+1=3) at intersections and buries individual trains. Fix: light gray grid, or the reverse side of graph paper (VDQI).
3. **Ignoring single-track constraints.** Crossings drawn between stations on single track are physical scheduling errors — invisible in a numeric table, immediately exposed graphically. Use the graphical form as the planning tool.
4. **Collapsing space and time onto one axis.** Listing stations as table rows and times as columns destroys both proportional spacing and slope-as-speed — that *is* the conventional timetable, with all its defects.
5. **Truncating time at midnight.** A 6am–midnight cut conceals overnight service and creates an artificial discontinuity. Wrap (cylinder) or prolong the grid to show the full cycle.
6. **Graphical form for the public without spatial anchoring.** Ybry's hope for public use went unrealized: the form is native to engineers, alien to passengers. Anchor it — the Hoboken-NYC bus schedule grounds the graphical strip on an aerial photo at house resolution so riders locate their own street first.
7. **Omitting dwell time.** Horizontal segments at stations are load-bearing. Treating arrival and departure as one point falsifies the schedule and erases which stops are operationally expensive.
8. **Bumps-chart logic without a passing constraint.** The bumps chart works *because* a narrow river physically prevents side-by-side racing. Apply the ranked-crossing form to a contest that allows simultaneous racing and you lose the constraint that gives it meaning.

---

## §11. Implementation Formulas

**Speed from line angle**
```
speed = (distance between two stations) / (time to travel between them)
      = Δy / Δx        [in the axes' own units]
slope (rise/run) = speed     →    steeper = faster
```

**Single-track feasibility check** — for each pair of opposite-direction trains on a shared single-track segment:
```
1. find x (time) where their lines would cross
2. find y (location) of that crossing
3. if y falls between station bands → CONFLICT
   → shift departure times or add a siding at y
```

**Pixel-compression (esophageal / any one-spatial-axis video)**
```
n frames, each H pixels tall → n columns, each 1 px wide, assembled left→right
column[i] = Σ over rows j of pixel intensity in frame[i]   (sum each frame to one column)
result: (n px wide) × (H px tall) condensed dynamic image
horizontal axis = time, vertical axis = the single spatial dimension
worked values: 8 shown / 60 total frames, 0.2 s each, 64×64 source, → 12 s span
```

**Rush-hour density signal** — no formula. When lines are too dense to trace individually, let density itself say "service so frequent no schedule is needed." Do not annotate; do not color-code individual lines.

---

## §12. When Space-Time Graphics Beat the Alternatives

| Task | Space-time graphic | Numeric timetable | Map | Gantt |
|---|---|---|---|---|
| Read one departure time | Possible, slower | Fast (built for it) | No | No |
| Compare two trains' speeds | Immediate (angle) | Arithmetic needed | No | No |
| Spot rush-hour congestion | Immediate (density) | Count rows | No | Partial |
| Spot single-track conflicts | Immediate (crossing between stations) | Invisible | No | No |
| Plan a single-track passing sequence | Natural design tool | Clumsy, error-prone | No | No |
| See the whole day's service pattern | One glance | Scan all rows | No | Partial |
| Show lifecycle/development over space + time | Yes (beetle, esophageal) | No | No | Partial |
| Show competitive overtaking | Yes (crossed lines) | No | No | No |
| Show geographic route topology | Only with map overlay | No | Yes | No |

Schedules rank among the most widely reproduced information displays — comparable in printed volume to road maps, weather charts, and telephone books — and 150 years of worldwide design effort have produced a rich range of strategies (EI p. 101). The graphical timetable is the form that turns that fussy numeric array into a legible multivariate narrative.

---

## §13. Cross-Reference: The Salyut-6 Cyclogram (the bridge into *Visual Explanations*)

The space-by-time grid is not confined to EI. The one clear instance inside *Visual Explanations* is the Soviet **Salyut-6 cyclogram** (VE pp. 92–95): a mission schedule plotting **orbit-minutes on the vertical axis against trip-days on the horizontal axis**, so the cosmonauts' repeating daily activity cycle stacks across the duration of the flight. It is the same orthogonal space/time structure as the graphical timetable, applied to an orbital mission.

- **Why it matters here:** VE's footnote 12 (p. 93) explicitly sends the reader back to EI pp. 32, 45, 97–113 for the timetable / space-by-time material — VE points *out* to EI rather than developing it. The cyclogram is the natural hinge between the two books.
- **Use:** when working from VE, treat the cyclogram as the worked space-time example and reach for EI's "Narratives of Space and Time" for the full design vocabulary (slope = speed, crossings, dwell, density, grid weight, single-track planning) laid out above.

---

## Sources & scope

- **Primary:** Tufte, *Envisioning Information*, "Narratives of Space and Time," pp. 101–113 — Ybry/graphical timetable, Czech 1933, China 200-page index, Metro-North critique (21% / 41 in / 24 AM-PM / 410 chars), Hoboken-NYC bus schedule (ten-minute gray grid, house-resolution aerial photo), Chaux-de-Fonds 1932 single track, Jupiter/Saturn corkscrew, Japanese beetle, esophageal timetable, Oxford Torpids bumps chart, Wagner operas, cylinder/midnight gluing.
- **Grid weight:** Tufte, *VDQI*, pp. 115–116 (dark→thinned→gray progression; reverse-side graph-paper trick).
- **Bridge:** Tufte, *Visual Explanations*, pp. 92–95 (Salyut-6 cyclogram) and footnote 12, p. 93 (redirect to EI pp. 32, 45, 97–113).
