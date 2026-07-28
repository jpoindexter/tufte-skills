# The skill pack was accurate and still failed half its jobs

**Context:** After three rounds of content work on a 38-skill pack, an agent scored the router against 25 realistic tasks (React dashboard, 200-row table, heatmap, accessibility review, vendor demo, funnel chart).
**Dead ends:** Assuming content quality implies pack quality. Signal: 12 of 25 tasks routed wrong — 8 under-routed, 2 over-routed, 2 matched no row at all — while every skill file was individually correct.
**What worked:** Scoring realistic task strings against the routing table, then fixing the seams it exposed: rows written in the source's vocabulary rather than the user's ("dashboard", "heatmap", "accessibility", "mobile" appeared nowhere), four skills reachable only as co-loads on another skill's row, and no precedence rule when three rows fired at once.
**Why:** Extraction agents are scoped to content, so nobody owns the interface between a user's words and the pack's index; a router is a product surface and fails in ways content review cannot see.
**Rule:** Test a skill pack by scoring realistic task phrasings against its router, and write routing triggers in the user's vocabulary, not the source material's.
