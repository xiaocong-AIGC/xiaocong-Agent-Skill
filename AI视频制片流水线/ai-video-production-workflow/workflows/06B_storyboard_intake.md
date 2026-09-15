# Storyboard Intake and Diagnosis

Use when the user provides an existing storyboard, shot list, or 分镜脚本. Do not send it to `06_storyboard_breakdown` to be re-broken — audit it instead, using the user's characters as the yardstick.

Review order is fixed and non-negotiable: **story → character → shots → dialogue → AI shootability**. Fixing camera work on a broken story layer is wasted work.

## Layer 1 — Form Check

1. Map the incoming storyboard onto the standard `STORYBOARD_TABLE.md` columns; list every missing column (size, angle, move, duration, dialogue, transition, pass criteria).
2. Dialogue duration check: Chinese ≈ 3–4 chars/sec; flag every shot whose lines overflow its duration.
3. Axis and screen-direction scan across each scene's shots.
4. Extract all characters, scenes, and props mentioned; produce an asset gap report routed to locking workflows / 08A.
5. Grade every shot S/A/B/C risk (see storyboard table rules); S/A shots need degrade plans.

## Layer 2 — Creative Review

1. Story completeness: hook position, setup/payoff pairs, emotional curve, whether the ending finishes or merely stops.
2. Character match — judge every action and line against the provided character cards / user description: personality conflicts, motivation gaps (actions without a want), screen-time distribution, and asset feasibility (states or actions the locked assets cannot produce).
3. Shot transitions: size jumps needing bridge shots, same-size collisions, axis breaks, cuts without motivation, missing sequence-border transition design.
4. Dialogue: flag 口号腔/说教腔/AI腔 verbatim; subtext check; voice distinction blind test; overflow lines; deletable lines.
5. AI shootability: over-complex single shots (recommend split / reaction shot / insert), spaces without locked assets that would appear on screen, multi-character interaction risks.

## Output

- Save `05_storyboard/Pxxx_STORYBOARD_DIAGNOSIS_vNN.md` using `STORYBOARD_DIAGNOSIS.md`.
- Verdict: 可用 / 修后可用 / 建议重拆, with a one-line reason.
- Issues graded 必改 / 建议改 / 可选. Apply 必改 fixes into a revised standard STORYBOARD_TABLE; present 建议改 as alternatives for the user to decide.

## Quality gate

- Respect the original creative intent: every change carries a written reason; no wholesale rewrite unless the verdict is 建议重拆 and the user confirms.
- Story-layer issues are reported before any camera-layer polish.
- The revised table is a complete standard storyboard, ready for 07/17 without another breakdown pass.
