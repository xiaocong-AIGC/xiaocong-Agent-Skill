# AI 视频工作流 — 资产生产格式参考 (Reference Source)

> 本文件是 **MODULE B（AI Asset Production）** 的唯一格式来源。
> 它从《AI视频工作流.docx》中抽取出**结构、字段层级、描述语气和制片逻辑**，
> 并把原文中的具体故事（Bree 风帆、白光剑、DOVE-9 记忆树、NOX/LUMOS 森林等）
> **当作演示用例，而不是默认内容**。
>
> 使用规则：
> - 生成资产时，**严格继承下列字段顺序、英文语气和 production prompt 风格**。
> - **不要**把演示用例里的角色、场景、道具、镜头数量当成模板默认值。
> - 具体 SUBJECT、panel 数量、视觉细节，由 AI 根据当前项目自行判断。
> - 输出**不得**简化成关键词 prompt，**不得**改成普通小说 / 普通漫画分镜 / 普通视频描述。

---

## 1. CHARACTER IDENTITY BOARD — 结构规律

固定开头句：`Create an artistic 16:9 CHARACTER IDENTITY BOARD.`

字段顺序与作用：

| 字段 | 作用 |
|------|------|
| `[SUBJECT]` | 角色名 + 一句身份 + 引用图说明（`use the reference image`）+ 修正指令（color correction / no goggles / no board 等需要移除或锁定的项） |
| `VISUAL MEDIUM` | 渲染媒介（realistic 3d / stylized 3d cel-shaded 等）+ 纯白或柔和米白背景 + no environment, no logo, no watermark |
| `DESIGN DIRECTION` | 否定标准角色表；要求电影感 identity board + artbook 排版；非对称、优雅、留白、变化尺度、刻意不平衡；避免网格/蓝图/目录/重复转身 |
| `IMPORTANT LAYOUT RULE` | 不重叠、清晰间距、各视图独立；无裁切脸、无隐藏肢体、无堆叠、无合并姿势 |
| `MAIN COMPOSITION` | 一张大 hero 全身略偏中心作视觉锚点；周围排列更小的支持研究（中性全身 / 背面 / 侧面 / 坐姿 / 倚靠 / 蹲姿 / 俯视 / 仰视 / 表情研究）；每个视图是独立干净的角色研究而非同一场景的画面 |
| `IDENTITY LOCK` | 跨所有视图严格一致：同脸、同面部比例、同发型、同服装、同身体比例、同姿态语言、同视觉个性 |
| `USEFUL REFERENCE DETAILS` | 为后续图像/视频生成保持可读：清晰脸型、发型轮廓、服装轮廓、身形、手部、姿态、表情范围 |
| `ARTISTIC SECTIONS` | 小剪影研究区（2-3 个简化黑色剪影）；小表情研究区（细微情绪变化）；小细节研究区（脸/发/服装关键特征） |
| `TEXT DESIGN` | 一个 CHARACTER ID 块，极简、加粗、艺术指导；只用 NAME / ROLE / CORE MOOD / VISUAL SIGNATURE；少量手写体标签；克制的编辑箭头 |
| `STYLE` | minimal, cinematic, premium, artbook-like, clean, expressive, useful for production + 收尾句说明用途 |

收尾句风格：`The final image should feel like an artistic character identity board designed to help an AI model understand the character's face, silhouette, outfit, posture and emotional range.`

---

## 2. ENVIRONMENT IDENTITY BOARD — 结构规律

固定开头句：`Create an artistic 16:9 ENVIRONMENT IDENTITY BOARD.`

字段顺序与作用：

