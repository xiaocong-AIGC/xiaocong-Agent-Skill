# Layout Guide (3D-first Position Guide)

Use after storyboard and keyframe planning, after required base image assets are locked, and before 08B frame prompts when a shot needs placement, scale, depth, occlusion, axis, or camera-perspective control.

Placement control is 3D-first. A 2D colored-box overlay carries no perspective, no focal length, and no real occlusion; it is kept only as a fallback for quick one-off shots. The primary tool is a render from the scene's Blender blockout (see `04_scene_lock.md`), using the shared blockout as the single geometric truth.

## Process (3D layout, default)

1. Open the scene's blockout `.blend`. All cameras for all shots in this scene live in this one file — axis and geometry consistency across shots is thereby physically guaranteed.
2. Add one camera per shot, named `CAM_SH<ID>`, with real parameters: focal length (mm), height, tilt. Write these back into the storyboard row (Focal Feel / Angle / Layout Ref columns).
3. Pose stand-in mannequins (station, seated, turning, looking at phone — never T-pose) and prop blocks at intended positions. For start/end frame pairs, keep one camera and move the mannequins between two saved moments.
4. Render per shot, at the final aspect ratio:
   - Clay pass `P00x_SH0xx_layout_clay_vNN.png` — cleanest structure/composition/shadow-direction reference.
   - Color-ID pass `P00x_SH0xx_layout_colorid_vNN.png` — each character/key prop in its fixed project-wide ID color (mid-low saturation, well-separated hues), scene neutral gray; lets prompts point at subjects by color.
   - Optional camera-move preview `P00x_SH0xx_camMove_vNN.mp4` (2–3s) — precise motion reference for drive-mode C video prompts.
5. In prompts, declare the reference semantics: the layout render controls camera perspective, focal feel, placement/scale, depth order, occlusion, screen direction, and shadow direction; it does not control identity, costume, material, final colors, or style; ID colors are markers only and must not appear or tint the final image.
6. Record the color mapping table in `POSITION_GUIDE.md` (fixed per project; a character keeps one color everywhere).
7. Batch option: renders can be automated headlessly (`blender --background --python <script>`) reading camera data from the storyboard table; keep .blend files versioned like other assets.

## Image-driven variant (when scene truth = locked master images, not a blockout)

If the scene's source of truth is a set of accepted generated images (master-image method) and no blockout matches that geometry, the layout guide is 2D-first instead:

1. Derive an **empty plate** for the exact shot camera from the locked scene set (master-image derivation). The plate MUST contain the geography the character stands/sits on — a plate without the floor/anchor surface cannot host a person (ATU REV06 #4).
2. Draw colored outline boxes on the plate for each character/prop position (fixed project ID colors; sizes respect perspective; no text baked in). Scriptable — see the project's `annotate_position.py`.
3. First-frame prompt references: plate (space/light) + annotated plate (position markers only, "do not render the boxes") + character grids (identity). Never composite a character against a wide scene view without a plate + position marker — space will drift (ATU REV06 #3).

## Fallback (2D box overlay on blockout projects)

Only when a single quick shot does not justify opening Blender: draw simple colored outline boxes on the locked scene image at the target aspect ratio, box sizes respecting perspective, no text inside the image, every box mapped in the prompt, boxes declared as markers excluded from the final image. Record why 3D was skipped.

Output:

- Cameras and poses saved in `03_scenes/SCENE_<ID>/blockout/*.blend`; renders under `05_storyboard/layouts/`.
- Update `POSITION_GUIDE.md` notes and `11_archive/ASSET_INDEX.md` (type LAYOUT) with controls / does-not-control.

Quality gate:

- All shots sharing a scene take cameras from that scene's single .blend.
- Start/end frame pairs share one camera.
- Camera parameters are written back to the storyboard table.
- Renders match the final aspect ratio; every ID color has a text mapping; markers are excluded from final images.
- 2D fallback use is justified in writing.
