---
name: tufte-visual-thinking
description: Applies Tufte's full framework from Seeing With Fresh Eyes — the SEE/REASON/ACT triad, model criticism and remodeling, content-responsive typography, graphical sentences and stacklists, and data-analysis integrity — as named failure modes, comparison tables, do/don't pairs, and concrete numbers across all four chapters.
tags: [tufte, data-visualization, visual-thinking, analytical-thinking, perception, models, typography, graphical-sentences, data-integrity]
---
# Tufte: Visual Thinking and Seeing With Fresh Eyes

## Overview

Tufte's claim in *Seeing With Fresh Eyes* (2020) is that visual thinking and analytical thinking are the same cognitive act, not a "creative" track and a "rigorous" track. The shared enemy of both is the self-confirming word — the inherited name or default model accepted without ever looking at the thing itself. The book argues this across four chapters that are all one discipline applied to different materials: (1) fresh-eyes perception and model criticism, (2) content-responsive typography, (3) graphical sentences built on verbs not nouns, and (4) data-analysis integrity where bad statistics kill at scale. The operating rule throughout: do not stop at what a thing is *named*; see what it *does*.

> Scope note: Chapter 2 (content-responsive typography) is treated in depth in the companion skill `tufte-typography-for-data`. §4 here is the conceptual summary; load the companion when typographic execution is the task.

---

## §1. The Thinking Eye: SEE — REASON — ACT

Tufte frames analytical vision as three verbs that must run together. Dropping any one degrades the other two: seeing without reasoning is staring, reasoning without acting is chatter, acting without seeing is production.

### SEE

The target is intensity: look at the ordinary so hard and so specifically that it stops being ordinary and becomes something you have never actually seen before.

Operational behaviors of a thinking eye:
- See **intensely, actively, skeptically** — not passively receive.
- Scan globally, then focus locally.
- See at **multiple scales** of space and time at once.
- Use "vacation eyes" — unhooked from the words, models, and expectations you arrived with.
- Stay inside the optical experience: **forget the name of what you are looking at**.
- Treat "not seeing anything different" as a signal you are not really seeing at all.

> "The most dangerous phrase in the language is 'We've always done it this way.'" — Grace Hopper

**Defamiliarization sequence** (the named procedure for breaking category-lock):
1. **Defamiliarize** — strip the label, look at the bare thing.
2. **Decontextualize** — pull it out of its usual setting.
3. **Recontextualize** — drop it into a new comparison set.
4. **Reform / remodel** — propose a better model grounded in what you actually saw.

### REASON

Reasoning eyes interrogate what they see by asking about *verbs* — links, mechanisms, connections, dynamics — and what things *do*, never what they are called.

- Reason across time horizons: then, now, forever.
- Cycle: compare, model, choose, doubt, decide, compare again.
- Name, re-name, re-model.
- Two governing questions: **"How do I really know that?"** and **"How could I ever know that?"**

### ACT

Producing, constructing, modeling, and remodeling are not optional output — acting is the dividing line between spectator and player, anecdote and evidence, a pitch and a demonstration, a retrospective claim and a prospective test. Tufte echoes Craig Venter's point that good ideas are cheap and what separates good from great is execution into reality. The triad compressed: seeing, learning, doing, and doubting are what intelligent life is *for*.

---

## §2. Seeing vs. Naming — The Central Discipline

The most persistent obstacle to fresh seeing is the category itself: the name that arrives before observation and substitutes for it.

| What naming does | What seeing does |
|---|---|
| Stops the eye at the label | Continues into structure and behavior |
| Reasons about what things ARE | Reasons about what things DO |
| Accepts inherited models | Questions the assumptions beneath models |
| Confirms the prior view | Finds what is actually there |
| Locks into discipline-local fashion | Connects across fields |

### The constellation example

The Big Dipper is taught as a flat 2D pattern. The seven stars actually sit at wildly different distances from Earth — roughly 58, 78, 79, 81, 84, 101, and 124 light years — so they are not co-planar, not a "dipper," and not fixed. The pattern is an artifact of one viewpoint at one moment.

| Epoch | Apparent shape |
|---|---|
| 50,000 BCE | Kite |
| 2,000 CE (now) | Dipper |
| 50,000 CE | Swan |
| 100,000 CE | Grasshopper |

The lesson, paraphrasing physicist Chris Quigg: a map shows what we *think* we know, which need not match the truth.

