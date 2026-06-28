---
name: tufte-evidence-corruption
description: How evidence presentations are corrupted through effects without causes, cherry-picking, overreaching, chartjunk, and the rage to conclude — with detection methods for each, drawn from Beautiful Evidence ch. 6 (pp. 140-155).
tags: [tufte, evidence, cherry-picking, analytical-communication, data-presentation, research-integrity]
---
# Corruption in Evidence Presentations: Effects Without Causes, Cherry-Picking, Overreaching, Chartjunk, and the Rage to Conclude

## Overview

Making a presentation is a moral act as well as an intellectual activity. *Beautiful Evidence* ch. 6 catalogs corrupt presentation techniques that are "enemies of the truth, that corrupt reasoning, that produce unbeautiful anti-evidence." The five named corruption types — effects without causes, cherry-picking, overreaching/economisting, chartjunk, and the rage to conclude — range from subtle language choices (passive voice) to systematic research design failures (poor controls) to organizational pathologies (bureaucracies of secondary presentation). Each has a concrete detection method. The chapter draws on the 9/11 Commission Report, the Chalmers portcaval shunt study, Galenson's art history book, and the evidence reduction chain to show how corruption operates at every stage from data collection to published report.

---

## §1. Effects Without Causes and the Evasion of Responsibility

### The 9/11 Commission: Passive Voice as Corruption

The opening case is the *Report of the 9/11 Commission* (2004), p. 265, describing security lapses that may have allowed the attacks:

> "[Despite the CIA's numerous warnings, America's] domestic agencies never mobilized in response to the threat. They did not have direction, and did not have a plan to institute. The borders were not hardened. Transportation systems were not fortified. Electronic surveillance was not targeted against a domestic threat. State and local law enforcement were not marshaled to augment the FBI's efforts. The public was not warned."
> — *9/11 Commission Report*, p. 265, quoted in *Beautiful Evidence*, p. 142

Tufte's verb count from this passage:

| Verb type | Count | Subject |
|---|---|---|
| Passive verbs | 5 | None named |
| Active verbs | 3 | "domestic agencies" (vague) |

Result: **no agent is named**. Exactly *who* did not make a plan, *who* failed to warn the public, *who* failed to augment the FBI's efforts — these questions go unanswered. Thomas Powers noted in *The New York Review of Books* (Sept. 23, 2004): "These things that were not done must have been not done by somebody, and the somebodies reporting to him."

> "By means of the passive voice, the 9/11 Commission evades attributing responsibility for security lapses."
> — *Beautiful Evidence*, p. 142

### Passive Voice as the Structural Source of Effects Without Causes

The deeper problem is not just political evasion but analytical failure:

> "Although often a useful writing technique, passive verbs also advance *effects without causes*, an immaculate conception. To speak of ends without means, agency without agents, actions without actors is contrary to clear thinking."
> — *Beautiful Evidence*, p. 142

The logic of decisions is "If we do such-and-such [cause], then we hope this-and-that will happen [desired effect]." The logic of responsibility requires the active voice: *someone did* or *did not do* something. Effects without causes are not just rhetorical — they disable the causal thinking required to make decisions, assign accountability, or implement remedies.

Anti-causal statistical methods work the same way: data mining, factor analysis, and multidimensional scaling crunch vast data matrices without testing causal models. They generate effects from nowhere.

### Bullet Lists Collaborate with Effects Without Causes

The bullet-list format compounds the problem. Mission statements and strategic plans are the characteristic venue:

> **Accelerate The Introduction Of New Products!!!**
> **Accelerate Revenue Recognition!!!**

Better to say *who* will accelerate, and *what, how, when,* and *where* they will accelerate. The sentence — with subjects, predicates, nouns, verbs, agents and their effects — is the effective methodology for causal statements. *Harvard Business Review* (Shaw, Brown, and Bromiley, 76, May-June 1998):

