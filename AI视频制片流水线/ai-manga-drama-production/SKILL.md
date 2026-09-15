---
name: ai-manga-drama-production
description: AI 漫剧 / AI 短剧 / AI 动画剧情视频的完整制片流程框架。从一句想法或情绪/题材/参考作品，一直开发到可拍剧本、分集、分镜故事板与 AI 视频提示词（Seedance / Kling）。用于：想做 AI 漫剧但只有模糊想法、需要把已有剧本拆成镜头资产、需要生成角色/场景/道具设定板、需要生成故事板或视频提示词时。这是框架型流程，不内置具体故事；具体题材、人物、剧情、分镜数量由模型按输入判断。资产生产格式严格继承《AI视频工作流.docx》。
---

# AI Manga Drama Production

一套**框架型、流程型、可复用**的 AI 漫剧/短剧/动画剧情视频制片流程。
它**不写死任何具体故事**，只定义：流程、判断规则、输出类型、格式约束。
具体题材、人物、剧情、世界观、分镜数量、镜头设计、资产细节，
全部由模型根据用户输入、项目目标与上下文自行判断。

> 演示用例（如参考文档中的 Bree、白光剑、DOVE-9 等）只用于展示格式，
> **绝不**作为默认内容套用到新项目。

---

## 1. Purpose（目标）

把 AI 漫剧制片拆成两个可衔接的核心模块，覆盖从「想法创意」到「AI 视频提示词生产」的全链路：

- **MODULE A — Creative Development**：从想法/情绪/画面/题材/角色/参考作品，开发成可拍的 AI 漫剧剧本。
- **MODULE B — AI Asset Production**：把剧本/分集/单集脚本，拆成角色资产、场景资产、道具资产、分镜故事板、视频生成提示词。

资产生产阶段的所有格式 **严格继承 `references/AI视频工作流.md`**（即《AI视频工作流.docx》抽象稿）。

---

## 2. When to use（何时使用）

- 用户只有一个想法、情绪、画面、题材、角色、参考作品或模糊方向，想开发成 AI 漫剧。
- 用户已有故事梗概 / 分集大纲 / 单集脚本 / 完整剧本，想推进或拆成镜头资产。
- 用户要生成角色设定板 / 场景设定板 / 道具设定板。
- 用户要把某个 sequence 拆成分镜故事板。
- 用户要基于 storyboard ref 生成 Seedance / Kling 视频提示词。
- 用户要对创意、剧本、分镜、资产、提示词做 QA 检查。

## 3. When not to use（何时不使用）

- 与 AI 漫剧/短剧/动画剧情视频制片无关的任务。
- 用户只想要纯文学小说、纯文案、与镜头无关的设定百科。
- 用户明确要求脱离本流程的一次性零散问答。
- 已有外部固定模板且用户要求严格照搬、不需要本框架判断时。

---

## 4. Core principle（核心原则）

1. **只定义流程、判断规则、输出类型与格式约束**，不写死具体故事。
2. **不要把示例当默认**：参考文档里的角色/场景/镜头数仅示范格式。
3. **按输入判断阶段**：用户给到哪一层，就从哪一层接手（见 Routing logic）。
4. **不越级**：只有想法时不直接出分镜；只有题材时不直接出完整剧本。
5. **方向未锁定前先给方案**，锁定后才进入下一阶段。
6. **资产阶段严格继承文档格式与英文 production prompt 语气**，不得简化成关键词 prompt，不得改成普通小说/漫画分镜/视频描述。
7. **storyboard 是导演批准的蓝图**：视频提示词重建被拍出的镜头，而不是渲染故事板本身。
8. **信息不足时先基于合理假设给可选方案，不频繁追问**。

---

## 5. Routing logic（路由判断）

根据用户输入所处的层级，进入对应阶段（详见 `workflows/00_routing.md`）：

