---
name: manju-script-studio
description: AI漫剧/短剧剧本开发。从一个想法、一句题材或一部小说/网文/漫画原著出发：概念开发（logline、爽感承诺、金手指与力量体系）、人物与对手梯度、原著改编分析、体量测算（保障总时长与集数）、三幕锚点与卷级弧、分集梗概、单集剧本（文/武场景标记）、滚动批次续写、伏笔账本与连载一致性。全题材适用（修仙、都市、赘婿、甜宠、复仇等），一部戏默认文武兼有。当用户想写漫剧或短剧剧本、开发故事、改编小说、规划集数与体量、续写下一批、修订台词或节拍时使用。剧本确认后交给 ai-manju-production 制作。
---

# 漫剧剧本开发

## 边界与交接

- 本技能负责"想法/原著 → 已确认的单集剧本"。资产、分镜、视频提示词由 ai-manju-production 承接。
- 交接物四件：SERIES_BIBLE、SEASON_OUTLINE、EPISODE_SCRIPT×批次、FORESHADOW_LEDGER。SERIES_BIBLE 与制作技能共用同一份文件。
- 全题材适用；每场戏标记 文/武/文转武，制作阶段据此分轨。
- 项目名称确定后产物写入项目文件夹。

## 项目目录

每次新项目触发时，先在项目根目录（默认 `D:\AI漫剧\`，可由用户指定）建立独立项目文件夹，与 ai-manju-production 共用同一结构：

```text
<项目名>/
├── 00_project/    # PROJECT_MEMORY、立项确认记录
├── 01_script/     # SERIES_BIBLE、SEASON_OUTLINE、FORESHADOW_LEDGER、episodes/E001.md…
├── 02_design/     # （制作阶段填充）
├── 03_assets/     # （制作阶段填充）
├── 04_video/      # （制作阶段填充）
└── 05_review/     # （制作阶段填充）
```

本技能负责 00_project 与 01_script；已有项目直接续用，只创建缺失目录。

## 输入路由

| 用户给什么 | 路径 | 读取 | 产物 |
|---|---|---|---|
| 一个想法/一句题材 | 概念开发 | [references/concept-and-characters.md](references/concept-and-characters.md) | logline+爽感承诺+金手指+人物 |
| 小说/网文/漫画原著 | 改编分析 | [references/adaptation.md](references/adaptation.md) | 可拍事件清单+取舍锁定 |
| 已有故事大纲 | 体量校验 | [references/structure-and-volume.md](references/structure-and-volume.md) | 体量测算表+卷弧+分集梗概 |
| 已有前几集要续写 | 滚动批次 | [references/rolling-and-continuity.md](references/rolling-and-continuity.md) | 下一批剧本 |
| 已有剧本要修 | 修订 | [references/scenes-and-dialogue.md](references/scenes-and-dialogue.md) | 定位最弱环+两档修改 |

## 确认门

概念不确认不写大纲；大纲与体量不确认不写分集梗概；梗概不确认不写剧本。每批剧本交付后等用户确认再进下一批。

## 硬规则

1. 开写前体量必须达标：可拍事件清单 ≥ 计划集数×1.2；不足先扩事件池，不硬写。
2. 全剧三幕锚点（开局钩子/中点大反转/结局）先钉死再写分集。
3. 每集节拍：前3秒钩子→压制→反转→待续钩；每集写得出观众对主角评判的变化。
4. 每场戏过五元素（目标/障碍/战术/反转/价值转变）；场景标记文/武/文转武。
5. 台词自然有潜台词；能用画面就删台词；角色声音盲测可分。
6. 伏笔账本实时登记；每批开工前必读连载记忆与账本。
7. 首批3–5集是留存生死线，质量投入最大。
8. 剧本只写观众看得见听得见的内容；招式轨迹细节留给制作技能，但点燃点、翻转点、终结招必须在剧本中明确。

## 生产模板

- [templates/SERIES_BIBLE.md](templates/SERIES_BIBLE.md)：系列圣经（世界观、力量体系、人物、STYLE风格段、连载状态）。
- [templates/SEASON_OUTLINE.md](templates/SEASON_OUTLINE.md)：体量测算、三幕锚点、卷级弧、分集梗概、可拍事件清单。
- [templates/EPISODE_SCRIPT.md](templates/EPISODE_SCRIPT.md)：单集剧本（节拍标注+文/武标记）。
- [templates/FORESHADOW_LEDGER.md](templates/FORESHADOW_LEDGER.md)：伏笔账本。
