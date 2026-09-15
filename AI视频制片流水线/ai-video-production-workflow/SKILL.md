---
name: ai-video-production-workflow
description: 通用 AI 视频生产工作流（电影感优先）。用于把视频想法、剧本、参考图、参考视频、已有分镜或素材组织成可执行项目，产出项目 brief、剧本开发（想法→概念→节拍→剧本）、整部作品风格拉片与视觉语法书、参考视频反推分镜、改编锁定、已有分镜体检诊断、角色/场景/道具/色卡/风格锚资产卡、Blender 白模场景与 3D 布局图、AI 生成段计划、全能参考资产链路、首尾帧和关键帧图片提示词、Kling/可灵与 Seedance 视频提示词（时间轴/起幅落幅）、声音设计、风格试拍、连续性检查、序列审片、返工诊断与平台手册回写、项目归档。适用于 AI 漫剧、短剧、广告、产品片、MV、知识视频、动画、预告片，以及 1:1 仿参考视频但替换角色/画风/场景的项目；不用于接入图片或视频模型 API，也不自动生成视频。
---

# AI Video Production Workflow

## Core Rule

Use this skill to run an AI video project as a production workflow, not as one giant prompt. Route by the user's current input level, develop the story before shots, lock assets before shots, generate prompts for external image/video tools, then review at shot and sequence level, revise with a capped attempt budget, and archive lessons into living playbooks.

Do not call image or video generation APIs. The user may generate images or videos externally and place outputs back into the project folder. Local Blender may be used headlessly for scene blockouts and layout renders.

## Routing

Read `workflows/00_routing.md` when deciding where to enter the process.

Default route:

```text
idea or goal
-> project intake
-> story development (when there is no script yet)
-> style study of a reference work (when imitating a style, not one video)
-> reference video reverse engineering (when one source video drives the structure)
-> adaptation lock (when the user wants 1:1 imitation with changed subject/style)
-> storyboard intake & diagnosis (when the user already has a storyboard)
-> asset library setup
-> cinematography bible + character / scene(blockout) / prop / color / style-anchor lock
-> style pilot (verify the look is generatable before mass production)
-> storyboard breakdown
-> sound design per sequence
-> AI generation clip plan and Omni reference chain (for all-reference workflows)
-> keyframe design + drive-mode choice (only when fixed frames are needed)
-> base asset image prompts if locked image assets are missing (production-chain order)
-> 3D layout guides from scene blockouts (2D boxes only as fallback)
-> frame image prompts (start = full mode, end = diff mode)
-> video prompts (timeline / 起幅落幅 / lock statements / transition hooks)
-> continuity check (shot level)
-> sequence review (审片, sequence level)
-> revision diagnosis (attempt cap + degrade plans + playbook write-back)
-> archive
```

Never skip asset locking for character-, scene-, or prop-dependent shots unless the user explicitly asks for a quick draft. Never hand a raw idea to storyboard breakdown — story development comes first.

## Required Project Structure

```text
project-name/
  00_brief/            (brief, concept, script, cinematography bible)
  01_references/       (style studies, color cards, playbook)
  02_characters/
  03_scenes/           (scene cards + blockout/*.blend)
  04_props/
  05_storyboard/       (storyboard, diagnosis, clip plans, layouts/)
  06_image_prompts/
  07_generated_images/
  08_video_prompts/
  09_video_outputs/
  10_revision_notes/   (continuity, sequence reviews, pilots, revisions)
  11_archive/
  12_audio/            (sound design docs, VO, music, ambience)
  13_edit/             (assemblies, edit decision lists, final cuts)
```

Use the reusable project skeleton in `templates/project-template/`. For series work, keep a series-level library above projects for shared characters, scenes, bible, and playbook.

## Workflow Files

Load only the workflow file needed for the current step:

