# Template — QA Checklist

> 用途：任何阶段输出**前**做 QA。按任务类型选取对应分组；QA 维度可按文档规范与任务自行组织。
> 用中文记录结论；每项标 ✅ 通过 / ⚠️ 风险 / ❌ 未过（未过需修正或明确标注风险，不静默放过）。

## Creative QA（创意/概念/故事发动机阶段）
- [ ] idea clarity（想法是否清晰、可一句话讲清）
- [ ] audience clarity（受众与平台是否明确）
- [ ] first 5 seconds hook（前 5 秒钩子是否成立）
- [ ] story engine（故事发动机能否持续生成冲突）
- [ ] main conflict（核心冲突是否明确）
- [ ] character relationship tension（人物关系张力是否足够）
- [ ] episode ending hook（结尾钩子是否有效）
- [ ] five-episode trial viability（5 集试播是否可成立）
- [ ] AI production feasibility（AI 生产可执行性）
- [ ] copyright risk（版权风险）

## Script QA（剧本/单集脚本阶段）
- [ ] visual action clarity（画面动作是否可拍、不只是心理）
- [ ] dialogue efficiency（台词是否精炼高效）
- [ ] episode rhythm（单集节奏）
- [ ] scene count（场景数量是否适配时长）
- [ ] role count（出场角色数量是否可控）
- [ ] emotional escalation（情绪升级）
- [ ] ending hook（结尾钩子）

## Sequence QA（拆分阶段）
- [ ] each sequence under 15 seconds（每个 sequence ≤15s）
- [ ] clear start and end（起止清晰）
- [ ] one sequence equals one storyboard（一序列对应一张故事板）
- [ ] panel count matches action density（panel 数匹配动作密度）
- [ ] no overcrowding（不过载）

## Asset QA（角色/场景/道具资产阶段）
- [ ] character identity consistency（角色身份一致性）
- [ ] environment spatial consistency（场景空间一致性）
- [ ] prop function clarity（道具功能清晰）
- [ ] material readability（材质可读）
- [ ] lighting direction（光线方向）
- [ ] future video staging usefulness（对后续视频 staging 有用）

## Storyboard QA（故事板阶段）
- [ ] project card clarity（PROJECT CARD 清晰）
- [ ] reference priority clarity（参考优先级清晰）
- [ ] scene packet clarity（SCENE PACKET 清晰）
- [ ] master shot logic（master shot 逻辑）
- [ ] spatial continuity（空间连续性）
- [ ] camera path（CAMERA PATH 完整逐面板）
- [ ] action path（ACTION PATH 完整逐面板）
- [ ] rhythm track（RHYTHM TRACK 格式正确）
- [ ] escalation map（ESCALATION MAP 格式正确）
- [ ] state track（STATE TRACK 完整）
- [ ] style track（STYLE TRACK 完整）
- [ ] storyboard purity（黑白粗稿、无时间戳/字幕/UI/彩色面板）

## Video Prompt QA（视频提示词阶段）
- [ ] storyboard ref used correctly（作为蓝图而非被渲染）
- [ ] panel order preserved（面板顺序保留）
- [ ] no alternative coverage invented（未发明额外镜头）
- [ ] character identity preserved（角色身份保留）
- [ ] environment geography preserved（场景地理保留）
- [ ] motion continuity clear（运动连续性清晰）
- [ ] audio guidance clear（音频指引清晰）
- [ ] visual style consistent（视觉风格一致）

> 通用：reference priority 是否显式声明？输出语言是否符合规则（分析中文 / prompt 英文）？是否未把示例当默认？
