# Five agents edited one repo concurrently without conflicts

**Context:** Applying five books' audit fixes to 30 skill files in parallel, where several skills draw on multiple books (small-multiples, parallelism, space-time-graphics).
**Dead ends:** None executed, but the naive split — each agent edits every file its book touches — would have had three files written by two agents at once.
**What worked:** Assigning every file exactly one owning agent, telling each agent explicitly which files it must NOT touch, and routing other books' findings to the owner via the persisted reports ("also apply ei.md's section on your file").
**Why:** File-level exclusive ownership removes write races entirely while cross-book content still reaches the file through the report files rather than through a second writer.
**Rule:** When fanning out edit agents over one repo, give every file exactly one owning agent and pass other agents' findings to the owner as data, never as edit access.