**Named failure mode — Flatland Projection:** collapsing a 3D reality into a 2D model, then reasoning from the 2D model as if it were the reality. A snowflake is not flat, it is three-dimensional; a horizon is not a line, it is a shape. The model is mistaken for the territory.

---

## §3. Space as Content, Not Container

Tufte treats empty space as active meaning, not inert backdrop. The same discipline applies to typography, data displays, physical space, and time. He assembles outside voices to make the point: Miles Davis on music being the notes you *don't* play; Lao Tse on a vessel being useful through its emptiness and a wall being serviceable because of the window cut into it; György Kepes on a single character gaining meaning only through the ordered space around it; Mary Oliver on the line break being a meaningful decision every poet wrestles with for life; and Richard Serra on space being a sculptural material in its own right. Space and meaning are not opposites — they co-exist, both concrete.

### Space polarity table

Each left/right pair resides together; neither term exists without the other.

| Left (absence) | Right (presence) |
|---|---|
| space | meaning |
| emptiness | fullness |
| absence | presence |
| void | material |
| silence | sound |
| ground | figure |
| negative space | positive space |
| air space | material space |
| stillness | motion |
| transparent | opaque |
| shadow | light |

### Ghostlier grids allow keener distinctions

A grid exists to *organize* content. The moment the grid competes with the content for attention, it destroys signal.

- **Jocelyn Bell Burnell** annotated her data traces at the Cambridge radio array and recognized the evidence for pulsars; the grid paper gave her exactitude, clarity, and permanence without taking over.
- **E.J. Marey** (~1880) ghosted a faint substrate grid behind early motion studies — visible enough to hold alignment, faint enough to let the moving figure dominate.
- **Curie, Pauling, Knuth** kept lab notebooks on ghost-grids: lines clear enough to maintain rough horizontal/vertical alignment, ghostly enough to avoid clutter.

**Named failure mode — Grid Dominance:** the organizing structure becomes more visually prominent than the content it organizes. Concrete case: a real-time medical interface whose loudest elements were cyan grid bars and stripe artifacts rather than the patient data — the grid was actively making clinical decisions harder. On the same page an image matrix was only ~42% images; the other ~58% was frame furniture, oversized checkmarks, and tiny labels.

**Ghosted global data as substrate:** the Financial Times COVID charts (John Burn-Murdoch) showed 54 countries as small multiples, each foregrounded against all other countries' trajectories grayed into the background. Every country is read in the scaled context of all countries. Topographic maps do the same — thin contour lines run underneath the type.

### Image quilts

An image quilt gathers many images to tell a story, make comparisons, and set context. Its elements vary in size, carry no heavy frames, and abut directly so the eye can compare across the seam. The Marey quilt orders varied-size frames to narrate his work on velocity and motion pictures.

**On frames:** frames can isolate color and cut screen glare, but over-framing is endemic in published image matrices — it adds noise, eats content space, and blocks the direct comparison that abutting enables. Algorithmic 2D-packing does not rescue it; ragged margins and small black surrounds beat heavy frames.

Measles-vaccination quilt: 88 million disease instances located in space and time from 1880–2011, with an estimated 103 million U.S. cases prevented since 1924 — a natural experiment in which each state acts as its own control across years.

### Cézanne and multiple local grids

Cézanne composed with several local grids at once, remodeling the single-viewpoint perspective model that had governed painting for centuries and photography for decades — integrating about 4 distinct viewpoints in one canvas. Hockney later assembled ~750 photographs in the same spirit; Google Street View places ~19 view signs at their exact driver-visible positions. A living, moving eye registers thousands of viewpoints an hour, so one-point perspective is a model that mismatches how vision actually works.

### Maya Lin's Women's Table

For Yale's Women's Table, Maya Lin chose a spiral of numbers — open-ended, to signal an ongoing history — beginning with a long run of zeros for the centuries Yale admitted no women. She drew the form from a spiral graphic in Tufte's *Envisioning Information* and worked directly with Tufte and Inge Druckrey on the data layout.

### Cleveland Clinic thought-bubble typography

The Cleveland Clinic empathy video positions text as thought-bubbles that move *with* each person in frame ("nearing the end of a 12-hour shift"; "determined to make it to her daughter's wedding Saturday"). This is a local grid carrying metaphorical meaning: content locates the typography, and the words travel alongside each person rather than being stamped over them — a quiet signal of respect, and a demonstration that location and line breaks create meaning.

### Remodeling scatterplots