> "Bullets leave critical assumptions about how the business works unstated."
> — quoted in *Beautiful Evidence*, p. 143

A bullet list showing "Increase market share by 25% / Increase profits by 30% / Increase new-product introductions to ten a year" conceals whether market share produces profits or profits fund product development or product development produces both. All three causal structures fit the same three bullets:

```
Market share → Profits → New-product development
New-product development → Market share + Profits
Profits → New-product development → Market share
```

> "It follows that more complex and realistic multivariate causal models are way over the head of the simplistic bullet-list format."
> — *Beautiful Evidence*, p. 143

**Do/Don't pair — causal accountability:**

| Do | Don't |
|---|---|
| Name the specific agent responsible for each decision or inaction | Use passive constructions that float effects without causes |
| Write sentences with subject + predicate + named agent | Use bullet lists for plans that require causal structure |
| Ask: who did this? who decided this? who is responsible? | Accept "agencies failed to act" without naming the agencies and individuals |
| Draw explicit causal diagrams with arrows for any plan or strategy | Present multi-step causal chains as parallel bullet points |

---

## §2. Cherry-Picking, Evidence Selection, and Culled Data

### The Core Problem

> "The most widespread and serious obstacle to learning the truth from an evidence-based report is cherry-picking, as presenters pick and choose, select and reveal only the evidence that advances their point of view."
> — *Beautiful Evidence*, p. 144

Van Wyck Brooks captured the mechanism: "It is a principle that shines impartially on the just and unjust that once you have a point of view all history will back you up." Cherry-picking is epidemic precisely because it is often invisible — the audience cannot see what was omitted.

A clear sign of cherry-picking: **a report appears too good to be true**, provoking the response "It's more complicated than that." A *series* of reports, however, can decisively reveal corrupt practices — just as consistently positive quarterly earnings that land exactly one penny above forecast, when this occurs across 20% of all corporations, signals systematic manipulation.

### The Evidence Decay Cycle

In medical research the pattern is structural and measurable:

> "In medical research, too often the *first published study* testing a new treatment provides the *strongest evidence that will ever be found* for that treatment. As better controlled studies — less vulnerable to the enthusiasms of researchers and their sponsors — are then conducted, the treatment's reported efficacy declines. Years after the initial study, as the Evidence Decay Cycle plays out, sometimes the only remaining issue is whether the treatment is in fact harmful."
> — *Beautiful Evidence*, p. 144

**Evidence Decay Cycle pattern:**
1. First study (poorly controlled): marked enthusiasm, strong positive result
2. Follow-up studies (better controlled): moderate enthusiasm, smaller effects
3. RCT gold-standard study: little or no enthusiasm, null or harmful result
4. Outcome: initial enthusiasm was the artifact of poor design and cherry-picking

The Evidence Decay Cycle is not a rare exception. It is the expected outcome when research design quality is not controlled for.

### The Chalmers Portcaval Shunt Study: Concrete Data

Thomas Chalmers, a founder of evidence-based medicine, quantified this mechanism directly. Chalmers and colleagues examined **53 published reports** evaluating a surgical procedure — a portcaval shunt for esophageal bleeding. Each study was rated on two dimensions: (1) enthusiasm of the findings for the surgery; (2) quality of research design (good = random assignment to treatment or control; bad = no proper control group).

Of the 53 studies, only **6 were well-designed (RCT)**. Results:

**Quality of research design versus degree of investigator enthusiasm for the portcaval shunt surgical procedure, 53 published studies**

| | Marked enthusiasm | Moderate enthusiasm | No enthusiasm |
|---|---|---|---|
| 6 well-designed (RCT) studies | **0** | 3 | 3 |
| 47 poorly designed studies | **34** | 10 | 3 |

> "None of the 6 well-designed studies were markedly enthusiastic about the operation."
> — *Beautiful Evidence*, p. 145

