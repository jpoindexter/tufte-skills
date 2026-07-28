# Completed background agents could not be resumed for phase 2

**Context:** Five book-audit agents finished with detailed fix reports; the plan was to SendMessage each one its apply-phase instructions to reuse its in-context book knowledge.
**Dead ends:** SendMessage to all five completed agents. Signal: `No transcript found for agent ID` on every send.
**What worked:** Extracting each agent's final report from its task output JSONL into scratchpad markdown the moment its notification arrived (blind, via python — never Read the transcript), then spawning fresh applicator agents fed by the persisted reports plus the source PDF path for spot-checks.
**Why:** Reports written into the conversation are lost to context compression and completed agents are not reliably resumable, so disk is the only durable handoff between agent phases.
**Rule:** When a background agent's report arrives, write it to a scratchpad file before doing anything else, and plan agent pipelines as one-shot phases handing off through disk.