Conventional scatterplots are anonymous plot-dots at (x, y). Remodel them by placing images of the actual things at their data coordinates: a brain-mass vs. body-mass plot drawn with little animals (bird, goldfish, snake, bat, frog, mouse, elephant, whale, dinosaurs) on a logarithmic ghost-grid. The marks self-label; no legend is needed.

### Remodeling spreadsheets: sparklines

A spreadsheet cell holding one lonely number can hold a whole time series instead. Michael Fogleman's PAC-MAN example recorded each frame at 60 fps by active memory address over 10 seconds, yielding **264 sparklines** laid on an invisible grid — every cell now a behavior over time rather than a single value.

### Models are a way of seeing

A model summarizes and explains something relevant in order to drive consequential action — and some models are simply better than others. Models in physics and engineering get a special guarantee because they rest on Nature's universal mathematical laws; the human sciences lack that guarantee, which is exactly why they are *harder* than rocket science. To choose a model is to choose its assumptions, most of them unseen and forgotten — and some assumptions are far worse than others.

**Named failure mode — Discipline Capture:** a model stops being accountable to outside evidence because insiders control what counts as evidence. Sanctified, lucrative specialties congeal into monopolies that become more about themselves and less about their original subject; local optimizing adds up to global pessimizing. The reform usually comes from the margin or from outsiders — Tim Berners-Lee inventing the Web at CERN, Tversky and Kahneman falsifying rational-choice economics.

**Named failure mode — Default Format Acceptance:** treating the production system's output format as if it were the content's natural shape. "We've always done it this way" ends thought, censors deviation, and blocks the search for alternatives. The corrective is not to reject all convention reflexively — many conventions have earned their place — but to *test* whether each still holds rather than assuming it.

### Remodeling proposals

| Conventional default | Remodeled to | Action |
|---|---|---|
| Hierarchical trees of nouns | A web of links and verbs | destroys the tree |
| Content-indifferent typography | Content-responsive typography | replaces |
| Plot-dots in scatterplots | Images of the real things at data coordinates | remodels |
| One number per spreadsheet cell | A sparkline (full series per cell) | eliminates LittleDataGraphics |
| Framed image matrices | Abutting unframed image quilts | remodels |
| Color-coded legend outside the data | Direct labels at the content, in data color | replaces |
| One-point perspective | Multiple local views ordered in 2-space | challenges |

**Maps as the outsider comparison set:** maps already solved the hard data-display problems — color, content-located type, enormous density, diverse simultaneous users. Put any interface or data graphic side by side with a good map and the gaps show.

### Curse of dimensionality

Phenomena that appear in high-dimensional spaces (hundreds or thousands of dimensions) simply do not occur in the 3D space of everyday experience. Coined by Richard Bellman in dynamic-optimization work: as dimensionality rises, volume explodes so fast that any fixed amount of data becomes sparse. It is a case where model dimensionality and truth diverge — the model has more dimensions than the data can support.

### Sense of the relevant

Thinking eyes have a sense of what matters — the ability to spot, in a mass of data, the few things whose consequences reach beyond themselves, where leverage lives. Cross-field learning is disciplined looting: creativity is connecting things across domains, while connections formed inside a single discipline narrow and exhaust over time. The practice is concrete — listen more than you talk, steer experts toward your own questions, probe every explanation with "why is that?" and "how do you know?", stay skeptical of what you are told, and feel no obligation to accept a field's inherited doctrines. Outsiders are freed from the assumptions insiders have forgotten they hold.

### Identifying excellence

Excellence is long-term, even forever, knowledge. Because analytical thinking is fundamentally about the relationship between evidence and conclusions — the same in every field — it is sometimes possible to judge the credibility of nonfiction work *without* being a content expert. A thinking eye can have an eye for excellence across disciplines. Maira Kalman's prod — what is it you know once you think you know? — and Quigg's — what do we know that is not true? — are the standing audit questions.

---

## §4. Content-Responsive Typography

Tufte calls content-responsive typography the most direct applied consequence of fresh-eyes thinking. For ~1500 years text grids have been indifferent to meaning, governing space by production convenience rather than by content — Robert Bringhurst's standard that typography exists to honor content, taken literally and to the data. Space should be content-responsive: actively contributing to meaning, as it always has in poetry, maps, math, code, comics, and scripts.

### The Darwin threshold

*On the Origin of Species* has 14 chapters and 133 topics, each topic appearing twice (table of contents and chapter openings). The topic lists suffer content-hostile line breaks — the right margin squared off by the grid, mashing distinct section titles together. Setting those 133 topics responsively:
- Adds only **2–3 pages** to a ~500-page book.
- Removes an estimated **2,000,000,000 to 5,000,000,000** reading impediments across ~3 million serious readers plus millions of skimmers since 1859.