72% (34 of 47) of poorly controlled studies endorsed a surgical procedure unwarranted by the RCT gold standard. This link between lousy research design and wrongly enthusiastic reports has been replicated across drugs and surgical procedures. Loosely designed studies allow the underlying medical reality to be filtered and cherry-picked so as to reliably produce unreliable evidence for favored treatments.

**Detection questions for cherry-picking in a single report:**

- Has evidence been filtered or culled in a biased manner?
- Do the findings grow from evidence or from evidence selection?
- Would the findings survive the scrutiny of a skeptic or investigator of research fraud?
- What would Richard Feynman think?
- Does the presenter have a reputation for cherry-picking?
- Is the particular field notorious for advocacy and evidence corruption (investment analysis, land development, new drug research, sales reports)?

---

## §3. Cherry-Picking in Statistical Model Searching

Retrospective, nonexperimental observation — the standard methodology in economics, finance, political economy, art history, business — creates systematic cherry-picking opportunities through four compounding factors:

| Factor | Description |
|---|---|
| **(1) Imprecise theories** | Vague, broad theories hint at 5-10 relevant effects and 5-100 candidate causal variables without specifying which |
| **(2) Many "notions"** | Sub-theoretical ideas employed during analysis: trying variables not in the theory, excluding data ad hoc, mixing in dummy variables, taking logarithms, fitting lag structures. Researchers may have 5-100 notion options available |
| **(3) Many operational measures for the same concept** | Plausible empirical measures of "economic growth," "social status," "cultural norms," "educational achievement," "political competition" multiply the option space |
| **(4) Data slack** | Decisions about missing data, reconciliation of discrepant sources, choice of beginning/ending points in time-series (a notorious cheat in financial data), choice of category cut-points |

The arithmetic of available models:

> "All told, many plausible models result. For *k* explanatory variables, there are 2*^k* − 1 possible fitted models, then multiplied by notions and on through the rest of the slack. Routinely 10^4 to 10^7 fitted models are available; all can be quickly computed and sorted over."
> — *Beautiful Evidence*, p. 146

10,000 to 10,000,000 fitted models computed and sorted — but only one or a few are published. "This latitude for evidence selection makes it difficult to distinguish between reliable findings and cherry-pickings."

Credible explanations grow from **three mutually reinforcing sources**: explanatory theory, empirical evidence, and rejection of competing alternative explanations. Cherry-picking dilutes and confounds all three into wishful circular thinking — the Pilgrim's Progress pattern where Ignorance concludes "my heart tells me so."

**Detection questions for model-searching cherry-picking:**

- How many models were tested? What fraction were published?
- Were the models tested on the original data that generated them, or on fresh independent data?
- What is the theoretical basis for the variable selection, or was it purely data-driven?
- Are the findings too good to be true? Have they been independently replicated on new data?

---

## §4. The Evidence Reduction Chain

Between the initial data collection and the final published report falls the shadow of the evidence reduction, construction, and representation process:

```
raw data:              evidence reduction,            the report or presentation:
observations,    →     construction, and          →   findings represented by graphs,
measurements           representation                  tables, diagrams, images,
                                                        numbers, words
```

Data are selected, sorted, edited, summarized, massaged, and arranged into published graphics. This sequence is not a black box but a gray area — it consists of all the decisions that *cause* the published findings of a report. Those decisions are made, to varying degrees, both in the spirit of analytical detective work and in the spirit of advancing a favored point of view.

> "The integrity of a report depends in part on the *integrity of the process of evidence construction*; alert consumers of a report must seek some kind of assurance that the process was sensible and honest."
> — *Beautiful Evidence*, p. 147

When secondary bureaucracies of presentation get access to primary reports — public relations, advertising, schoolbook publishing, journalism, Ministries of Propaganda — they add their own interpretive filter:

```
raw data → evidence reduction/construction/representation → primary report →
bureaucracies of secondary and tertiary presentations ← corrupting feedback
```

