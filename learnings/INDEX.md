# Learnings Index

- [2026-07-28 cross-agent-skill-router](2026-07-28-cross-agent-skill-router.md) — When a skill must work in every agent, reference sibling skills by relative file path, keep the router in the repo, and install to each agent's skills directory.
- [2026-07-28 persist-agent-reports-immediately](2026-07-28-persist-agent-reports-immediately.md) — When a background agent's report arrives, write it to a scratchpad file before doing anything else, and plan agent pipelines as one-shot phases handing off through disk.
- [2026-07-28 one-owner-per-file](2026-07-28-one-owner-per-file.md) — When fanning out edit agents over one repo, give every file exactly one owning agent and pass other agents' findings to the owner as data, never as edit access.
- [2026-07-28 second-pass-yields](2026-07-28-second-pass-yields.md) — When re-mining a source, change the mission (audit vs extract), pre-assign the parked candidates, and give every agent an explicit permission to return "nothing found."
- [2026-07-28 verify-is-a-separate-pass](2026-07-28-verify-is-a-separate-pass.md) — After extracting content from a source, run a separate pass that re-reads the source and marks every claim CONFIRMED / WRONG / UNVERIFIABLE before the content is trusted.
- [2026-07-28 test-the-router-not-the-content](2026-07-28-test-the-router-not-the-content.md) — Test a skill pack by scoring realistic task phrasings against its router, and write routing triggers in the user's vocabulary, not the source material's.
