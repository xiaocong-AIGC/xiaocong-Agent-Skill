# Prop Lock

Use for objects whose appearance or use matters to continuity.

Process:

1. Classify the prop as an entity prop, a prop usage-state asset, or a virtual/action-effect prop.
2. For an entity prop base lock, create or request a clean white or light neutral background multiview asset. Show only the same prop from front, side, back, top, or 3/4 views as relevant. Lock form, size, material, color, texture, markings, and outline.
3. Do not require hand scale or usage states in the entity prop base lock. If interaction matters, create a separate prop usage-state asset for held, opened, active, damaged, placed, poured, thrown, or broken states.
4. For a virtual/action-effect prop, lock the effect's appearance, trigger, position, motion path, timing, frequency, opacity, and compositing rules. It may use video/action references to control movement, but it should not override character identity or scene.
5. For large or structurally complex props (vehicles, machines, instruments), build a simple Blender blockout first to lock proportion and structure; render it as a structure reference for the multiview prompt. Small props stay 2D multiview only. Key recurring props get a fixed layout ID color for 3D layout color-ID renders.
6. Link each prop asset to related characters, scenes, and shots.

Output:

- Save `PROP_CARD.md` under `04_props/PROP_<ID>/`.

Quality gate:

- The entity prop base asset should not mix in characters, hands, scenes, action shots, text labels, or brand marks.
- The prop should not change size, color, material, or function between shots unless explicitly revised.
- Usage-state images should be separate from the base multiview asset unless the user explicitly asks for a combined sheet.