- `workflows/01_project_intake.md`: clarify goal, type, platform, ratio, duration, audience, style; route by input level.
- `workflows/01B_story_development.md`: idea → logline/concept → beat sheet → script with natural, subtext-driven dialogue.
- `workflows/02_asset_library.md`: index references, generated images, videos, versions, and reuse status.
- `workflows/03_character_consistency.md`: lock identity, body, face, wardrobe, expressions, actions, and the performance baseline (behavior vocabulary, emotion tiers, lineup).
- `workflows/04_scene_lock.md`: geometry-first scene lock — Blender blockout as the single geometric truth, skinned grids, time-state variants, light lock, sound signature.
- `workflows/05_prop_lock.md`: lock entity prop form with clean multi-view assets; blockouts for large/structural props; separate usage states; virtual/action-effect props.
- `workflows/13_color_palette_lock.md`: lock color cards, hex values, usage roles, forbidden drift; verified reproducible on the target model.
- `workflows/06_storyboard_breakdown.md`: script → professional shot table (size/angle/focal/move/axis/dialogue/transition/risk/pass-criteria), dialogue timing math, transition design, risk grading.
- `workflows/06B_storyboard_intake.md`: audit a user-provided storyboard — form check + creative review (story → character → shots → dialogue → shootability), graded fixes, no wholesale rewrite.
- `workflows/06C_sound_design.md`: per-sequence four-track sound plan (dialogue/SFX/ambience/music), music in/out points, sound bridges matching the storyboard's transition design.
- `workflows/15_reference_video_reverse_engineering.md`: reverse engineer one source video into a standard shot table and copyable shooting script (1:1 path).
- `workflows/15B_style_study.md`: 拉片 selected segments of a reference work into rules — feeds the cinematography bible (style path, output is rules not shots).
- `workflows/16_reference_adaptation_lock.md`: lock what the source video controls, what new assets replace, and what is forbidden.
- `workflows/17_ai_generation_clip_plan.md`: merge reverse-engineered shots into practical AI generation clips within platform limits.
- `workflows/18_omni_reference_chain.md`: all-reference asset matrix for Kling Omni / Seedance with budgets and missing-asset gates.
- `workflows/07_keyframe_design.md`: choose drive mode per shot (first/last frame, all-reference, camera-move replication), plan frames, route missing assets.
- `workflows/08A_base_asset_image_prompt.md`: base assets on a fixed production chain (style anchor → color card → characters → scenes → props → effects) with lighting layers and acceptance checks.
- `workflows/14_position_guide.md`: 3D-first layout guides — per-shot cameras in the scene blockout, clay + color-ID renders, optional camera-move previews; 2D boxes as justified fallback.
- `workflows/08B_frame_image_prompt.md`: frame prompts with fixed body order (参考素材使用 → 画面总起 → structured slots), bible vocabulary, diff-mode end frames.
- `workflows/08_image_prompt.md`: route image prompt work to 08A or 08B.
- `workflows/09_video_prompt.md`: platform video prompts with drive modes, mandatory timelines, 起幅/落幅, one-move rule, lock statements, transition hooks; consult the platform playbook.
- `workflows/19_style_pilot.md`: 1–2 test shots verify the look before mass production; promotes vocabulary, seeds the playbook.
- `workflows/10_continuity_check.md`: shot-level check against locked assets, storyboard pass criteria, and camera language.
- `workflows/10B_sequence_review.md`: 审片 — assemble the sequence, review rhythm, size curve, direction, transitions, sound; edit decision list.
- `workflows/11_revision_diagnosis.md`: diagnose failures, enforce the 3-attempt degrade rule, write back to the platform playbook.
- `workflows/12_archive.md`: preserve reusable assets, prompts, lessons; lift series assets; consolidate playbook and bible.

## Template Files

- `PROJECT_BRIEF.md`
- `CINEMATOGRAPHY_BIBLE.md`
- `CHARACTER_CARD.md`
- `SCENE_CARD.md`
- `PROP_CARD.md`
- `COLOR_CARD.md`
- `STORYBOARD_TABLE.md`
- `STORYBOARD_DIAGNOSIS.md`
- `KEYFRAME_PLAN.md`
- `POSITION_GUIDE.md`
- `IMAGE_PROMPT_TEMPLATE.md`
- `VIDEO_PROMPT_TEMPLATE.md`
- `SOUND_DESIGN.md`
- `PLATFORM_PLAYBOOK.md`
- `CONTINUITY_CHECKLIST.md`
- `REVISION_DIAGNOSIS.md`
- `PROJECT_ARCHIVE.md`
- `ASSET_INDEX.md`

## Output Language

- Use Chinese for workflow explanations, production decisions, diagnosis, and user-facing summaries.
- Use Chinese by default for image and video prompt bodies intended for external generation tools, including 可灵/Kling and Seedance.
- Provide English prompt bodies only when the user explicitly asks for an English or bilingual version.
- Keep asset cards structured and explicit. Avoid vague keyword piles. Emotion words must be translated into concrete facial actions and gestures.

## Prompt File Structure

Prompt files separate internal production metadata from the text copied into an external model.

Internal metadata includes project ID, platform, shot ID, drive mode, duration, aspect ratio, file names, version and take numbers, attempt count, risk grade, and review notes. The model prompt body is labeled `复制给模型的提示词` and contains only instructions useful to the model.

Version vs take: a changed prompt is a new version (`_vNN`); the same prompt re-rolled is a new take (`_tNN`). Attempt counts drive the degrade rule.

## Reference Usage

When a prompt uses reference assets, the model prompt body states how each reference is used, in priority order, with conflict arbitration (identity follows the character image, space follows the layout render, style follows the style anchor):