> "Secondary bureaucracies of presentation may lack the technical skills and substantive knowledge to detect their mistakes."
> — *Beautiful Evidence*, p. 154

**Consumer questions for auditing the evidence reduction chain:**

- Do the report's findings grow from the evidence or from the process of evidence construction?
- Would that process survive the scrutiny of a research audit?
- Does the presenter have a reputation for cherry-picking?
- Is the particular field of inquiry notorious for advocacy and evidence corruption?
- Are the findings too good to be true?
- Have the report's findings been independently replicated?
- How much does the decision to be made depend on the evidence in the report at hand?
- Who paid for the work?

---

## §5. Punning, Overreaching, and Economisting

### The Galenson Case: "Value" as a Pun

David Galenson's *Painting Outside the Lines: Patterns of Creativity in Modern Art* (Cambridge, 2001) is Tufte's primary case study in overreaching. The book opens with a thesis written in the first-person singular with 35 self-references in the first 2 pages. In the introduction, "value" clearly refers not to *merits* but to *prices* of paintings. Yet in the text, high-priced paintings are described as the "most valuable work" of an artist.

The dictionary meanings of "valuable" are (1) monetary worth and (2) meritorious, admirable, esteemed comparative. The paragraph's final sentence completes the punning equation: a rhetorical maneuver turns auction prices into "*importance* of artistic work" via the intermediate term "most valuable work."

The pun enables a 7-meaning overload: auction prices carry information about (1) most valuable meaning both price and merit, (2) historical importance, (3) best artistic work, (4) artistic productivity, (5) creativity, (6) how artists conceive their works, (7) how artists paint their works.

> "Consider a thought experiment: *Do our theories about (1), (2), (3), (4), (5), (6), and (7) change when new data (say, in 2010-2020) for auction prices become available?* If yes, how and why should art history be rewritten? If no, what exactly is the relevance of auction prices for understanding 'patterns of creativity in modern art'?"
> — *Beautiful Evidence*, p. 149

### The Evidence Void Behind the Claims

For a book whose thesis rests on auction prices as measures of artistic productivity, *Painting Outside the Lines* provides:

