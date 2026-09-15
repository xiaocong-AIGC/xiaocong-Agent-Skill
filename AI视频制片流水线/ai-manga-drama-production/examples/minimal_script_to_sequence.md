# Example — Minimal Script → Sequence（格式演示）

> ⚠️ 仅演示**格式与流程**，不是默认故事，不可套用到真实项目。
> sequence 数量、时长、动作由 AI 按真实脚本判断。

## 输入（示意单集片段）
> 某单集约 40 秒，含「主角进入空间 → 发现关键物 → 触发危机」三段。

## SEQUENCE BREAKDOWN（演示拆成 3 个，均 ≤15s）

| 字段 | SEQ 1 | SEQ 2 | SEQ 3 |
|---|---|---|---|
| SEQUENCE ID | `ep01_enter_space_NNp` | `ep01_find_object_NNp` | `ep01_crisis_trigger_NNp` |
| DURATION | ~13s | ~12s | ~14s |
| START → END | 入口停步 → 走到中心 | 注意到 → 拿起关键物 | 异变开始 → 危机定格 |
| LOCATION / ENV REF | @<场景资产> | @<场景资产> | @<场景资产> |
| CHARACTERS / REFS | C1 @<角色资产> | C1 @<角色资产> | C1 @<角色资产> |
| PROPS / REFS | — | @<道具资产> | @<道具资产> |
| ACTION CHAIN | stop -> scan -> walk in | notice -> approach -> pick up | react -> destabilize -> freeze |
| EMOTIONAL ARC | 警惕 → 好奇 | 好奇 → 触动 | 触动 → 惊变 |
| CAMERA INTENT | 连续 master 推进 | 多机位采样 | 连续 master + 收紧 |
| PANEL DENSITY HINT | 低 | 中 | 高 |
| CONTINUITY | 接 SEQ2 入口方向 | 接 SEQ1 中心位 | 接 SEQ2 持物状态 |

## 资产需求汇总（演示）
- 角色：C1（需/已有 identity board）
- 场景：该空间（env identity board）
- 道具：关键物（prop identity board）
- reference priority：char 控身份 / env 控地理 / prop 控道具 / storyboard 控 staging。

---
> 注意演示要点：40s 一集被拆成 3 个 ≤15s 的 sequence，每个将对应**一张** storyboard；panel 数（NN）留到故事板阶段定。
