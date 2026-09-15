# Sound Design

Use after storyboard breakdown (06) or storyboard intake (06B), once sequences exist. Sound is planned at storyboard time, not discovered in post: clip stitching relies on sound bridges more than on visual tricks, and video prompts (09) need the ambience and dialogue plan as input.

Process:

1. Pull each scene's sound signature from its `SCENE_CARD.md`; if a scene has none, return to 04 to lock it.
2. Build the four-track plan per sequence (dialogue / SFX / ambience / music) in `SOUND_DESIGN.md`, aligned with the storyboard's Dialogue/Sound column — the two must not contradict.
3. Music plan: emotional target, in/out points mapped to shot IDs, beat-sync moments, and where silence is the device.
4. Design sound transitions to match the storyboard's Transition Out column: every transition marked as sound bridge names its actual sound; place J-cut/L-cut positions.
5. Re-verify dialogue timing (3–4 chars/sec) against shot durations; discrepancies go back to the storyboard, not into the prompts.
6. List audio references (voice/tone samples) that 09 video prompts will cite.

Output:

- Save `12_audio/Pxxx_SEQ<id>_SOUND_DESIGN_vNN.md` using `SOUND_DESIGN.md`.

Quality gate:

- One scene, one ambience signature — no unexplained changes inside a scene.
- Every storyboard sound-bridge transition has a named sound; music in/out points map to shot IDs.
- The plan exists before that sequence's video prompts are written; 10B reviews against it.
