# /tufte worked in Claude Code but not Codex

**Context:** The pack's router existed only as an unversioned file in `~/.claude/skills/tufte`, and install.sh copied only to Claude's directory — Codex had the 27 skills but no front door.
**Dead ends:** Assuming the router skill itself was Codex-incompatible; the file format was fine, it simply was never installed there and never in the repo. Signal: `ls ~/.codex/skills | grep tufte` showed 27 siblings and no router.
**What worked:** Commit the router to the repo; have it load siblings by relative file path (`../<slug>/SKILL.md`) with a per-runtime note (Skill tool / `$name` / plain file read) and a CANON.md single-file fallback; make install.sh target `~/.claude/skills`, `~/.codex/skills`, `~/.agents/skills`.
**Why:** Every agent runtime can read a file even when it has no skill-invocation tool, so file-path references are the universal loading mechanism; the install gap, not the format, was the failure.
**Rule:** When a skill must work in every agent, reference sibling skills by relative file path, keep the router in the repo, and install to each agent's skills directory.