- 15 data tables with 2,029 entries (artists' birthdates, deathdates, ages, and frequency of appearances in exhibitions and art history textbooks)
- **Zero** actual auction prices or price indices
- **Zero** economic transaction data for any particular painting
- 2 graphs showing a vertical axis of Ln(Price) — the natural logarithm of prices — with curves showing no actual data points

> "Thoroughly dequantified, *Painting Outside the Lines* provides none of this information. Elementary standards of statistical evidence are not met by the book's notable publisher (Harvard University Press) or the notable author (Professor of Economics, University of Chicago). The economisting puns are unsupported by the economisting evidence."
> — *Beautiful Evidence*, p. 150

### Statistical Puns

In reports on quantitative work, frequent puns involve the language of mathematical statistics: *significance, confidence, maximum likelihood, bias, standard errors, optimal.* These words have clearly defined technical meanings. Statistical significance (technical meaning) derives from the ridiculousness of the null hypothesis, sample size, assumptions about independence of observations, and the size of the effect — not from importance or meaningfulness in any everyday sense.

Statistical tests against the null hypothesis allow researchers to make punning claims about the significance (everyday meaning) of their findings. Puns from microeconomics, quantum mechanics, evolutionary theory, fractals, and chaos theory "claim unmerited credibility by trading on the authority and sometimes the jargon of the original narrow technical achievement."

Steven Weinberg (*Facing Up: Science and Its Cultural Adversaries*, Cambridge, 2001, pp. 156-157):

> "There is simply no way that any cultural consequences can be *implied* by quantum mechanics... but a precise mathematical formalism, which among other things tells us that the difference between the predictions of quantum mechanics and pre-quantum classical mechanics, which is so important for the behavior of atoms, becomes negligible at the scale of human affairs."
> — quoted in *Beautiful Evidence*, p. 151

> "When a precise, narrowly focused technical idea becomes metaphor and sprawls globally, *its credibility must be earned afresh locally by means of specific evidence demonstrating the relevance and explanatory power of the idea in its new application.* It is not enough for presenters to make ever-bolder puns, as meaning drifts into duplicity. Something has to be explained."
> — *Beautiful Evidence*, p. 151

### Economisting: The Coined Term

> **economisting** (e·kon'·o·mist'·ing) *1.* The act or process of converting limited evidence into grand claims by means of punning, multiplicity of meaning, and overreaching. *2.* The belief or practice that empirical evidence can only confirm and never disconfirm a favored theory. *3.* Conclusions that are theory-driven, not evidence-based. *See also* confirmation bias, painting with a broad brush, Iraqi weapons of mass destruction, marketing, post-modern critical theory, German meaning of "mist."
> — *Beautiful Evidence*, p. 149

**Named failure modes — overreaching:**

| Failure mode | Description | Detection |
|---|---|---|
| **Value pun** | A term used in both monetary and evaluative senses, conflating price with merit | Count how many distinct meanings the key term carries in the text |
| **Concept sprawl** | A precise technical concept extended outside its domain without fresh evidence | Ask whether the extended claims could be falsified by domain-specific data |
| **Statistical significance pun** | "Significant" used to mean important or meaningful rather than non-null-hypothesis | Verify whether the claimed significance is statistical, practical, or rhetorical |
| **Data-free graphs** | Graphs whose axes represent data but contain no actual data points | Check whether the visual curves could be drawn without any underlying data |
| **Self-reported self-astonishment** | Findings reported as startling, surprising, new insights — evidence of credibility as evidence | Treat self-congratulation as a flag, not a credential |

---

## §6. Chartjunk: Content-Free Stuff Replaces Evidence

> "For consumers of presentations, gratuitous and cartoonish decoration of statistical graphics provides evidence about the presenter's integrity and statistical skills: little integrity, no statistical skills."
> — *Beautiful Evidence*, p. 152

### Chartjunk of Garish Decoration

Chartjunk flows from the premise that audiences can be charmed, distracted, or fooled by means of content-free misdirection: garish colors, designer colors, corny clip-art, generic decoration, phony dimensionality. The revenue growth bar chart example: a **3-fold** change in revenue growth is depicted by a **7-fold** change in bar *area* and an immense change in the apparent *volume* of the figure.

For cynical or malicious presenters, chartjunk decoration reflects their contempt for evidence and for their audience. Audience members at a presentation featuring chartjunk rather than evidence should ask themselves:

- "Is this the quality of analysis that we are relying on to understand a problem or make a decision?"
- "Why should we trust this presenter?"
- "Just how high can the presenter count?"
- "Does the presenter think we're fools?"
- "Why are we having this meeting?"

### Chartjunk of Graph Bureaucracy

Along with the chartjunk of garish decoration, there is the *chartjunk of graph bureaucracy*: useless or optically active grids, boxes and frames around graphs, redundant representations of data, cross-hatched bars. In the Boeing spreadsheet assessing the danger to the Columbia space shuttle, the most prominent visual activities are the vast empty framing areas and the grid prisons surrounding unexplained and unreadable numbers.

Microsoft Excel and PowerPoint produce, ineptly, many of the data graphics and tables used in presentations today. Excel chartjunk can sometimes be finessed by skilled users; PowerPoint graph templates are broken beyond repair. For preparing data presentations other than ads in tabloid newspapers, a professional statistical graphics program is essential.

> "Very little chartjunk appears in the sports, weather, and financial tables in newspapers, or in the tables and graphs published in major scientific journals — since the content is too important and too complex for fooling around with chartjunk."
> — *Beautiful Evidence*, p. 153

**Detection checklist — chartjunk:**

| Signal | Action |
|---|---|
| Bar chart area or volume encoding a single linear value | Report the ratio distortion: area/volume change vs. data change |
| Grids, frames, background boxes with no data content | Estimate percentage of ink area devoted to non-data elements |
| 3D effects on 2D data | Ask what the third dimension encodes; if nothing, it is chartjunk |
| Clip art or decorative figures substituting for bars | Ask whether the visual change corresponds to the data change |
| Cross-hatched bars, redundant color-coding of labeled categories | Remove and check whether any information is lost |

---

## §7. When Evidence is Mediated and Marketed: The Rage to Conclude

### The Flaubert Framing

The chapter title's phrase comes from Flaubert:

> "The rage for wanting to conclude is one of the most deadly and most fruitless manias to befall humanity. Each religion and each philosophy has pretended to have God to itself, to measure the infinite, and to know the recipe for happiness. What arrogance and what nonsense! I see, to the contrary, that the greatest geniuses and the greatest works have never concluded."
> — Gustave Flaubert, *Correspondance* (Paris, 1929), vol. v, 111

### The Bureaucracies of Secondary Presentation

Evidence-based reports are repackaged and marketed by *bureaucracies of secondary presentations*: public relations, advertising, programs for public outreach, schoolbook publishing, journalism, and government Ministries of Propaganda. Soon enough, tertiary presentations pitch recaps of opinions about a summary of some evidence somewhere.

The audience scaling problem for a new drug, as primary evidence passes through 3-4 repackagings on the way to market:

| Stage | Audience size |
|---|---|
| Technical reviewers of complete evidence | A handful |
| Medical journal readers | ~500 |
| Medical abstract readers | ~5,000 |
| News report viewers | ~500,000 |
| Advertisement viewers | Millions |

For government commission reports: for each reader of the original, there are perhaps **100,000 readers of mediated secondary versions**. For college textbooks: a successful text is assigned to 200,000 students; the primary works summarized by the textbook are read by a few researchers.

In repackagings, a persistent *rage to conclude* denies the implications, complexities, and uncertainties of primary evidence. A strong selection bias operates: news wins out over nuance, recency rather than quality of evidence decides relevance.

> "If you worry about evidence corruption in primary reports, secondary presentations will give you a lot more to worry about. Repackaging adds its own special interpretative filter to the critical process of learning from evidence."
> — *Beautiful Evidence*, p. 154

### Pitching Out Corrupts Within

The organizational feedback loop is the deepest consequence:

> "By generating corrupt repackagings, an organization's bureaucracy of secondary presentations may come to corrupt the integrity of work *within* the organization. Compromised external communications promote compromised internal communications, as *pitching out corrupts within.*"
> — *Beautiful Evidence*, p. 155

The mechanism:
- If a corporation distorts evidence presented to consumers, stockholders, and journalists, it may soon lie to itself.
- Government intelligence agencies: once evidence collection becomes fixed around a predetermined policy line, agencies may become perpetually unintelligent, confused about the difference between detective work and marketing.
- Martin Amis: "Cliché spreads inwards from the language of the book to its heart. Cliché always does."

Indicators of an untrustworthy secondary presentation bureaucracy:
- It denies access to primary evidence (requires all publications to be pre-approved by the PR department)
- Its repackagings always manage to support a predetermined line
- It limits access to primary reports through copyrights, inconvenient subscriptions, or overreaching claims of corporate privilege or government secrecy

**Defenses for producers of primary reports:**
- Make primary reports inexpensively and directly available (internet, self-publishing, leaks to journalists), short-circuiting secondary bureaucracies
- Prepare their own secondary reports to replace repackagings
- Police secondary mediated versions and turn mistakes of the pitch culture into notorious examples

---

## §8. Named Failure Modes: Detection Checklist

These are the specific, named failure modes from chapter 6. Apply to any evidence presentation before accepting its conclusions.

| Failure mode | What it does | Detection signal |
|---|---|---|
| **Passive-voice evasion** | Removes agents from effects, blocking causal reasoning and accountability | Count passive verbs; ask who the active subject is in every consequential sentence |
| **Effect-without-cause bullets** | Plans and strategies stated as destination-facts without causal mechanism | Any bullet that states an outcome without naming who does what by when for what reason |
| **Cherry-picking: too good to be true** | Selects only favorable evidence, suppresses disconfirming evidence | Report appears to contradict the usual complexity of the domain; "it's more complicated than that" response |
| **Evidence Decay Cycle** | First published study is poorly controlled and most enthusiastic; controlled studies systematically less enthusiastic | Ask: what was the research design quality? What happened in follow-up studies? |
| **Portcaval pattern** | Poorly designed studies (72%) endorse procedures that well-designed studies (0% marked enthusiasm) do not | Check: were RCT-quality controls used? Is the evidence base dominated by poorly designed studies? |
| **Model-searching without replication** | 10^4-10^7 fitted models searched; cherry-picked best-fit published; tested on same data that generated it | Ask: how many models were tested? Was the finding replicated on independent data? |
| **Value pun** | Key term carries both technical and evaluative meaning, enabling conversion of price data into merit claims | Identify all distinct meanings the key term can carry; ask whether each use is internally consistent |
| **Economisting** | Limited evidence converted into grand claims via punning, multiplicity of meaning, overreaching | Ask: could the claimed relationship be falsified by domain-specific empirical data? |
| **Data-free quantitative claim** | Graphs or tables that depict the form of quantitative relationships without actual transaction data | Check whether any graph axes contain measurable values traceable to original transactions |
| **Statistical significance pun** | "Significant" used to mean important rather than non-null | Verify: does the claimed significance mean the effect size matters, or only that n was large? |
| **Chartjunk distortion** | Graphic encoding amplifies the apparent size of differences beyond data values | Compute the ratio of visual change (area, volume) to data change; anything > 1:1 is distortion |
| **Secondary bureaucracy filter** | Repackaging adds conclusion-hardening and complexity-stripping at each stage | Ask: am I reading the primary report or a summary of a summary? What stage of repackaging is this? |
| **Rage to conclude** | Persistent drive to resolve uncertainty with definitive statements that the underlying evidence does not support | Ask: does the evidence actually support a definitive conclusion, or merely a tentative finding? |
| **Pitching out corrupts within** | External advocacy distorts internal evidence standards over time | Organizational indicators: all publications require PR approval; repackagings always support the predetermined line |

---

## §9. The Moral Frame

The chapter opens and closes with moral framing, not just methodological critique:

> "Making a presentation is a moral act as well as an intellectual activity. The use of corrupt manipulations and blatant rhetorical ploys in a report or presentation — outright lying, flagwaving, personal attacks, setting up phony alternatives, misdirection, jargon-mongering, evading key issues, feigning disinterested objectivity, willful misunderstanding of other points of view — suggests that the presenter lacks both credibility and evidence."
> — *Beautiful Evidence*, p. 140

> "To maintain standards of quality, relevance, and integrity for evidence, consumers of presentations should insist that presenters be held intellectually and ethically responsible for what they show and tell. Thus *consuming* a presentation is also an intellectual and a moral activity."
> — *Beautiful Evidence*, p. 140

Despite the threat of corruption, a consumer of presentations should try to be hopeful and curious, avoid premature skepticism, and maintain an open mind — but not an empty head. Many presentations are not corrupt. A presenter engaging in corrupt maneuvers might be reporting what eventually turns out to be accurate and truthful conclusions. "A particular danger of corrupt maneuvers is not only that they enable lying but also that they place the truth in disrepute."

Source book: *Beautiful Evidence* (Cheshire, Connecticut: Graphics Press, 2006)
Relevant chapter: Ch. 6 — "Corruption in Evidence Presentations: Effects Without Causes, Cherry-Picking, Overreaching, Chartjunk, and the Rage to Conclude," pp. 140-155
