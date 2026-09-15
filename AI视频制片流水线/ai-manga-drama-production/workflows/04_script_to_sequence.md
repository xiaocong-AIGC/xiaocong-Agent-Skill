# Workflow 04 — Script → Sequence（剧本到序列拆分）

> 进入条件：用户给了完整剧本/单集脚本，或脚本已确认。
> 模块：B 起点。说明用中文，sequence 描述可中英。

## 原则
- 每个 sequence ≤ 15 秒；一集 >15s 必须拆成多个 sequence。
- 一个 sequence 对应一张 storyboard。
- panel 数此阶段不固定，留给故事板按动作密度判断。

## 步骤
1. **拆分**：用 `templates/sequence_breakdown.md` 把脚本按情绪段落/场景切换/动作单元拆成 sequence 列表。
2. **每个 sequence 记录**：SEQUENCE ID、duration（≤15s）、start→end、location/env ref、characters/refs、props/refs、action chain、emotional arc、camera intent、panel density hint、continuity。
3. **资产需求汇总**：去重列出所需角色/场景/道具资产，标注已有参考 vs 需新建，并写明 reference priority。

## QA（Sequence QA）
- each sequence under 15s、clear start/end、one sequence = one storyboard、panel count matches action density、no overcrowding。

## 退出
- 进入 `05_sequence_to_asset_plan.md`（规划资产）或直接 `07`（若资产已就绪）。
