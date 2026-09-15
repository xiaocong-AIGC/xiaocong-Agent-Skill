# Workflow 09 — Quality Control（质量控制）

> 用途：任何阶段输出**前**做 QA；交付前做整体收口。
> 模块：A & B 通用。记录用中文。

## 原则
- 输出前必须 QA；QA 维度按任务类型从 `templates/qa_checklist.md` 选取。
- 未过项要么修正后交付，要么明确标注风险，不静默放过。

## 步骤
1. **判断任务类型**，选对应 QA 分组：
   - 创意/概念/故事发动机 → Creative QA
   - 剧本/单集 → Script QA
   - 序列拆分 → Sequence QA
   - 角色/场景/道具资产 → Asset QA
   - 故事板 → Storyboard QA
   - 视频提示词 → Video Prompt QA
2. **逐项打分**：✅ / ⚠️ / ❌。
3. **通用横切检查**：
   - reference priority 是否显式声明？
   - 输出语言是否合规（分析中文 / 资产与提示词英文）？
   - 是否未把示例（Bree/白光剑/DOVE-9 等）当默认内容？
   - 资产 prompt 是否保持 production 语气、未被简化成关键词？
   - sequence 是否 ≤15s、storyboard 是否纯净、video prompt 是否仅以 storyboard 为蓝图？
4. **处理未过项**：修正或在交付时标注风险与建议。

## 失败模式对照
见 `SKILL.md` §16 Failure modes and corrections。

## 退出
- 全部 ✅ 或风险已标注 → 交付。
