# Omni Reference Chain

Use after `17_ai_generation_clip_plan.md` for Kling Omni, Seedance, or any model that accepts video/image/subject/audio references together.

## Process

1. Build a matrix with one row per AI generation clip.
2. For each clip, list:
   - Reference video segment.
   - Required character/subject images.
   - Required scene images.
   - Required prop/effect images.
   - Optional style/color/action references.
   - Platform-specific reference budget.
   - Missing assets before generation.
   - What each reference controls and must not control.
3. Prefer source video segment + locked images + timeline prompt for 1:1 imitation. Do not default to first/last-frame-only prompting when all-reference input is available and appropriate.
4. For Kling Omni, keep image/subject references within the platform budget when a video reference is used.
5. For Seedance, use the larger image-reference budget to lock more roles or scene details when needed.
6. If a required image asset is missing, route to `08A_base_asset_image_prompt.md` before video prompting.
7. Save under `05_storyboard/` as `Pxxx_REFERENCE_CHAIN_MATRIX_vNN.md`.

## Quality Gate

- Every video prompt later produced from this matrix must start by explaining reference usage.
- The matrix must avoid ambiguous reference authority. Example: the source video controls camera/action, not the old character identity.
- For multi-character dance or combat, the row must lock exact character count and roles.
- If the source reference segment is too long, too large, or rejected by the model, shorten/compress it without changing the intended source range unless the user approves a new cut.