| 字段 | 作用 |
|------|------|
| `[SUBJECT]` | 场景名 + 完整空间身份描述 + 风格说明 + No characters, no logo, no watermark |
| `VISUAL MEDIUM` | 媒介风格 + 纯白/米白背景 + 干净制片 artbook 呈现 + no character performance / no action scene / no dramatic battle moment |
| `REFERENCE PRIORITY` | （当有已存在场景/外观参考时）用 `@[ref]` 作为建筑身份参考；列出要保留的设计语言；声明本资产控制什么、不复制什么；把参考的设计语言翻译进当前空间 |
| `DESIGN DIRECTION` | 否定标准建筑图；电影感 location study + artbook；非对称、留白、变化尺度 |
| `IMPORTANT LAYOUT RULE` | 不重叠、清晰间距；无裁切关键建筑、无隐藏核心锚点、无合并视图、无重复混乱的空间 |
| `MAIN COMPOSITION` | 一张大 hero 广角略偏中心；周围排列入口到中心视图、核心锚点视图、天花/顶部视图、关键道具研究、细节研究、低视角、俯视布局研究 |
| `ENVIRONMENT IDENTITY` | 这个空间是什么 / 不是什么；混合类型定义；历史与当前状态；气氛基调 |
| `SPATIAL LOCK` | 跨所有视图严格空间一致：同入口方向、同核心锚点位置、同关键元素分布、同光线方向、同地面路径 |
| `KEY ENVIRONMENT ELEMENTS` | 逐条列出关键建筑/自然/道具元素 |
| `COLOR AND MATERIAL` | 低饱和调色板逐条 + 可读材质逐条 |
| `LIGHTING` | 光源方向、光轴、阴影逻辑、发光元素、整体光感情绪 |
| `USEFUL REFERENCE DETAILS` | 为后续生成保持可读：清晰入口、核心锚点、关键道具位置、地面路径、留给角色表演的空间 |
| `ARTISTIC SECTIONS` | 小空间研究区（2-3 布局缩略）；小气氛研究区；小细节研究区 |
| `TEXT DESIGN` | 一个 ENVIRONMENT ID 块；只用 NAME / ROLE / CORE MOOD / VISUAL SIGNATURE |
| `STYLE` | minimal, cinematic, premium, artbook-like + 媒介技术锁 + 收尾句 |

**REFERENCE PRIORITY 的关键句式**（演示）：
`This interior asset controls the inner chamber layout ... Do not copy the exterior composition. Translate the exterior design language into the interior space.`
当复用已有场景作时间/状态变体时：用一个 ref 作 architectural identity，另一个 ref 作 spatial continuity，并声明 `Do not redesign the chamber into a new location. Translate ... into its ... state.`

---

## 3. PROP IDENTITY BOARD — 抽象规律

> 原文档没有独立道具板。本结构是从角色板 + 场景板的逻辑**抽象**而来，
> 用于把一个关键道具锁定成可复用资产（形态 / 比例 / 材质 / 使用与损坏状态 / 功能）。

固定开头句：`Create an artistic 16:9 PROP IDENTITY BOARD.`

字段顺序：`[SUBJECT]` → `VISUAL MEDIUM` → `REFERENCE PRIORITY` → `DESIGN DIRECTION` → `IMPORTANT LAYOUT RULE` → `MAIN COMPOSITION`（hero 道具 + 多角度 + 使用状态 + 尺度对照 + 细节）→ `PROP IDENTITY`（这是什么、用途、归属角色）→ `FORM LOCK`（形态/轮廓一致）→ `SCALE AND USE LOCK`（尺度对照、握持/使用方式）→ `MATERIAL AND DAMAGE STATE`（材质 + 全新/磨损/损坏状态）→ `FUNCTIONAL DETAILS`（可动部件、开合、发光、机制）→ `USEFUL REFERENCE DETAILS` → `TEXT DESIGN`（PROP ID：NAME / ROLE / CORE MOOD / VISUAL SIGNATURE）→ `STYLE`。

---

## 4. STORYBOARD SEQUENCE BOARD — 结构规律

固定开头句：`Create a 16:9 image.`

模块顺序（全部出现在一张故事板 sheet 的指令里）：

