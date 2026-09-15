# Color Palette Lock

Use when a project needs color continuity, brand colors, a generated color card, or palette references that should guide image and video prompts.

Process:

1. Create or identify a color card asset with stable color IDs, color values, and usage roles.
2. Record each color as more than a swatch: include hex or approximate value, color name, intended use, controlled objects or regions, and forbidden uses.
3. Separate color control from style control. A color card controls color placement and consistency; it does not control character identity, scene layout, prop shape, camera, or action.
4. Define hierarchy when color conflicts appear: locked character, scene, and prop identities remain intact; the color card adjusts allowed surfaces, accents, lighting, or mood only where assigned.
5. Link the color card to characters, scenes, props, keyframes, and video shots where it is used.

Output:

- Save `COLOR_CARD.md` under `01_references/COLOR_<ID>/`.
- Add the color card to `11_archive/ASSET_INDEX.md`.

Quality gate:

- Every locked color should have a usage role, not only a hex value.
- Color values are verified as reproducible on the target generation model (via 19 pilot or a test frame) before the card is marked locked.
- The color card should state what it controls and what it must not control.
- Later image and video prompts can cite the color card and preserve color continuity without changing identity, geography, prop form, or action.
