# Continuity Check

Use after the user places generated images or videos back into the project. This is the shot-level gate; passing it does not finish review — a sequence must also pass `10B_sequence_review.md` before archive.

Check:

- character face, body, costume, hair, expression (against performance lock), hands, and limbs
- scene geography, light direction, anchors, and camera direction/axis
- prop shape, scale, color, material, and usage
- action readability and start/end frame match
- shot intent: the pass criteria written in the storyboard row are met
- camera language delivered as specified (size, angle, move)
- transition-out state as designed (exit direction, eyeline, sound tail)

Output:

- Save `10_revision_notes/CONTINUITY_CHECKLIST_<batch>.md`.
- Mark each issue as `pass`, `minor`, `needs revision`, or `reject`.

Quality gate:

- Every serious issue maps to a shot ID and a concrete correction, and counts toward that shot's attempt tally (3 attempts → degrade plan).
- When all clips of a sequence pass shot-level, route to `10B_sequence_review.md`.
