# Keyframe Design

Use after storyboard breakdown, before layout guides and frame image prompts.

For all-reference workflows, do not enter this step by default. Use `17_ai_generation_clip_plan.md` and `18_omni_reference_chain.md` first, then create keyframes only if the platform or shot still needs fixed frames.

Process:

1. Decide the generation strategy per shot before frame work: static emotional hold → single start frame + minimal motion text; A-to-B movement → start/end frames; complex camera move → white-model camera-move preview as video reference (mode C); dialogue → start frame + audio reference. Record the chosen mode.
2. Decide whether each shot needs a start frame, end frame, and optional mid-keyframe.
3. Check whether every required image asset is generated, reviewed, and locked: character identity/styling, scene (correct time state), entity props, prop usage states, color card, style anchor, action reference. If missing, route to `08A_base_asset_image_prompt.md`. Do not create layout guides or frame prompts from unlocked assets unless the user explicitly requests a rough draft.
4. Decide whether the shot needs a layout guide (14). Default yes for multi-subject shots, placement/occlusion-sensitive shots, repeated camera setups, and any shot pair sharing a scene — the 3D layout guarantees axis and geometry across them. Record the camera name (CAM_SH<ID>).
5. Start/end frames of one shot must come from the same layout camera; describe them as two moments of one continuous action, with the end frame planned as diff-mode (based on the generated start frame, describing only the delta).
6. Describe composition, subject position, action state, camera angle, and continuity anchors; preserve screen direction and the storyboard's transition-out design between frames.
7. Name expected base asset prompt batch, layout guide, and frame files using the project naming rules.

Output:

- Save `06_image_prompts/KEYFRAME_PLAN.md`.

Quality gate:

- Missing base image assets are listed clearly and routed to 08A.
- Layout work starts only after required base image assets are locked, unless marked as rough draft.
- The start frame and end frame describe one continuous action from one camera, not two unrelated images.
- Placement-sensitive frames cite a layout camera or explain why text-only placement is enough.