| 用户给的输入 | 进入阶段 | 模块 | 主要 workflow |
|---|---|---|---|
| 只有想法 / 情绪 / 画面 / 参考 | idea intake → concept development | A | 01 |
| 给了题材但没有故事 | concept development | A | 01 |
| 给了故事梗概 | story engine（故事发动机） | A | 02 |
| 给了分集大纲 | episode script | A | 03 |
| 给了完整剧本 | sequence breakdown | B | 04 |
| 给了 sequence | storyboard generation | B | 07 |
| 给了 storyboard ref | video prompt generation | B | 08 |
| 要求角色资产 | character identity board | B | 06 |
| 要求场景资产 | environment identity board | B | 06 |
| 要求道具资产 | prop identity board | B | 06 |
| 说「不要写剧本，只分析」 | 只分析，不生成内容 | — | 00 |
| 说「不要作图」 | 只输出提示词或分析，不调用图像生成 | — | 00 |
| 信息不足 | 基于合理假设输出可选方案，不频繁追问 | — | 00 |

判断不确定时，优先按「用户给到的最高完成层级」接手，并在开头用一行中文声明当前进入的阶段与依据。

---

## 6. MODULE A — Creative Development（创意开发模块）

用途：当用户只有想法/情绪/画面/题材/角色/参考/模糊方向时，从 0 开发成可拍的 AI 漫剧剧本。
本模块可使用商业短剧、漫剧、网文、动画编剧的开发逻辑。

**核心原则：**
1. 用户只有想法时，不要直接写分镜。
2. 用户只有题材时，不要直接写完整剧本。
3. 用户没确认方向时，先输出多个概念方案。
4. 确认概念后，再进入故事发动机设计。
5. 确认故事发动机后，再进入人物关系、世界规则与试播结构。
6. 默认先开发 **5 集试播**，而非直接开发长篇。
7. 每集默认适配 **60–120 秒** 短漫剧，可按用户要求调整。
8. 优先考虑：追更欲望、前 5 秒钩子、结尾钩子、情绪爆点、反转点、视觉可执行性。
9. 不能只写世界观，必须落到人物目标、冲突、关系、单集推进。
10. 创意阶段可给多个方案，但**进入资产阶段前必须先锁定一个版本**。

**本模块应思考的维度（不写死答案，按项目生成）：**
受众与平台、核心情绪、题材与子类型、参考坐标、主角目标与匮乏、对抗力量、核心冲突、人物关系张力、世界规则、爽点/虐点节奏、钩子设计、视觉可执行性（AI 生成难度）、商业潜力、版权风险。

**本模块可生成的输出类型（框架化，内容按项目自创）：**
1. Idea Intake Summary（`templates/idea_intake.md`）
2. Concept Options（多个）（`templates/concept_development.md`）
3. Commercial Potential Review
4. Story Engine（故事发动机）
5. Character Relationship Map
6. World Rules
7. Visual Feasibility Notes
8. Pilot Episode Plan
9. Five Episode Trial Outline（`templates/five_episode_trial_outline.md`）
10. Full Episode Script（`templates/episode_script.md`）

Story Bible 汇总见 `templates/story_bible.md`。

---

## 7. MODULE B — AI Asset Production（AI 资产生产模块）

用途：当已有剧本/分集大纲/单集脚本时，把内容拆成 AI 视频生产所需资产：
角色资产、场景资产、道具资产、分镜故事板、视频生成提示词。

**本模块必须严格参考 `references/AI视频工作流.md`：**
从文档中提取人物设定板、场景设定板、分镜故事板、视频提示词的结构规律、字段层级、描述语气、制片逻辑与约束方式，再套用到当前项目。

Skill 只明确：每类输出的用途、应参考文档中的哪类格式、必须保持文档专业 production prompt 风格；
**不得**简化成关键词 prompt，**不得**改成普通小说/普通漫画分镜/普通视频描述。
具体字段、描述密度、镜头数量、panel 数量、视觉细节，由 AI 按输入、剧本内容、动作密度与上下文自行判断。

**资产生产硬规则：**
1. 一集若超过 15 秒，必须拆成多个 sequence。
2. 一个 sequence 对应一张 storyboard sequence board。
3. panel 数量不固定，由模型按动作密度、情绪变化、镜头复杂度判断。
4. 角色、场景、道具、故事板、视频提示词必须建立清晰 reference priority。
5. 视频提示词必须把 storyboard ref 当作导演批准的 blueprint，而不是渲染故事板本身。
6. 输出前必须进行 QA 检查（QA 维度按任务类型与文档规范自行组织，见 `templates/qa_checklist.md`）。