### Do/don't pairs

| Conventional (grid-driven) | Content-responsive |
|---|---|
| Word spaces stretched to square off the right margin | Line breaks mark meaning units |
| 5 semicolons strain to signal 6 list items | Separate line breaks make each item self-evident |
| 6 sentences run together, hiding the vacuum/void distinction | Line space separates the distinct sentences |
| Syntax dissolves into word-salad | Reader scans up/down to compare and remember items |
| Indifferent labels parked in a colored legend | Direct labels placed at the content, in the data's color |

### The Great Disjunction

This is a 1500-year cost problem: print built grids for production economy, not for meaning. Screens change the economics — the marginal cost of space is effectively zero — so content, not cost or inherited style, can finally drive spatial decisions. Writers gain a second expressive channel beyond the words; readers gain speed and depth.

### Code and poetry as existing models

Code already lives in the plane with content-driven spacing within and between lines. The Knuth–Morris–Pratt string-match algorithm is ~37 lines and roughly 75% empty space; that space creates fluency for the human reader, while the compiler skips it entirely. Minify it and it still runs — and becomes nearly unreadable. Poetry is the older model: 5 of the first 8 lines of Eliot's *The Waste Land* are enjambed, and the line break is the unit that distinguishes verse from prose — meaning moves horizontally along the line and vertically across the breaks at once.

### LittleDataGraphics replaced by data paragraphs

Pie and bar charts encode numbers as areas and colors, forcing the viewer to decode them back into the original values — a lossy round-trip that also demands learning a local legend that won't transfer to the next chart. For small data sets, showing the numbers directly is faster and more precise. The prescription: no more LittleDataGraphics. Example of dense honest text-as-data — the National Weather Service KSFO briefing packs 18 measurements (U.S. and metric), 28 words, and 4 links, serving both the expert who wants the fifth significant digit of barometric pressure and the casual user who can't see the sky.

---

## §5. Graphical Sentences — Nouns and Verbs

The core move: reason about **verbs**, not nouns, and let graphical sentences live in the plane rather than the line. A linking line should aspire to be a real sentence with subject, verb, and object. An unannotated arrow — x → y with no label — asserts only that x and y have *some* unstated relationship, which is to say nothing; such links have no character.

### The Ausonio / Galileo mirror diagram

Around 1560 Ettore Ausonio built an immense diagram (about 44×74 cm) of reflections from concave spherical mirrors. Between 1592 and 1601, while teaching at Padua, Galileo made a handwritten copy. It deploys three architectures for off-the-grid sentences: **word trees, stacklists, and annotated linking lines**. The *Tree of Reflections* is a single 2D graphical sentence of 218 words, 29 branches, and 13 stacklists, with one ~130-word paragraph annotating a single line of the diagram. Unlike the strict logic of Markov chains or decision trees, its branches meander and end "in full leaf" as quasi-paragraphs. Galileo's collected works run to 21 volumes and ~12,000 pages, returning over and over to the forever question of science: what do objects *do* in 3-space and time?

### Stacklists

A stacklist organizes complex material in 2-space so the reader slows down — deliberately — to connect words vertically within each stack and horizontally across stacks. The contrast is with the conventional inline list: a freight train of words on a single narrow track, where it is hard to tell which words belong to which list or to compare items within and between lists. Any content can stack: words, graphics, numbers, links, code, images. Linked stacks of overlapping sparklines can show pulsar data as 4 simultaneous views (~4,000 numbers).

