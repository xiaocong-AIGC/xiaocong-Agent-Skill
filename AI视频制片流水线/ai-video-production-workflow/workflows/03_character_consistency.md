# Character Consistency

Use for humans, creatures, mascots, avatars, presenters, or any recurring subject.

Process:

1. Split character assets by use: face identity asset, full-body styling asset, action reference asset, and optional expression or close-up detail assets.
2. Extract identity lock: face, body, silhouette, hair, clothing, colors, signature details.
3. Lock performance, not only appearance — fill the Performance Lock section: core temperament, behavior vocabulary per emotion (concrete actions, not adjectives), speech habit, eye-contact policy, forbidden actions, and 3-tier emotion intensities. Character drift is half face drift, half performance drift.
4. Separate immutable identity from optional style.
5. Define needed views: face front/side/3/4 and full-body front/side/back/3/4 in one grid sheet, same outfit, same neutral flat light, with a scale bar. Expression set follows the Performance Lock tiers, not generic emotions. State variants (dirty, wet, injured) are separate sub-assets when the story needs them.
6. For multi-character projects, require a lineup sheet (all leads side by side, shared scale bar, neutral light) — proportion drift between characters is a top continuity failure.
7. Assign the character's fixed layout ID color (used in all 3D layout color-ID renders across the project).
8. Define what each reference controls and does not control. Identity assets must not carry dramatic lighting or scene background.
9. Define negative constraints that prevent drift, and link the character to shots.

Output:

- Save `CHARACTER_CARD.md` under `02_characters/CHAR_<ID>/`.
- Generate image prompt tasks only after identity and performance locks are clear.

Quality gate:

- A later prompt can cite one character ID and preserve the same person — same face and same behavioral style — across frames.
- Multi-character projects have a lineup before multi-character shots are prompted.
- Locking passes the acceptance checks in 08A (grid self-consistency, signature detail present in every view) before status becomes `locked`.
