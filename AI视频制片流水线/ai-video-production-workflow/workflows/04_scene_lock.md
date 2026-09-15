# Scene Lock

Use for locations, interiors, streets, rooms, stages, product spaces, abstract sets, or environments.

Scene consistency is geometry-first: text descriptions and independently generated angle images cannot keep one space coherent. Build the geometry once, derive every view from it.

Process:

1. Write the spatial definition in `SCENE_CARD.md`: real-scale layout (walls, doors, windows, key furniture with sizes and relative positions), entrances/exits, anchors, foreground/midground/background.
2. Build a Blender blockout from that definition: simple primitives at real scale, saved as `03_scenes/SCENE_<ID>/blockout/<name>.blend`. Place one correctly-directed light so renders carry shadow direction. This .blend is the single geometric source of truth; all camera-safe angle renders and later per-shot layout guides come from it.
3. Render the nine-grid of camera-safe angles from the blockout (uniform work light, labeled camera positions). Geometry consistency across the nine views is now physically guaranteed.
4. Skin the scene (via 08A): each blockout render is a structure reference, the style anchor and color card are style references, producing the skinned nine-grid and key camera angle boards.
5. Create mood/time-state assets: story lighting per the light lock, one sub-asset set per time state (day/night/rain) the story needs. Do not bake story light into the geometry grid.
6. Lock the scene's sound signature (specific ambience, e.g. 空调低鸣+日光灯电流声) — it is a continuity anchor equal to visual anchors.
7. Define camera-safe angles, forbidden spatial changes, and what each scene reference controls / does not control: blockout renders control geometry and shadow direction only; mood boards control light and atmosphere; neither controls character identity or prop form.

Output:

- Save `SCENE_CARD.md` under `03_scenes/SCENE_<ID>/`, with the .blend and renders beside it.

Quality gate:

- The same scene can be shown from multiple angles without changing geography — verified structurally because all views share one .blend.
- Time states exist as separate sub-assets, not as prompt-time improvisation.
- The sound signature is recorded before storyboard work uses the scene.
- Prompt files can state which scene asset controls layout, which controls lighting, and which controls camera-safe views.