1. `[PROJECT CARD]` — compact designed masthead, not a table. 含 `TITLE` / `META LINE`（风格/类型/强度走向）/ `PRIORITY`（本序列最重要的可读项）/ `MICRO BRIEF`（一句话概括 ≤15 秒序列）
2. `[CONTINUITY HEADER]` — `SEQUENCE ID`（小写下划线 + 面板数 + p，如 `xxx_04p`）+ `REFERENCE PRIORITY`（`Use @[ref] as identity reference for ...; this storyboard controls staging, camera path, geography, continuity, and panel order.`）
3. `[SCENE PACKET]` — `PREMISE` / `LOCATION` / `START -> END` / `ACTION CHAIN`（用 `->` 串联动作相位）/ `PROP / EFFECT STATE` / `MUST READ`
4. `[CHARACTER SANITIZATION]` — 逐个 C1/C2... 给出可在画面呈现的外形；并加一句 `Remove contradictory traits, invisible psychology, excessive costume detail, and backstory that cannot appear in a panel.`
5. `[IDENTITY CONSISTENCY]` — 声明各 ref 控制什么（identity ref 控脸/身/服/比例；storyboard 控 staging only）；`do not redesign, merge, age-shift, or add extra characters.`
6. `[STORYBOARD PURITY]` — `Panel images are visual-only low-detail monochrome light-gray rough sketches. Put panel numbers, beat names, and lens tags in the header strip outside each panel image. No color, labels, arrows, captions, subtitles, logos, watermarks, timing marks, diagrams, UI, ghost poses, duplicate bodies, or technical overlays inside panels.`
7. `[MASTER SHOT RULE]` — 指定某一面板作为可玩地理 master（建立方向、轴线、空间）
8. `[EMOTIONAL ARC]` — 用 `->` 串联情绪相位 + 通过哪些可见表演体现
9. `[STYLE LOCKS]` — `STYLE LOCK`（黑白粗草稿、米白纸、石墨灰边、accent 只在面板外）/ `EFFECT LOCK`（面板内简单单色形状；final-video intent 才描述彩色效果）/ `ENVIRONMENT LOCK`（跨面板同一地理）
10. `[SPATIAL CONTINUITY LOCK]` — 声明这些面板是同一条连续路径的采样相位；只允许变化 camera / pose / angle / 强度等
11. `[DIRECTOR STRIP]` — 底部 animatic 轨道，对齐面板列。Tracks: `BEAT LINE, CAMERA PATH, ACTION PATH, RHYTHM TRACK, ESCALATION MAP, STATE TRACK, STYLE TRACK`。`No seconds or timestamps.`
    - `RHYTHM TRACK format: RHY P##: [hold|slow reveal|build|burst|impact|pause|recover|final hit] / [short block|medium block|long block] / [clean beat|match beat|smash beat|held beat|whip beat].`
    - `ESCALATION MAP format: ESC P##: [L1 calm|L2 tension|L3 rise|L4 surge|L5 peak] / [flat|rise|spike|drop|release|unresolved].`
12. `PANEL HEADERS` — `P01 / [lens or framing] / [beat name] -> P02 / ... ->`
13. `CAMERA + LENS PLAN` — 逐面板镜头/焦段/运动
14. `ACTION PATH` — 逐面板动作
15. `RHYTHM TRACK` / `ESCALATION MAP` / `STATE TRACK` / `STYLE TRACK` — 逐面板填上述格式
16. `[SEQUENCE]` — `Grid: N panels in a [2x2 | 5x3 | 3x6 | ...] storyboard sheet; ...`，根据面板数选择网格

**故事板硬约束（必须写进每张板）：**
- panel 数量由序列内容（动作密度、情绪变化、镜头复杂度）决定，不固定。
- 序列时长 ≤ 15 秒。
- 网格按面板数选择（4→2x2，15→5x3，18→3x6，依此类推）。
- 面板画面保持单色粗草稿（monochrome rough storyboard）。
- director strip 对齐面板列。
- 板内无时间戳、无字幕、无 UI。

---

## 5. SEEDANCE VIDEO PROMPT — 结构规律

核心开头（把故事板当导演批准蓝图，而不是渲染故事板本身）：

```
Use @[storyboard ref] as the authoritative director-approved storyboard blueprint for the sequence.
Treat every storyboard panel as a consecutive shot within a single cinematic sequence.
Follow panel order exactly and do not invent alternative coverage.
Do not render the storyboard sheet itself.
Preserve camera placement, framing, lens intent, shot scale, character staging, screen direction,
environmental geography, prop placement, action choreography, continuity and emotional escalation shown by the storyboard.
The storyboard is the primary source of truth for visual storytelling.
Recreate the filmed sequence implied by the panels rather than the physical storyboard artwork.
```

