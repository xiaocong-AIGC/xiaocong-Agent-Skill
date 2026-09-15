# Workflow 05 — Sequence → Asset Plan（序列到资产计划）

> 进入条件：sequence 已拆好，需要规划要生产哪些资产。
> 模块：B。规划说明用中文。

## 步骤
1. **汇总资产需求**：从所有 sequence 收集去重的 角色 / 场景 / 道具 资产清单。
2. **判定来源**：每个资产标注「已有参考图」或「需新建 identity board」。
3. **建立 reference priority**（对每个资产与每条提示词）：
   - Character ref → face / body / wardrobe / proportions / silhouette / identity
   - Environment ref → geography / lighting / spatial anchors / material / atmosphere
   - Prop ref → shape / scale / material / usage state / damage state
   - Storyboard ref → staging / camera / panel order / continuity / choreography
   - Style ref → rendering language / palette / line / lighting mood（不覆盖 identity/geography，除非用户明示）
4. **统一风格基调**：确认全项目媒介与调色一致（同一作品所有资产统一）。
5. **排生产顺序**：先角色/场景/道具 identity boards → 再 storyboard → 再 video prompt。
6. **尊重「不要作图」开关**：若设置，则只产出 prompt 文本，不调用图像生成。

## QA（Asset QA 预检）
- 资产是否覆盖所有 sequence 需求、命名是否与脚本一致、reference priority 是否齐全。

## 退出
- 进入 `06_asset_prompt_generation.md` 生成各 identity board。
