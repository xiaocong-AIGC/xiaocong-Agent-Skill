# Template — STORYBOARD SEQUENCE BOARD

> 用途：把一个 sequence（≤15s）转成一张分镜故事板 sheet。
> 严格继承 `references/AI视频工作流.md` §4 的模块顺序与英文 production prompt 语气。
> **不要写死故事内容**；`<...>` 为占位。
> panel 数量由本 sequence 的动作密度 / 情绪变化 / 镜头复杂度决定；网格按 panel 数选择。
> 输出主体为**英文**。

---

Create a 16:9 image.

[PROJECT CARD]
Create a compact designed masthead, not a table.
TITLE: <SEQUENCE TITLE>
META LINE: <style / genre / intensity arc>
PRIORITY: <the most important readable items for this sequence>
MICRO BRIEF: <one sentence describing the ≤15-second sequence>

[CONTINUITY HEADER]
SEQUENCE ID: <lowercase_underscore_id_NNp>   (NN = panel count)
REFERENCE PRIORITY: Use @<identity ref> as identity reference for <C1 face, body, wardrobe, proportions, silhouette>; <list other refs and what each controls>; this storyboard controls staging, camera path, geography, prop placement, continuity and panel order.

[SCENE PACKET]
PREMISE: <one-line dramatic premise of this sequence>
LOCATION: <spatial anchors, direction, key props, main moving color idea for the final video>
START -> END: <start state> -> <end state>
ACTION CHAIN: <phase -> phase -> phase -> phase>
PROP / EFFECT STATE: <which props/effects, how they originate and evolve>
MUST READ: <the single thing the viewer must understand>

[CHARACTER SANITIZATION]
C1: <only panel-visible traits: build, hair, wardrobe, stance, movement quality>.
<C2 / C3 if any: same treatment.>
Remove contradictory traits, invisible psychology, excessive costume detail, and backstory that cannot appear in a panel.

[IDENTITY CONSISTENCY]
<Identity ref controls face/body/wardrobe/proportions; environment ref controls setting anchors; prop ref controls prop design; the storyboard controls staging only.> Keep <C1 silhouette / wardrobe / screen direction> consistent. Do not redesign, merge, age-shift, beautify, duplicate, or add extra characters.

[STORYBOARD PURITY]
Panel images are visual-only low-detail monochrome light-gray rough sketches. Put panel numbers, beat names, and lens tags in the header strip outside each panel image. No color, labels, arrows, captions, subtitles, logos, watermarks, timing marks, diagrams, UI, ghost poses, duplicate bodies, or technical overlays inside panels.

[MASTER SHOT RULE]
<Pick the panel that establishes full playable geography and direction; describe what it locks.>

[EMOTIONAL ARC]
<emotion phase -> phase -> phase>; show it through <visible performance cues>.

[STYLE LOCKS]
STYLE LOCK: clean monochrome rough sketch storyboard, off-white paper, graphite-gray borders, restrained <accent colors> only outside panels, <posing style>, no rendered color inside panel art.
EFFECT LOCK: effects drawn inside panels as simple monochrome graphite shapes; final-video intent is <describe the color/light/effect for the video only>.
ENVIRONMENT LOCK: same <environment> across all panels: <stable anchors>; no extra elements, no redesigned space.

[SPATIAL CONTINUITY LOCK]
<State that the panels are sampled phases of one continuous path / one layout, not separate locations. List the only allowed changes: camera position, pose, angle, effect density, etc.>

[DIRECTOR STRIP]
Bottom animatic track board aligned to panel columns. Tracks: BEAT LINE, CAMERA PATH, ACTION PATH, RHYTHM TRACK, ESCALATION MAP, STATE TRACK, STYLE TRACK. Use shot chips, thin lines, rhythm blocks, small intensity bars, one-to-three-word labels. No seconds or timestamps.
RHYTHM TRACK format: RHY P##: [hold|slow reveal|build|burst|impact|pause|recover|final hit] / [short block|medium block|long block] / [clean beat|match beat|smash beat|held beat|whip beat].
ESCALATION MAP format: ESC P##: [L1 calm|L2 tension|L3 rise|L4 surge|L5 peak] / [flat|rise|spike|drop|release|unresolved].
PANEL HEADERS: P01 / <lens or framing> / <beat> -> P02 / <...> / <...> -> ... (one per panel)
CAMERA + LENS PLAN: P01 <camera/lens/move> -> P02 <...> -> ... (one per panel)
ACTION PATH: P01 <action> -> P02 <...> -> ... (one per panel)
RHYTHM TRACK: P01 RHY P01: <...> -> P02 RHY P02: <...> -> ... (one per panel)
ESCALATION MAP: P01 ESC P01: <...> -> P02 ESC P02: <...> -> ... (one per panel)
STATE TRACK: P01 <state> -> P02 <...> -> ... (one per panel)
STYLE TRACK: P01 <style note> -> P02 <...> -> ... (one per panel)

[SEQUENCE]
Grid: <N> panels in a clean <grid, e.g. 2x2 / 5x3 / 3x6> storyboard sheet; panel artwork stays monochrome rough sketch, panel headers outside each drawing, director strip aligned below.

---

> 硬约束自检（必须满足）：
> - panel count is determined by the sequence content（动作密度/情绪/镜头复杂度），不固定。
> - sequence duration must not exceed 15 seconds。
> - panel count 用**偶数**、排成均衡多行网格；不要单数格/单行条状（如 5、7）。
> - grid layout 按 panel count 选择（4→2x2，6→3x2，8→4x2，12→4x3，18→3x6 ...）。
> - panel artwork stays monochrome rough storyboard。
> - director strip aligns with panel columns。
> - no timestamps inside the board；no subtitles inside panels；no UI inside panels。
> - 每个 P## 在 PANEL HEADERS / CAMERA / ACTION / RHYTHM / ESCALATION / STATE / STYLE 中都要出现且数量一致。
