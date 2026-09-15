---
name: ai-manju-production
description: AI漫剧（动画/漫画风连载短剧）制片工作流。接收已确认的单集剧本后推进：五元素剧本审计、文戏表演任务、武戏招式链、视听语言选镜、专业分镜表、GPT-Image-2图片资产（人物四视图、场景主视觉与新机位、道具与特效板、站位图）、即梦Seedance双格式视频提示词（中文四部分+CINEDANCE英文架构）、生成验收与项目记忆。当用户要制作漫剧某一集、生成漫剧的资产提示词、分镜、图片或视频提示词、验收生成结果或推进漫剧项目任一制作阶段时使用。写剧本、改编原著、规划集数与体量用 manju-script-studio。
---

# AI漫剧制片

## 分工与边界

- 本技能负责从"已确认剧本"到"可提交生成的提示词与验收"。
- 输入优先读取 manju-script-studio 的交接物：SERIES_BIBLE、SEASON_OUTLINE、本集 EPISODE_SCRIPT、FORESHADOW_LEDGER；用户自带剧本也可直接进入。
- 没有剧本时不代写故事，提示用户先用 manju-script-studio。
- 用户负责图片与视频的实际生成和创意终审；本技能交付提示词、表格、验收与记忆文档。
- 项目名称确定后，产物写入项目文件夹并更新 PROJECT_MEMORY。

## 项目目录

每次新项目触发时，先在项目根目录（默认 `D:\AI漫剧\`，可由用户指定）建立独立项目文件夹；已有项目直接续用，不重复建：

```text
<项目名>/
├── 00_project/    # PROJECT_MEMORY、立项确认记录
├── 01_script/     # 剧本侧交接物：SERIES_BIBLE、SEASON_OUTLINE、FORESHADOW_LEDGER、episodes/
├── 02_design/     # 每集 STORYBOARD_TABLE、ACTION_DESIGN
├── 03_assets/     # ASSET_MANIFEST、图片提示词与已验收生成图（characters/scenes/props/effects/staging）
├── 04_video/      # 每集 VIDEO_UNITS 与生成视频
└── 05_review/     # 验收记录、双格式A/B记录
```

所有产物写入对应子目录，并在 PROJECT_MEMORY 登记真实路径；只创建缺失目录，不移动用户已有资产。

## 立项确认门

每个新项目或新一集开始前确认：

1. 画幅：必问用户；默认横板 16:9。
2. 单集正片时长与发行平台。
3. STYLE 风格段：已有则展示当前段落与代表资产，确认继续或更换；没有则与用户建立（见 [references/gpt-image-assets.md](references/gpt-image-assets.md)）。
4. 生成平台固定：图像 GPT-Image-2，视频即梦 Seedance。

## 硬规则

1. 图片资产只用 GPT-Image-2 提示词体系；人物只做四视图（固定段逐字），不做半身探索、不做人物设定板。
2. STYLE 风格段全片逐字复用；同一提示词内只有一种媒介声明。
3. 每个视频单元同时输出两种提示词：格式1中文四部分、格式2 CINEDANCE 英文架构，共享同一制作信息，用于对比测试。
4. 台词逐字取自已确认剧本，不改字；台词时长按剧情节奏灵活估算，禁止统一字数公式。
5. 衔接在分镜表"衔接设计"列完成设计，视频提示词只执行。
6. 制作信息（编号、文件名、状态、用途）与可复制提示词严格分离。
7. 文戏走表演任务轨，武戏走招式链轨；同场可两轨相接（文转武，写明点燃点）。
8. 实测优先：失败先归因再行动，不无脑重抽。
9. 画幅：图片与视频资产一律**按目标画幅直接生成**，不做"以较小画幅生成再裁切"的迂回。

## 制作阶段与路由

| 阶段 | 做什么 | 读取 | 产物 | 确认门 |
|---|---|---|---|---|
| 1 剧本审计 | 五元素审最弱环、文/武标记核对 | [references/script-audit.md](references/script-audit.md) | 审计意见与修改建议 | 用户确认剧本定稿 |
| 2 表演与动作设计 | 文戏表演任务、武戏招式链、参考视频反推 | [references/script-audit.md](references/script-audit.md) | 表演任务块、ACTION_DESIGN | 并入分镜依据 |
| 3 分镜拆解 | 选镜与8列分镜表、逐点衔接设计 | [references/camera-language.md](references/camera-language.md)、[references/script-breakdown.md](references/script-breakdown.md) | STORYBOARD_TABLE | 用户确认分镜表 |
| 4 资产生产 | 四视图/场景/道具/特效/站位图提示词 | [references/gpt-image-assets.md](references/gpt-image-assets.md) | 图片提示词 + ASSET_MANIFEST | 逐张验收登记 |
| 5 视频单元 | 双格式视频提示词 | [references/video-unit-4part.md](references/video-unit-4part.md)、[references/cinedance-format.md](references/cinedance-format.md) | VIDEO_UNITS | 用户提交生成 |
| 6 生成验收 | 逐镜核对、失败归因、双格式对比 | [references/review.md](references/review.md) | 验收记录、修订提示词 | — |
| 7 剪辑与记忆 | 衔接执行、记忆更新、恢复点 | [references/review.md](references/review.md) | PROJECT_MEMORY 更新 | 恢复点一行可续 |

项目可从任一阶段进入，只推进当前任务，不从头重走流程。

## 生产模板

- [templates/ACTION_DESIGN.md](templates/ACTION_DESIGN.md)：武戏攻防回合表与参考视频映射。
- [templates/STORYBOARD_TABLE.md](templates/STORYBOARD_TABLE.md)：8列专业分镜表。
- [templates/ASSET_MANIFEST.md](templates/ASSET_MANIFEST.md)：按风格段登记资产真实路径与状态。
- [templates/VIDEO_UNITS.md](templates/VIDEO_UNITS.md)：制作信息+双格式提示词+单元衔接表。
- [templates/PROJECT_MEMORY.md](templates/PROJECT_MEMORY.md)：项目状态、连续性、生成经验与恢复点。
