# Sequence Review (审片)

Use after all clips of a sequence pass shot-level continuity check (10), before archive. Shot-level pass is not film-level pass: single clips can all be correct while the assembled sequence is unwatchable.

## Process

1. Assemble the sequence: play or concatenate clips in storyboard order (a simple ffmpeg concat or editor timeline is enough).
2. Review rhythm: which shots run long/short against their storyboard duration; where the pacing sags.
3. Review shot-size curve: flag 3+ consecutive same-size shots and size jumps that read as errors.
4. Review direction continuity: exit/enter screen directions, eyelines, axis across cuts.
5. Review transitions against the storyboard's Transition Out design: did the match cut align, did the sound bridge exist, did the anchor stay visible?
6. Review against the sound design doc: dialogue clarity, ambience continuity (same scene = same signature), music in/out points.
7. Produce an edit decision list: trim head/tail per clip, inserts or reaction shots needed to bridge, clips to regenerate (route to 11 with reason).
8. Only after sequence pass: color/grade notes, subtitles (respect safe area), delivery.

## Output

- Save `10_revision_notes/Pxxx_SEQUENCE_REVIEW_<seq>_vNN.md`: findings + edit decision list + verdict (pass / fix-in-edit / needs regeneration).

## Quality gate

- Every regeneration request maps to a shot ID, a reason, and respects the 3-attempt degrade rule.
- Fix-in-edit is preferred over regeneration when trimming or sound can solve it.
- A sequence is not archived until it passes as a sequence, not as a pile of shots.
