# Template — Sequence Breakdown

> 用途：把完整剧本 / 单集脚本拆成 sequence（每个 ≤ 15s），为故事板做准备。
> 拆分说明用中文；sequence 描述可中英。**不要写死内容**。

## SEQUENCE BREAKDOWN

### 拆分规则
- 每个 sequence **必须 ≤ 15 秒**，有清晰 start 与 end。
- 一集 > 15s 必须拆成多个 sequence。
- 按 **情绪段落 / 场景切换 / 动作单元 / 镜头逻辑** 拆。
- 一个 sequence 对应**一张** storyboard sequence board。
- panel 数量此处**不固定**，留给故事板阶段按动作密度判断。

### EPISODE → SEQUENCE 列表（对每集）

#### EP0X 拆分
对每个 sequence 填写：

| 字段 | 说明 |
|---|---|
| SEQUENCE ID | `episode_scene_action_NNp` 风格小写下划线命名（NN 待故事板定 panel 数后补） |
| DURATION | 估计秒数（≤15） |
| START → END | 起止状态一句话 |
| LOCATION / ENV REF | 用到哪个场景资产 |
| CHARACTERS / REFS | 出场角色 + 对应角色资产 |
| PROPS / REFS | 关键道具 + 对应道具资产 |
| ACTION CHAIN | 用 `->` 串联的动作相位 |
| EMOTIONAL ARC | 情绪走向（valence/arousal） |
| CAMERA INTENT | 主镜头逻辑（连续 master / 多机位采样等） |
| PANEL DENSITY HINT | 动作密度初判（低/中/高），供故事板决定 panel 数 |
| CONTINUITY | 与相邻 sequence 的连续性锁点 |

### 资产需求汇总（进入资产计划）
- 本集/本批所需 **角色资产 / 场景资产 / 道具资产** 去重清单。
- 标注哪些资产已有参考图、哪些需新建。
- 标注 reference priority（谁控身份/地理/道具/staging/风格）。

> 完成后进入 asset plan（05）与 storyboard generation（07）。