1. Character image: controls identity, face, body, wardrobe, proportions, silhouette; not unrelated background.
2. Scene image or layout: controls geography, lighting, spatial anchors, materials, atmosphere; not character identity.
3. Entity prop image: controls prop form, color, material, outline, multi-view consistency; not its white-background composition.
4. Usage-state prop image: controls a specific held/opened/damaged/poured/placed state; does not replace the base form.
5. Audio reference: controls voice, tone, speed, emotion, rhythm only; not the image.
6. Video/action reference: controls action logic, body rhythm, move style, camera rhythm; not identity, costume, or scene.
7. Color card: controls color values and their assigned surfaces/regions; not layout, identity, prop shape, or action.
8. 3D layout render (clay / color-ID): controls camera perspective, focal feel, placement, scale, depth order, occlusion, screen direction, shadow direction; not identity, costume, material, final colors, or style. ID colors are markers only and must not appear or tint the final image. (2D box guides: same semantics, fallback only.)
9. Style anchor / style reference: controls rendering language, texture, grain, lens feeling, finish; never overrides identity, geography, prop form, color assignments, or layout placement.
10. White-model camera-move preview: controls camera path, speed, and rhythm only; not content, identity, or style.
11. Full-reference / Omni chain: a short source video segment controls camera language, motion rhythm, action continuity, shot ordering, edit timing; subject/scene/prop images control identity, style, geography, object form. The video reference must not override the replacement cast or locked visual assets unless the user explicitly asks.

## Naming Rules

```text
P001_STYLE_ANCHOR_locked_v01.png
P001_COLOR_MAIN_palette_locked_v01.png
P001_CHAR_A_front_locked_v01.png
P001_CHAR_LINEUP_locked_v01.png
P001_SCENE_01_blockout_v01.blend
P001_SCENE_01_grid_clay_v01.png
P001_SCENE_01_grid_locked_v01.png
P001_SCENE_01_night_mood_locked_v01.png
P001_PROP_01_multiview_locked_v01.png
P001_STORYBOARD_TABLE_v01.md
P001_SH010_layout_clay_v01.png
P001_SH010_layout_colorid_v01.png
P001_SH010_camMove_v01.mp4
P001_SH010_startframe_v01_t01.png
P001_SH010_endframe_v01_t01.png
P001_SH010_kling_prompt_v01.md
P001_SH010_seedance_prompt_v01.md
P001_SEQ01_SOUND_DESIGN_v01.md
P001_SEQ01_SEQUENCE_REVIEW_v01.md
P001_SH010_revision_diagnosis_v01.md
```

## Quality Gates

Before delivering prompts or production files, check:

- The project brief has goal, platform, ratio, duration, style, safe-area rules, and constraints.
- A raw idea passed through story development before storyboard work; dialogue passed naturalness and voice-distinction checks.
- Style imitation of a whole work went through 15B into a cinematography bible; 1:1 video copies went through 15/16/17/18. User-provided storyboards went through 06B with the fixed review order (story → character → shots → dialogue → shootability).
- Characters, scenes, and props used in shots have locked IDs; multi-character projects have a lineup; characters have performance locks.
- Scenes with more than one camera angle have a Blender blockout as geometric source; time states exist as sub-assets; each scene has a sound signature.
- 08A followed the production chain order; no asset marked `locked` without passing its acceptance check; color cards verified on the target model.
- The style pilot passed before mass 08B/09 production, or the user accepted the risk in writing.
- The storyboard table carries size/angle/focal/move/axis/dialogue/transition/risk/pass-criteria; no dialogue overflow (3–4 chars/sec); no unmotivated cuts; sequence borders have designed transitions; S/A-risk shots have degrade plans.
- Camera and texture wording in prompts comes from the cinematography bible; platform tactics from the platform playbook; both consulted before writing.
- Placement-sensitive shots have a 3D layout render (or a justified 2D fallback); all cameras of one scene live in one .blend; start/end frames share one camera; markers excluded from final images.
- Frame prompt bodies follow the fixed order (参考素材使用 → 画面总起 → slots → negatives); end frames use diff mode against the generated start frame; referenced assets are not re-described.
- Video prompts declare a drive mode; multi-beat/dialogue clips have quantified timelines; one camera move per clip; 起幅/落幅 described; 落幅 carries the designed transition hook; lock statements replace re-description; no cut during a spoken line.
- For all-reference projects, prefer source segment + locked images + timeline prompt; respect platform budgets; keep standard shots separate from AI generation clips.
- Negative constraints are a short base plus shot-specific risks, not a growing generic list.
- Each sequence has a sound design plan (06C) before its video prompts; ambience follows the scene's sound signature.
- Shot-level continuity checks include the storyboard's pass criteria; sequences pass 10B review (rhythm, size curve, direction, transitions, sound) before archive.
- Revisions record attempt counts, enforce the 3-attempt degrade rule, and write at least one lesson back to the platform playbook.
- Archive preserves successful prompts, reusable assets (blockouts especially), playbook consolidation, and series-level lifting.
