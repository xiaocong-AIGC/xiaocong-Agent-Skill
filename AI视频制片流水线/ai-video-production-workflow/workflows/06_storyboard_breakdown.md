# Storyboard Breakdown

Use when there is a script, copy, outline, beat sheet, product flow, or action description. If the user already has a storyboard, route to `06B_storyboard_intake.md` instead — audit, don't re-break.

Camera language comes from the project `CINEMATOGRAPHY_BIBLE.md`; if it does not exist yet, create it (or at least its lens/movement/shot-size rules) before filling camera columns.

Process:

1. Divide content into sequences by location, emotional beat, or action unit.
2. Break each sequence into shots. Every cut needs a motivation (new information, reaction, emphasis, rhythm) — a cut without a reason is a defect.
3. Fill the full professional columns of `STORYBOARD_TABLE.md`: size, angle, focal feel, move (one move max per shot), axis side, dialogue/sound verbatim, transition out, emotional beat, risk grade, pass criteria.
4. Dialogue timing math: Chinese ≈ 3–4 chars/sec. Shots must hold their own lines; overflow means split the shot or cut the line — solve it here, not after generation.
5. Design transitions at sequence borders explicitly (match cut alignment object, sound bridge sound, or same-space anchor) and record them in Sequence Notes; adjacent shots' frames must honor that design later.
6. Check the shot-size curve: no 3+ consecutive same-size shots unless intended; close-ups obey the bible's scarcity rule.
7. Grade every shot's risk (S/A/B/C). S/A shots require a written degrade plan (split / reaction shot / insert) in Notes before production.
8. Write pass criteria per shot: one sentence stating what must be readable for the shot to pass. Continuity review will check against it.
9. Keep each shot feasible for external AI video generation; attach character, scene (with time state), prop, action, camera, and frame requirements.

Output:

- Save `05_storyboard/STORYBOARD_TABLE.md`.

Quality gate:

- Each shot is visually executable and traceable to locked assets or marked placeholders.
- No dialogue overflow. No unmotivated cuts. Sequence borders have designed transitions.
- Every S/A-risk shot has a degrade plan; every shot has pass criteria.
