# Asset Library

Use when the project has references, generated images, videos, screenshots, or reusable assets.

Process:

1. Assign each asset a stable ID.
2. Record path, source, version, status, and usage.
3. Record what the asset controls and what it must not control when used as a reference.
4. Link assets to characters, scenes, props, color cards, shots, audio references, video/action references, or style references.
5. Mark whether each asset is `draft`, `candidate`, `locked`, `rejected`, or `final`. Image assets reach `locked` only by passing the acceptance checks in `08A_base_asset_image_prompt.md` for their type.

Output:

- Create or update `11_archive/ASSET_INDEX.md`.
- Keep source files in the matching project folders.

Quality gate:

- No important asset should be unindexed.
- Every locked asset should have a clear reference use case, controls, and does-not-control notes.
