# 08A Base Asset Image Prompt

Use after keyframe design identifies missing locked image assets, or at project start to build the asset foundation.

Purpose:

- Generate prompts for reusable base asset locks, not shot frames.
- 08A is a production line with a fixed order, not a shopping list. Consistency comes from the reference chain between assets, not from per-prompt wording.

## Production Chain (fixed order)

```text
style anchor (定调图, verified by 19 pilot)
-> color card
-> characters (face -> full-body grid -> expression tiers -> lineup -> state variants)
-> scenes (Blender blockout -> clay nine-grid -> skinned nine-grid -> mood/time-state boards -> material details)
-> props (blockout for large/structural -> white-background multiview -> usage states)
-> virtual/action-effect assets
```

Every step references the locked outputs of earlier steps. The style anchor is mandatory in every 08A prompt after it exists; scene skinning prompts also carry the blockout render as structure reference.

**Real reference stills override the generated style anchor.** When the project owns stills/frames from the reference work (style-homage projects), those stills are the primary material/atmosphere/light reference for scene-type assets; the generated style anchor becomes a fallback for cases with no usable still (and character assets never attach stills — actor likeness bleed). With stills attached, prompt text must NOT re-describe what the image already carries (saturation, contrast, halation, texture) — text covers content, camera, and deltas only.

**The blockout is a geometry-consistency tool, NOT an aesthetic tool.** Image models render blocky white-model geometry literally → cheap, gamey furniture. Blockouts never participate in scene beauty generation; they return only at stage 14 as a low-weight position aid for pinning characters/cameras. (ATU REV03/REV04)

**Scene assets use the MASTER-IMAGE method (user-validated, ATU REV05):**
1. 风格探索 — throwaway minimal prompts on the image platform, no specs, no refs; a human picks the master (sole source of truth).
2. 机位派生 — derive other views with the master as the only visual reference: "以参考图为唯一视觉母版。保持同一套空间、同一时间、同一光线、同一家具材质和生活痕迹。只改变机位：镜头位于【相对母图位置】，向【目标】方向拍摄。不要重新设计空间/样板间感/CG感/人物/文字。" Short chains (view→view) are acceptable; re-attach the master every 2–3 steps; pin known drift points (flooring, furniture form) in text.
3. 反向锁定 — after acceptance, extract the "room bible" (fixed anchors + drift points) from the images back into the SCENE_CARD. The images are the source of truth; speculative card settings yield to accepted images.
Time-state variants derive from locked views (same geography, change only sky/light).

**Creative discipline:** worldbuilding details the model itself adds (props, set dressing, character quirks) must serve the established tone and stay disposable — drop them the moment they fight the look or the user questions them. Never defend an invented detail because "the model designed it." (ATU REV04)

## Process

1. Read the keyframe plan (or project scope) and list missing assets; order them by the production chain, never generate downstream assets before their upstream references are locked.
2. If no style anchor exists, create it first as `candidate`: 1–3 定调 images defining rendering language. Bootstrap exception to the chain rule: the first character and first scene may be built on a candidate anchor, because `19_style_pilot` needs them to run — the pilot then promotes the anchor to `locked`. No mass asset production on an unverified anchor.
3. Write Chinese prompt bodies with `参考素材使用` stating controls / does-not-control for every reference (style anchor controls rendering language only; blockout render controls geometry only; color card controls color placement only).
4. Every 08A prompt must state 出图规格: grid layout and view labels, lighting layer (角色身份=中性平光; 场景几何=统一工作光; 气氛图=剧情光), background rule, scale bar.
5. Follow the type rules in `IMAGE_PROMPT_TEMPLATE.md` (multiview in one grid, lineup for multi-character projects, expression tiers from Performance Lock, time-state sub-assets, white-background props).
6. After the user generates outputs, run the acceptance checks below before any asset is marked `locked`, then update `11_archive/ASSET_INDEX.md`.

## Acceptance Checks (draft -> locked gate)

- Character: heights consistent across views; hair/costume self-consistent in every view; signature detail present in every view; neutral flat light, no scene background.
- Lineup: all leads share one scale bar; proportions match their cards.
- Scene: nine-grid geometry mutually consistent (auto-satisfied when skinned from one blockout); anchors visible where the card says; time states separated.
- Prop: same object across all views; no hands/characters/scene/text.
- Color card: values reproduce on the target model (tested, not assumed).
- Style anchor: `candidate` on creation; promoted to `locked` only by 19 pilot verification (bootstrap exception above).

Output:

- Save prompts under `06_image_prompts/`, e.g. `P001_08A_BASE_ASSET_IMAGE_PROMPTS_v01.md`.
- Generated outputs go under `07_generated_images/`; scene blockouts live at `03_scenes/SCENE_<ID>/blockout/`.
- Update `11_archive/ASSET_INDEX.md` with status, controls, and does-not-control notes.

Quality gate:

- Chain order respected; no downstream asset prompted before upstream locks.
- Every prompt is an asset lock, not a shot frame.
- No asset reaches `locked` without passing its acceptance check.