模板对应：
- `templates/character_identity_board.md`（参照文档 CHARACTER IDENTITY BOARD）
- `templates/environment_identity_board.md`（参照文档 ENVIRONMENT IDENTITY BOARD）
- `templates/prop_identity_board.md`（由角色板/场景板抽象）
- `templates/storyboard_sequence_board.md`（参照文档分镜故事板）
- `templates/seedance_video_prompt.md`（参照文档 Seedance 结构）
- `templates/kling_video_prompt.md`（同一 storyboard→video 逻辑，Kling 习惯）

---

## 8. Output language rules（输出语言规则）

- **剧本分析、流程说明、制片建议、阶段声明** → 用**中文**。
- **角色设定板、场景设定板、道具设定板、分镜故事板、Seedance / Kling 视频提示词** → **主要用英文**，保持文档中的专业 production prompt 风格。
- 资产板内的 TEXT DESIGN（NAME / ROLE / CORE MOOD / VISUAL SIGNATURE）用英文。
- 给用户的解释、理由、选项说明，可中文；交付给 AI 生成器的 prompt 主体用英文。

---

## 9. Sequence duration rules（序列时长规则）

- 每个 sequence **必须 ≤ 15 秒**。
- 一集若 > 15 秒，必须拆成多个 sequence（按情绪段落 / 场景切换 / 动作单元拆）。
- 每个 sequence 必须有清晰的 start 与 end，并对应**一张** storyboard sequence board。
- panel 数量按该 sequence 的动作密度/情绪变化/镜头复杂度决定，不预设固定值。
- 故事板内**不放时间戳**；时长意图通过 RHYTHM TRACK 的 block 长度表达。

---

## 10. Reference priority rules（参考优先级规则）

当用户提供参考图或已有资产时，必须显式建立 reference priority：

- **Character reference** controls face / body / wardrobe / proportions / silhouette / identity.
- **Environment reference** controls geography / lighting / spatial anchors / material / atmosphere.
- **Prop reference** controls shape / scale / material / usage state / damage state.
- **Storyboard reference** controls staging / camera / panel order / continuity / action choreography.
- **Style reference** controls rendering language / palette / line quality / lighting mood,
  but should not override identity or geography unless the user explicitly says so.

冲突时优先级：identity / geography（被锁定的身份与地理）> staging（storyboard）> style。
每张资产板与每条视频提示词都必须写明「谁控制什么、谁不覆盖什么」。

---

## 11. Asset prompt rules（资产提示词规则）

- 角色板 / 场景板 / 道具板必须沿用 `references/AI视频工作流.md` 的字段顺序、英文语气、artbook + identity board 风格。
- 必须含 IDENTITY / SPATIAL / FORM 等 LOCK 字段，保证后续生成一致性。
- 背景纯白/米白，no logo / no watermark；场景与道具板 no characters。
- 强调 `useful for production` / `future video staging`。
- 不得简化成关键词堆叠；保持分层小标题 + 逐条锁定。

## 12. Storyboard prompt rules（故事板提示词规则）

- 沿用文档完整模块顺序（PROJECT CARD → ... → SEQUENCE）。
- panel count is determined by the sequence content（动作密度/情绪/镜头复杂度）。
- sequence duration must not exceed 15 seconds。
- panel count 用**偶数**、排成均衡多行网格；避免单数/质数导致的单行条状（如 5、7）。
- grid layout 按 panel count 选择（4→2x2，6→3x2，8→4x2，12→4x3，15→5x3，18→3x6 ...）。
- panel artwork stays monochrome rough storyboard。
- director strip aligns with panel columns。
- no timestamps inside the board；no subtitles inside panels；no UI inside panels。
- 面板内只画黑白粗稿；彩色/最终效果只写在 EFFECT LOCK 的 final-video intent。

## 13. Video prompt rules（视频提示词规则）

