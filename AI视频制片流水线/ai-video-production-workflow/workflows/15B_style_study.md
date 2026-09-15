# Style Study (整部作品风格致敬 / 拉片)

Use when the user wants to imitate the **style** of an existing film/series/director — its look, camera habits, rhythm — while telling their own story. This is not `15_reference_video_reverse_engineering`, which copies one specific video shot-for-shot. The output here is **rules**, not a shot table.

## Process

1. Confirm scope with the user: which work(s), which aspects (光影 / 运镜 / 色彩 / 节奏 / 声音 / 构图), and what stays original.
2. Select 3–5 representative segments (typical dialogue scene, typical emotional peak, typical establishing/transition passage). Do not study the whole work.
3. 拉片 each segment using the analyst identity prompt from `15_reference_video_reverse_engineering.md`, but aggregate into patterns instead of a remake table:
   - Shot size distribution and close-up economy (when are close-ups earned).
   - Camera movement personality (static/breathing/restless; signature moves; what it never does).
   - Lens language (focal feels, depth of field habits).
   - Light grammar (key direction, contrast, color temperature policy, signature effects).
   - Palette and grading character.
   - Edit rhythm (average cut length by scene type; how scenes enter and exit).
   - Sound style (ambience density, music policy, silence usage).
   - **Space language / production design typology（空间语言）**: 参考片的典型空间型——户型/开窗方式/层高/家具密度/材质体系/纵深层次来源（如 Her=高层转角落地玻璃, 城市为第二光层）。Scene cards (04) must conform to this typology or record a written justification for deviating. 缺了这层, 场景可以在镜头/色彩全对的情况下依然"不像那部片"（ATU REV03 教训）。
4. Write the patterns into `CINEMATOGRAPHY_BIBLE.md` (rules + candidate texture vocabulary, marked draft until pilot-verified) and a `COLOR_CARD.md`; note sound style for `SOUND_DESIGN.md`.
5. Legal red line: style imitation is safe; do not copy recognizable characters, logos, or signature IP elements. Record forbidden items explicitly.

## Output

- Save `01_references/Pxxx_STYLE_STUDY_vNN.md` (per-segment notes + aggregated patterns).
- Create or update `00_brief/CINEMATOGRAPHY_BIBLE.md` and related color/sound cards.
- Route to normal original-story flow (01B/06), then `19_style_pilot` to verify the style is generatable.

## Quality gate

- Output is rules and vocabularies, not a shot-for-shot table (that belongs to 15).
- Every rule traces to an observed segment, not to generic genre clichés.
- Texture vocabulary stays draft until verified on the target model by pilot.
- IP red-line list exists.
