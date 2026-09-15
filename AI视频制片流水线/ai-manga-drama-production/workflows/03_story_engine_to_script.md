# Workflow 03 — Story Engine → Script（故事发动机到剧本）

> 进入条件：故事发动机已确认，或用户给了分集大纲。
> 模块：A。输出语言：中文（剧本结构字段可中英）。

## 步骤
1. **Five Episode Trial Outline**：用 `templates/five_episode_trial_outline.md` 输出 5 集试播大纲（每集：目标/前5s钩子/核心冲突/事件链/情绪爆点/反转/人物推进/结尾钩子/视觉看点）。默认 5 集，可按用户调整。
2. **确认大纲**：请用户确认或调整大纲后再写单集。
3. **Episode Script**：用 `templates/episode_script.md` 写**适合 AI 漫剧生产**的单集脚本（不是小说）：
   - episode title / estimated duration / scene / characters / visual action / dialogue / narration / sound / emotional beat / ending hook。
   - VISUAL ACTION 优先于心理；台词短而高密度。
4. **生产化提示**：在脚本末尾列出本集所需角色/场景/道具资产清单 + sequence 拆分提示（哪些段落 >15s）。

## QA（Script QA）
- visual action clarity、dialogue efficiency、episode rhythm、scene/role count、emotional escalation、ending hook。

## 退出
- 单集脚本确认 → 进入 `04_script_to_sequence.md`（MODULE B 起点）。
- 用户一次只要大纲 → 停在大纲层。
