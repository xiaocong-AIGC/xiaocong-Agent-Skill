# 08B Frame Image Prompt

Use after required base image assets are generated and locked, and after layout guides are created when needed.

Purpose:

- Generate prompts for shot start frames, end frames, and mid-keyframes using the rebuilt `IMAGE_PROMPT_TEMPLATE.md`.
- Frame prompts are shot-specific; they inherit locked assets by reference and never re-describe what a referenced asset already locks.

Process:

1. Confirm required base assets are locked (else return to 08A) and whether the shot needs a layout guide (else route to 14). Consult `PLATFORM_PLAYBOOK.md` for the target image model's known behaviors.
2. Order matters — models weight early tokens: start the body with `参考素材使用` (priority-ordered, with conflict arbitration: identity follows the character image, space follows the layout render, style follows the style anchor), then the one-sentence 画面总起 ([景别]+[焦段感]，[谁]在[哪][做什么]，[时刻/气氛]), then the structured slots.
3. Fill every slot from locked sources: camera/composition from the storyboard row and `CINEMATOGRAPHY_BIBLE.md` (never improvised wording); subject/performance with emotions translated to concrete facial actions per the character's Performance Lock; environment with interior/exterior and door/window states pinned; light matching the scene card's lock and time state; texture words only from the bible's verified vocabulary. Respect the safe area.
4. Start frame uses 完整模式. End frames and mid-keyframes default to 差量模式: reference the generated start frame as input, describe only the delta, declare everything else locked (camera, light, set, costume, style). Do not write a second full description.
5. Layout usage: map every ID color to its character/prop, state that colored blocks are placement/volume markers only and must not appear or tint the final image.
6. Negative constraints = short standard base + 1–3 shot-specific risk items (from the risk grade and playbook), not a long generic list.
7. Take numbering: same prompt regenerated = new take (`_tNN`); changed prompt = new version (`_vNN`).

Output:

- Save frame prompts under `06_image_prompts/`, e.g. `P001_08B_FRAME_IMAGE_PROMPTS_v01.md`.
- Generated frames go under `07_generated_images/`.

Quality gate:

- Body order: 参考素材使用 → 画面总起 → structured slots → negatives.
- Referenced assets are not re-described; only state deltas and locks.
- End frames use diff-mode against the generated start frame and share its camera.
- Camera and texture wording traces to the bible; emotion words are concrete actions.
- Layout markers explicitly excluded from the final image.
