# Revision Diagnosis

Use when generated images or videos fail.

Process:

1. Record the shot's attempt count first. **Iron rule: after 3 failed attempts on one shot, no fourth identical re-roll — execute the degrade plan (split shot / reaction shot / insert / different drive mode / back to storyboard) or escalate to the user.**
2. Compare the failed output against the original prompt, storyboard row (including its pass criteria), and locked assets.
3. Check `PLATFORM_PLAYBOOK.md`: is this a known platform behavior? If yes, apply the recorded cure instead of rediscovering it.
4. Diagnose likely cause: asset lock missing, prompt conflict, motion too complex (more than 1–2 actions or a second camera move), reference usage conflict, layout mismatch, platform limitation, or bad keyframe.
   **First split the diagnosis by layer: design-layer vs prompt-layer.** If the output is "correct to the prompt but still wrong" (space feels cheap/empty, style keeps drifting the same way, the thing described just doesn't look right), the upstream asset design itself is wrong — go back and revise the card/blockout/reference set. Prompt patching is only for prompt-layer causes, and gets at most ONE patch round per asset before forced escalation to the design layer. (ATU REV03: two prompt-patch rounds were spent on a scene whose spatial design was the real fault.)
5. Decide: simplify, split shot, strengthen references, switch drive mode, revise frame, or revise video prompt — or trigger the degrade plan.
6. Write the revised prompt with versioned filename (`_vNN`), distinguishing prompt changes (new version) from re-rolls (new take).
7. **Write back to `PLATFORM_PLAYBOOK.md` — mandatory.** Every diagnosis produces at least one playbook line (new finding, confirmed cure, or dated re-verification). A diagnosis that teaches nothing is incomplete.

Output:

- Save `10_revision_notes/REVISION_<shot-id>_v<version>.md` using `REVISION_DIAGNOSIS.md`.

Quality gate:

- Do not only say "make it more consistent" — provide a concrete revised prompt.
- Attempt count recorded; degrade rule enforced.
- Playbook write-back present.
