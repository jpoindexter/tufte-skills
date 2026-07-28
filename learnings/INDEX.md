# Learnings Index

- [2026-07-28 cross-agent-skill-router](2026-07-28-cross-agent-skill-router.md) — When a skill must work in every agent, reference sibling skills by relative file path, keep the router in the repo, and install to each agent's skills directory.
- [2026-07-28 persist-agent-reports-immediately](2026-07-28-persist-agent-reports-immediately.md) — When a background agent's report arrives, write it to a scratchpad file before doing anything else, and plan agent pipelines as one-shot phases handing off through disk.
- [2026-07-28 one-owner-per-file](2026-07-28-one-owner-per-file.md) — When fanning out edit agents over one repo, give every file exactly one owning agent and pass other agents' findings to the owner as data, never as edit access.