- 必须以 storyboard ref 为 **authoritative director-approved blueprint**。
- Follow panel order exactly；do not invent alternative coverage。
- Do not render the storyboard sheet itself；recreate the filmed sequence implied by the panels。
- 按 reference priority 引用 character refs / environment refs / prop refs。
- 含 VISUAL STYLE / AUDIO / ENVIRONMENT / EMOTIONAL GUIDANCE / PANEL BEATS（逐面板）。
- **两类格式按镜头法选用**（先按内容/分镜/导演视听定镜头法，再选对应格式，与同类型故事板配套）：
  - **Type A 一镜到底**：加 "one continuous developing master shot / same-lens" 句，`PANEL BEATS: P01...`（每格=同一长镜头相位）。用于单一连续运动。
  - **Type B 多镜头**：精简开头（无一镜到底句），`BEATS: 1,2,3...`，**每条先报景别/机位**（独立镜头）。用于切镜/正反打/多机位覆盖。
- 有台词/旁白的镜头：加 `DIALOGUE (谁说, 语气): "<中文原话>"`，旁白标 V.O.，逐字取自定稿剧本，留够时长。
- **生成控制（默认故事板驱动，实测更好）**：默认走"故事板→视频"；**seedance 提示词的具体画面以「剧情 + 已做出来的故事板」为准**（看故事板实际构图/景别/调度/站位翻成画面），**不是只照剧本编**；内容写**具体大白话、不用抽象词**。
- **全能参考兜底**：仅当某序列"故事板→视频"确实不稳时（空间漂移/编出未建空间/乱开场/高难反转），才转**全能参考**（详见 `references/seedance_omni_reference.md`）——即梦原生格式（中文+`@素材`逐一标用途+时间轴），用带明确用途的**参考画面/场景图 plate** 锁人物在空间的关系；≤9图/≤12文件；没有资产的空间不露出；引用资产不重复描述其已锁内容。
- Kling 模板沿用同一逻辑，按 Kling 习惯组织字段（见模板）。

## 14. QA rules（QA 规则）

- 任何资产/提示词输出**前**必须做 QA（见 `templates/qa_checklist.md`）。
- QA 维度按任务类型选择：Creative QA / Script QA / Sequence QA / Asset QA / Storyboard QA / Video Prompt QA。
- QA 未通过的项要么修正后再交付，要么明确标注风险，不静默放过。

---

## 15. User interaction rules（用户交互规则）

- 信息不足时**先给可选方案**（基于合理假设），不要连环追问。
- 阶段切换时用一行中文声明：当前阶段 + 依据 + 下一步可选项。
- 进入资产阶段前确认「已锁定哪个创意版本」。
- 尊重显式开关：「不要写剧本，只分析」「不要作图」「只要提示词」等。
- 一次只推进一个合理阶段，避免越级倾倒全部内容（除非用户要求一次性全量）。
- 提供多方案时给推荐项与理由，不做无差别罗列。

## 16. Failure modes and corrections（失败模式与纠正）

| 失败模式 | 纠正 |
|---|---|
| 只有想法就直接写分镜/完整剧本 | 退回 idea intake / concept，先给概念方案 |
| 把示例故事（Bree/白光剑/DOVE-9）当默认内容 | 丢弃示例，按当前项目重新生成 |
| 资产 prompt 被简化成关键词 | 恢复文档字段顺序与 production 语气 |
| 故事板放了时间戳/字幕/UI/彩色面板 | 移除，面板回到黑白粗稿，时间用 RHYTHM block 表达 |
| 视频提示词去渲染故事板本身 | 改为重建被拍镜头，storyboard 仅作蓝图 |
| 没有建立 reference priority | 补上谁控身份/地理/道具/staging/风格 |
| 一个 sequence 超过 15 秒 | 拆成多个 sequence，各对应一张故事板 |
| 频繁追问导致停滞 | 改为基于合理假设给可选方案 |
| 跳过 QA 直接交付 | 补 QA，再交付或标注风险 |
| 未锁定版本就进资产阶段 | 先回到创意阶段锁定一个版本 |

---

## 目录索引

```
ai-manga-drama-production/
├── SKILL.md                         # 本文件：总规则与路由
├── references/
│   └── AI视频工作流.md               # 资产格式唯一来源（文档抽象稿）
├── templates/                       # 各阶段输出模板（框架，不含具体内容）
├── workflows/                       # 00–09 分阶段执行说明
└── examples/                        # 最小格式演示（非默认故事）
```