**文档里共有 3 种"故事板驱动"的 seedance 格式（①②③）+ 1 种"脱离故事板"的全能参考（④），按剧情/镜头/导演视听选用：**

**① A 一镜到底（single continuous master）** — 范例 Bree 风帆（4 格）。上面的蓝图后**加连续性句**：
`The entire video must play as one continuous developing master shot with no visible cuts; each panel is a sampled phase of the same uninterrupted camera move.` / `Use one virtual lens / same-lens continuous camera move; scale changes come from physical camera movement only.`
`PANEL BEATS: P01/P02...`，每格=同一长镜头的采样相位。适用：单一连续运动、无切镜。

**② B-精简 多镜头** — 范例 白光剑（15 格）。**精简开头**：`Use @[storyboard ref] as the storyboard for the sequence. Treat every storyboard panel as a consecutive shot... Recreate the filmed sequence...`（无一镜到底句）+ refs + EMOTIONAL GUIDANCE + AUDIO + `BEATS: 1,2,3...`，**每条先报景别/机位**（独立镜头）。**不带 VISUAL STYLE/ENVIRONMENT**。适用：切镜/正反打/多机位，节奏利落。

**③ B-完整 多镜头** — 范例 NOX（18 格）。**verbose 蓝图**（"authoritative...blueprint...Do not render...Preserve camera placement..."，无一镜到底句）+ `ENVIRONMENT / EMOTIONAL GUIDANCE / VISUAL STYLE / AUDIO` + `PANEL BEATS: P01...`。硬切多镜头、且需要锁风格/环境时用。

**④ 全能参考（脱离故事板）** — 见 `seedance_omni_reference.md`。即梦**原生格式**：中文、`@素材作为首帧/尾帧`、`参考@的人物形象`、`场景参考@`、时间轴分镜 `0–N秒：…`。**当故事板生成不稳时用**；其提示词形态与 ①②③ 都不同（不写"storyboard blueprint/panel"那套）。

引用各资产：`Use @[char ref] as ... reference for face, body, wardrobe, proportions ...` / `Use @[env ref] ...` / `Use @[prop/droid ref] ...`，按 reference priority。

字段块（顺序）：
- `VISUAL STYLE` — 最终渲染语言（媒介、cel edges、调色、材质光感）
- `AUDIO` — 通常 `No background music or score. Use only diegetic ambience, foley, impacts, texture, and silence.`（如项目需要配乐再调整）
- `ENVIRONMENT` — 最终场景与效果来源约束（Type B 也可带；NOX(③) 即多镜头带 VISUAL STYLE/ENVIRONMENT）
- `EMOTIONAL GUIDANCE` — `Valence:` ... `Arousal:` ...，并说明通过哪些可见表演体现
- `PANEL BEATS:`（Type A）或 `BEATS:`（Type B）— 与故事板面板一一对应；Type B 每条先报景别/机位
- `DIALOGUE`（有台词/旁白时）— 在对应镜头加一行，中文原话 + 谁说 + 语气，旁白标 V.O.

---

## 6. KLING VIDEO PROMPT — 抽象规律

> 原文档以 Seedance 为主。Kling 模板沿用同一条 **storyboard → video** 逻辑，
> 但按 Kling 的描述习惯组织为：reference usage / sequence intent / camera continuity /
> character consistency / environment continuity / motion logic / visual style /
> sound / beat-by-beat action / constraints against inventing extra coverage。
> 同样把 storyboard ref 当导演蓝图，不渲染故事板本身，不发明额外镜头。

---

## 7. 通用制片逻辑（贯穿所有资产）

- **Reference priority 必须显式声明**：谁控身份、谁控地理、谁控道具、谁控 staging、谁控风格。
- **故事板内只画黑白粗稿**；彩色/最终效果只写在 final-video intent 或视频提示词里。
- **资产板的目的**是让 AI 模型在后续图像/视频生成中保持一致，所以始终强调 `useful for production` / `future video staging`。
- 英文 production prompt 语气：祈使句、分层小标题、逐条锁定（lock）、用 `->` 表达相位推进。