- **Polyphony:** some musical scores stack performer-improvisation options on adjacent staves, each option vertically aligned with the rest of the score (the practice Elaine Gould documents; Birtwistle's *Versus for Ensembles*, 1972).
- **Nesting:** Wendy MacNaughton's *The Universe and Forever* nests two word-stacklists inside an enclosing one; code does the same. Complex meaning is often better built and read in a smart 2-space than in a single linear sentence.

### The Walt Disney profit-formula diagram

The 1957 Walt Disney Productions profit diagram is built from 37 graphical sentences mapping a live network of interactions and job instructions. Every link names what it *does* — "feeds record material (tunes and talent)," "publicizes products of music div.," "provides interchange of stars" — so it has subjects, verbs, and objects. It demonstrates that real organizations are not the anonymous one-way streets drawn in conventional org charts, where know-nothing links connect boxes full of proper nouns.

### Fox and Hedgehog — a model-quality framework

Tufte borrows Isaiah Berlin's 1953 essay, itself drawing on Archilochus's ancient contrast: the fox pursues many things, the hedgehog one big thing.

| Fox | Hedgehog |
|---|---|
| Pursues many ends, often unrelated or contradictory | Relates everything to one central vision |
| Thought scattered, moving on many levels | One system, more or less coherent |
| Seizes the essence of vast variety | One universal organizing principle |
| Shakespeare, Herodotus, Aristotle, Montaigne, Erasmus, Molière, Goethe, Pushkin, Balzac, Joyce | Dante, Plato, Lucretius, Pascal, Hegel, Dostoevsky, Nietzsche, Ibsen, Proust |
| Group, webs, epidemiologists, skeptical / doubt | Individual, hierarchies, specialists, true believers / faith |
| University presidents; Bob Dylan | University faculty; not Bob Dylan |

Berlin's prose has **broken parallelism** — it opens fox-first, hedgehog-second, then keeps switching order — which a stacklist remodeling clarifies. Tufte uses the contrast directly to grade models: precision medicine for one patient (n=1, hedgehog) vs. vaccination at population scale (n≈3,000,000,000, fox); local optimizing (hedgehog) vs. avoiding global pessimizing (fox); insider Discipline Capture (hedgehog) vs. outsider comparison sets (fox).

---

## §6. Data-Analysis Integrity

The same discipline that governs seeing governs the relationship between evidence and conclusions. Truth is not a matter of disciplinary preference.

> "The first principle is that you must not fool yourself, and you are the easiest person to fool." — Richard Feynman

> "It is easy to lie with statistics; it is easier to lie without them." — Frederick Mosteller

Confirmation bias is the structural hazard — paraphrasing Van Wyck Brooks, once you hold a point of view, all of history seems to back you up. The fundamental obligations of analytical thinking — reason about causality and mechanism, explain, compare, assess the credibility of measurements and inferences, validate, and keep honest — **cannot be repealed** by assumptions, discipline, fashion, marketing, or what a sponsor wants the answer to be.

### Statistical lives vs. individual lives

Paraphrasing Andrew Vickers: a mistake in the operating room threatens one patient, but a mistake in a statistical analysis can cause hundreds of early deaths — yet we require years of training to hold a scalpel and hand SPSS, R, Python, Matlab, and ML to nearly anyone. The named distinction is **precision medicine (n=1) vs. vaccination (n≈3,000,000,000)**: we will spend almost anything to rescue one *named* life, while comparable spending could save millions of anonymous *statistical* lives, often at far lower cost per life. The stakes are real — global life expectancy roughly doubled from about 48 years in 1950 to about 71 in 2019.

### Prevalence of data-integrity failures

| Problem | Rate | Source |
|---|---|---|
| Inappropriate image duplication in published papers | 3.8% of 20,621 papers (1995–2014, 40 journals); ~half suggesting deliberate manipulation | Bik et al., *mBio*, 2016 |
| Image duplication, molecular/cellular biology | 6.1% (59 of 960 papers, 2009–2016); led to 41 corrections, 5 retractions | Bik et al., *MCB*, 2018 |
| Gene-name errors from Excel auto-conversion | ~20% of papers with supplementary Excel gene lists; 704 papers across 18 genomics journals, 2005–2015 | Ziemann et al., *Genome Biology*, 2016 |
| Articles that even mention measurement error | 44% of 565 articles in 12 major medical/epidemiology journals | Brakenhoff et al., *J. Clin. Epidemiology*, 2018 |
| Of those, articles that investigate or correct it | 7% (i.e., ~97% of the 565 never addressed it) | same |
| Secondary articles still citing retracted Mediterranean-diet data | 267 secondary articles built on the bad data | Agarwal & Ioannidis, *BMJ*, 2019 |
| Randomization anomalies audited | across 5,087 randomized controlled trials | Carlisle, *Anaesthesia*, 2017 |

**Biostatistician survey:** of 522 consulting biostatisticians surveyed, 75% responded. Inappropriate requests they reported receiving included: deleting or altering records to better fit the hypothesis; interpreting results by expectation rather than by what the data showed; not reporting key missing data that would bias results; and ignoring assumption violations that would reverse the conclusion (*Annals of Internal Medicine*, 2018).

### Observe data at the moment of measurement

Paraphrasing Cuthbert Daniel: you never learn more about a process than by directly watching how its data are actually measured. Standing questions: do the measurers know the desired answer? Are they skilled, alert, honest — or biased, sloppy, tired? Do sites differ in what they record? How are outliers adjudicated?

**The river-polluter example:** a company polluted a river; cleanup orders required daily water samples to track progress. Watch the actual sampling and you see a boat go out, the driver dip a container on a pole — *after scanning around for the cleanest-looking water*.

**Named failure mode — Sampling to Please:** when data collectors know the desired answer and (consciously or not) sample to produce it. People cannot keep their own score; detecting this requires observing collection at the exact moment of measurement, not just reading the published result.

**Three traceability questions** (from the 2002 Lucent scientific-misconduct investigation):
1. Can the presented data be traced back to primary data, free of processing or manipulation?
2. Is there clear evidence the data do *not* come from the measurements described — data substitution, unreasonable precision, contradictory physics?
3. If the data are invalid, are there mitigating circumstances explaining the misrepresentation?

### Forensic data audit

Run an independent forensic audit *before* analysis. Chris Groskopf's *Guide to Bad Data* catalogs ~46 spreadsheet data-quality issues as a starting checklist. Crucially, **"data cleaning" is not a forensic audit:** cleaning fixes logical inconsistencies, duplicates, and impossible values, but struggles to detect systemic bias, falsification, and too-good-to-be-true findings — those need experience and honest judgment. Paraphrasing Nate Silver: when merging datasets or doing complex processing, be compulsive about missing data and sanity-check failures, because the missing, miscoded, and outlier cases more often than not flag a larger, systematic problem in the code or data.

---

## §7. Clarity vs. Simplicity

|  | Simplicity | Clarity |
|---|---|---|
| When the data is simple | Appropriate | Appropriate |
| When the data is complex | **Dishonest** — hides the truth | **Required** — show the complexity honestly |
| Effect on the audience | Cuts load by cutting content | Trusts the audience with real content |
| Design virtue | Surface-level | Genuine |

**Named failure mode — False Simplicity:** swapping a complex reality for a simpler model, then presenting the model *as* the reality. The Darwin typography case shows the trap from the other side: the content-responsive setting added only 2–3 pages to a 500-page book while removing an estimated 2–5 billion reading impediments — so the "simpler" conventional setting was never actually simpler, just harder to read.

---

## §8. Concrete and Specific — The Operational Standard

Abstraction cannot substitute for a thing you can point at. Paraphrasing Ken Kocienda on the iPhone team (*Creative Selection*, 2018): collaboration came down to showing each other *demos*, and a demo was only useful if it was concrete and specific, because even a weak idea is impossible to discuss constructively in the abstract — a concrete example turns an impossible conversation into child's play.

**Named failure mode — Cute Puppy Problem:** two people each picture "a cute puppy" and have no way to compare their mental images. Without a concrete, specific instance there is no progress, because abstractions cannot be compared — only instances can.

**Named failure mode — Empty-Head Remodeling:** skepticism without standards — treating every alternative as equally valid. Real remodeling demands an open, searching mind *and*, simultaneously, rigorous standards of evidence and judgment, held over both your own ideas and the opposing ones without premature verdict. Few manage to hold both at once.

---

## §9. Applying Fresh Eyes — Checklist

Before shipping any information display, data graphic, interface, or argument:

- **Name the model.** What assumptions are baked in, and who built it — insiders or outsiders? (Discipline Capture)
- **What 3D reality does this 2D model stand for, and what does the projection lose?** (Flatland Projection)
- **What does the content actually DO** — not what is it named?
- **Is the comparison set too local?** Pull in an outsider one — maps, code, poetry.
- **Is any grid louder than the data?** Ghost it or remove it. (Grid Dominance)
- **Is the space doing meaningful work, or just filling area?**
- **Is the format the shape of the content, or the shape of the production system?** (Default Format Acceptance)
- **Is the complexity real?** If so, show it — do not simplify away the truth. (False Simplicity)
- **Can you make it concrete and specific?** If not, you may not understand it yet. (Cute Puppy Problem)
- **Are the links annotated with verbs?** Unannotated links have no character.
- **If data is involved, can it be traced to primary measurement?** Observe collection at the moment of measurement, not just at publication. (Sampling to Please)
- **Fox or hedgehog?** Are you optimizing locally at the cost of global pessimizing?

---

*Source: Edward Tufte, "Seeing With Fresh Eyes: Meaning, Space, Data, Truth" (Graphics Press LLC, 2020), Introduction and Chapters 1–4. All passages paraphrased; quoted lines limited to short attributed fragments.*
