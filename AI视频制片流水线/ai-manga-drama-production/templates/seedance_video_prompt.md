# Template — SEEDANCE VIDEO PROMPT

> 用途：基于已批准的 storyboard ref 生成 Seedance（AI 视频）提示词。
> 严格继承 `references/AI视频工作流.md` §5。把 storyboard ref 当导演批准蓝图，重建被拍出的镜头，不渲染故事板本身。
> **不要写死具体角色或场景**；`<...>` 为占位。输出主体为**英文**；台词原话用中文。

## 选型（关键）：先按内容/分镜/镜头/导演视听决定镜头法，再选对应格式
文档里有**两类** seedance 格式，必须与该序列的分镜设计配套：
- **Type A · 一镜到底（single continuous master）**：序列是**单一连续运动、同一镜头的不同相位**（无切镜）→ 用 Type A。
- **Type B · 多镜头（multi-shot / 切镜）**：序列是**切镜、正反打、多机位覆盖**（每个 panel 是一个独立镜头）→ 用 Type B。
> 判断依据：动作连续性、空间/角度变化、导演想要的视听节奏。两类各配同类型的故事板设计。

---

## Type A — 一镜到底

Use @<storyboard ref> as the authoritative director-approved storyboard blueprint for the sequence. Treat every storyboard panel as a consecutive shot within a single cinematic sequence. Follow panel order exactly and do not invent alternative coverage. Do not render the storyboard sheet itself. Preserve camera placement, framing, lens intent, shot scale, character staging, screen direction, environmental geography, prop placement, action choreography, continuity and emotional escalation shown by the storyboard. The storyboard is the primary source of truth. Recreate the filmed sequence implied by the panels rather than the physical storyboard artwork.

The entire video must play as one continuous developing master shot with no visible cuts; each panel is a sampled phase of the same uninterrupted camera move, not a separate shot. Use one virtual lens / same-lens continuous camera move; scale changes come from physical camera movement only.

Use @<character ref> as the authoritative <C1> reference for face, body, wardrobe, proportions, <signature>.
<Use @<environment ref> / @<prop ref> per reference priority.>

VISUAL STYLE: <final rendering language: medium, cel edges, palette, material light, motion quality>.
AUDIO: <default> No background music or score. Use only diegetic ambience, foley, impacts, texture, and silence.
ENVIRONMENT: <final environment & effect-source constraints>.
EMOTIONAL GUIDANCE: Valence: <arc>. Arousal: <arc>; show through <visible performance cues>.

PANEL BEATS:
P01: <the sampled phase of the continuous move: camera move + performance + effect + sound cue>.
   DIALOGUE (<谁说>, <语气>): "<中文台词原话>"   // 仅当该面板有台词/旁白；旁白标 V.O.
P02: <...>
<one beat per storyboard panel, exact order>

---

## Type B — 多镜头（推荐用于切镜/正反打/多机位）

Use @<storyboard ref> as the storyboard for the sequence. Treat every storyboard panel as a consecutive shot within a single cinematic sequence. Follow panel order exactly and do not invent alternative coverage. Recreate the filmed sequence implied by the panels rather than the physical storyboard artwork.

Use @<character ref> as <C1> reference. <Use @<env ref> / @<prop ref> per reference priority.>

VISUAL STYLE: <final rendering language>.
ENVIRONMENT: <final environment & effect-source constraints>.
EMOTIONAL GUIDANCE: Valence: <arc>. Arousal: <arc>; show through <visible performance cues>.
AUDIO: No background music or score. Use only diegetic ambience, foley, impacts, texture, and silence: <list cues>.

BEATS:
1. <SHOT/FRAMING first (景别+机位, e.g. 中近景反打 / 低角广角 / 插入特写 / 俯拍 / 环绕)>: <performance + effect + sound>.
   DIALOGUE (<谁说>, <语气>): "<中文台词原话>"   // 仅当该镜头有台词/旁白；旁白标 V.O.
2. <SHOT/FRAMING>: <...>
<one numbered beat per storyboard panel, each a distinct shot, exact order>

---

> 填写提示：
> - 先选型（A 一镜到底 / B 多镜头），再套对应块；与该序列故事板设计一致。
> - BEATS/PANEL BEATS 必须与 storyboard 面板**一一对应、同序**，不增删镜头。
> - **Type B 每条 beat 先报景别/机位**（点明这是一个独立镜头），再写表演/效果/声音。
> - **台词/旁白**：在对应镜头加 `DIALOGUE` 行，写**中文原话 + 谁说 + 语气**；旁白标 V.O.；逐字取自定稿剧本（见 [[dialogue-natural]]）。台词要留够时长。
> - reference priority：identity 控脸/身/服；environment 控地理/光；prop 控道具；storyboard 控 staging。
> - **承接不另设模块**：相邻序列的咬合靠首/末镜的状态自然衔接（上一序列末镜状态=下一序列首镜起点），写在 beat 内容里。
> - 彩色/最终效果只写在 VISUAL STYLE / ENVIRONMENT / beats，不写进 storyboard。
> - **生成控制（全能参考模式）**：故事板→视频不稳定时，改资产驱动（详见 `references/seedance_omni_reference.md`）——**不混故事板**，只喂 `@场景图(plate)` 锁地理 + `@角色`/`@道具` + **首帧/尾帧 `@keyframe`**（锁难控开场/反转，首尾帧插值最稳）+ 空间写死的提示词；每个 `@素材` 标明用途；没有资产的空间不露出；引用资产不重复描述其已锁内容。故事板退为导演规划。
