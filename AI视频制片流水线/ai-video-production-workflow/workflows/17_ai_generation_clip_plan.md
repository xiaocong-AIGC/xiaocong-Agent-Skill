# AI Generation Clip Plan

Use after a reference-video reverse breakdown and adaptation lock when the target model generates short video clips, especially Kling Omni or Seedance.

**Also applies to original-story storyboards** (ATU REV09): on platforms with 智能分镜/multi-shot generation (Kling 3.0 Omni, Seedance 2.0), convert the storyboard into generation units — contiguous same-scene dialogue/action shots (reverse-shot chains especially) merge into one 10–15s unit with internal cuts declared in the prompt timeline ("0–6s【镜头1·景别】…6–12s【切至镜头2·景别】…"). S-risk shots, key emotional beats, and shots with a dedicated camera move stay solo. Benefits: fewer generations, model-internal transitions (no choppy edit joins). Anti-choppiness for solo shots: +2s handles, tail-frame→next-head-frame chaining, and the storyboard's designed J/L-cuts and sound bridges.

## Process

1. Group the standard shot table into practical AI generation clips based on continuity, scene, action, and platform duration limits.
2. Do not assume one standard shot equals one generated video. A 10-15 second generated clip may contain several internal story shots when the source video itself is continuous.
3. Keep each reference segment within the target platform's supported duration.
4. For each generated clip, record:
   - Clip ID.
   - Time range.
   - Source shot numbers included.
   - Source video reference path or needed cut range.
   - Scene and cast appearing in the clip.
   - Required subject/scene/prop images.
   - Missing assets that block generation.
   - Output file naming.
5. If needed, cut the source video into matching reference segments and store them in `01_references/main_video/`.
6. Save under `05_storyboard/` as `Pxxx_AI_GENERATION_CLIP_PLAN_vNN.md`.

## Quality Gate

- The plan must preserve the source video sequence order and edit rhythm.
- No clip should mix unrelated locations unless the source video segment itself cuts between them and the platform can handle that.
- Missing scene/character/prop assets must route to `08A_base_asset_image_prompt.md`, not be guessed in video prompts.
- The plan must explicitly state that the reference video controls motion/camera while locked images control identity and design.
