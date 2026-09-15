# Image Prompt

Use only to route image prompt work. For actual production, use `08A_base_asset_image_prompt.md` for missing base assets and `08B_frame_image_prompt.md` for start/end/keyframe prompts.

Process:

1. If keyframe design shows required character, scene, prop, color-card, action, or style image assets are missing or unlocked, enter `08A_base_asset_image_prompt.md`.
2. If required base image assets are generated and locked, and the task is to create start frames, end frames, or mid-keyframes, enter `08B_frame_image_prompt.md`.
3. If placement, scale, depth, occlusion, axis, or camera perspective are not controlled yet, enter `14_position_guide.md` (3D layout guide) before 08B.
4. In both 08A and 08B, keep production metadata separate from the copied model prompt body, write Chinese by default, and use `参考素材使用` for all references.

Output:

- Save routed prompts under `06_image_prompts/`.

Quality gate:

- Do not mix 08A base asset locks and 08B frame prompts in the same prompt block unless explicitly producing a combined planning document.
- Do not proceed to 14 position guide or 08B frame prompts from missing or unlocked base image assets unless marked as rough draft.
