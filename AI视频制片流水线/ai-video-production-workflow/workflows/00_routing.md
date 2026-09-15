# Routing

Choose the entry point from the user's highest completed input level.

| User input | Enter workflow | Main output |
|---|---|---|
| Idea, mood, topic, reference only | `01_project_intake.md` | `PROJECT_BRIEF.md` |
| Brief exists but no script (only an idea) | `01B_story_development.md` | concept + script |
| Wants the style of an existing film/series (致敬风格, not 1:1 copy) | `15B_style_study.md` | style study + `CINEMATOGRAPHY_BIBLE.md` |
| Existing project brief | `02_asset_library.md` | `ASSET_INDEX.md` |
| Character description or images | `03_character_consistency.md` | `CHARACTER_CARD.md` |
| Scene description or location references | `04_scene_lock.md` | `SCENE_CARD.md` (+ blockout .blend) |
| Prop description or prop reference | `05_prop_lock.md` | `PROP_CARD.md` |
| Color palette, color card, brand colors, or color continuity need | `13_color_palette_lock.md` | `COLOR_CARD.md` |
| Reference video to imitate 1:1, same camera/action with replaced character/style, or "copy this video" | `15_reference_video_reverse_engineering.md` | `REFERENCE_REVERSE_BREAKDOWN.md` |
| Reverse breakdown exists and the user gives replacement rules or forbidden changes | `16_reference_adaptation_lock.md` | `ADAPTATION_LOCK.md` |
| Script, copy, beat sheet, outline | `06_storyboard_breakdown.md` | `STORYBOARD_TABLE.md` |
| User provides an existing storyboard / shot list | `06B_storyboard_intake.md` | `STORYBOARD_DIAGNOSIS.md` + revised table |
| Storyboard sequences exist, sound not yet planned | `06C_sound_design.md` | `SOUND_DESIGN.md` per sequence |
| Core assets locked, before mass shot production | `19_style_pilot.md` | pilot report |
| Reference-led storyboard exists and target model supports all-reference video input | `17_ai_generation_clip_plan.md` | `AI_GENERATION_CLIP_PLAN.md` |
| AI generation clip plan exists, or source video segments and image reference budgets must be mapped | `18_omni_reference_chain.md` | `REFERENCE_CHAIN_MATRIX.md` |
| Storyboard table exists | `07_keyframe_design.md` | `KEYFRAME_PLAN.md` |
| Keyframe plan needs image assets that are not generated and locked | `08A_base_asset_image_prompt.md` | base asset image prompts |
| Need placement, scale, depth, occlusion, axis, or camera-perspective control | `14_position_guide.md` | 3D layout renders + `POSITION_GUIDE.md` |
| Locked image assets and layout guides ready; need start/end/keyframes | `08B_frame_image_prompt.md` | frame image prompts |
| Unsure whether image prompt task is base asset or frame work | `08_image_prompt.md` | image prompt route |
| Generated images or keyframes exist | `09_video_prompt.md` | platform video prompts |
| Generated images/videos exist | `10_continuity_check.md` | continuity checklist |
| All clips of a sequence pass shot-level check | `10B_sequence_review.md` | sequence review + edit decision list |
| User reports a failure | `11_revision_diagnosis.md` | revised prompt + playbook write-back |
| Project or phase is complete | `12_archive.md` | `PROJECT_ARCHIVE.md` |

Rules:

- Do not jump from a raw idea directly to final video prompts unless the user explicitly requests a rough test. A raw idea goes through story development (01B) before storyboard breakdown.
- Distinguish the two imitation paths: one specific video copied shot-for-shot → 15/16/17/18; the style of a whole work with an original story → 15B (output is rules, not a shot table).
- A user-provided storyboard is audited (06B), never re-broken. Review order: story → character → shots → dialogue → shootability.
- For a 1:1 reference-video imitation, do not start from keyframes or first/last frames. Reverse engineer the video first, then lock the adaptation, then build AI generation clips and the all-reference chain.
- When reverse engineering a video, use the required expert identity prompt from `15_reference_video_reverse_engineering.md`.
- Distinguish a standard shot table from an AI generation clip plan. A continuous 10-15 second AI clip may contain multiple internal shots from the reference video.
- Camera and texture wording in prompts comes from `CINEMATOGRAPHY_BIBLE.md`; platform tactics come from `PLATFORM_PLAYBOOK.md`. Consult both before writing prompts; write lessons back after failures.
- Do not enter mass 08B/09 production before the style pilot (19) passes, unless the user accepts the risk.
- Do not let style references override locked character identity, scene geography, or prop form.
- Do not treat a color card as simple decoration. Record what each color controls and what it must not control.
- Placement control is 3D-first: layout renders from the scene blockout; 2D colored boxes are a justified fallback only. Markers never appear in final images.
- Do not create layout guides or frame prompts until required image assets are generated and locked, unless the user explicitly requests a rough draft.
- Do not create layout guides for an all-reference video workflow unless placement still cannot be controlled by the reference video segment and locked scene/character images.
- Same shot failed 3 times → degrade plan (split / reaction shot / insert / different drive mode), never a fourth identical roll.
- Shot-level pass is not the end of review: sequences must pass 10B before archive.
- If information is missing, state reasonable assumptions and continue with clearly marked placeholders.
