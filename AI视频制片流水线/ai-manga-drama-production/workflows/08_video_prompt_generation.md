# Workflow 08 — Video Prompt Generation（视频提示词生成）

> 进入条件：用户给了 storyboard ref，或故事板已就绪要出视频提示词。
> 模块：B。提示词主体用**英文**，严格继承 `references/AI视频工作流.md` §5–§6。

## 模板
- Seedance → `templates/seedance_video_prompt.md`
- Kling → `templates/kling_video_prompt.md`
（默认 Seedance；用户指定则用 Kling，或两者都给。）

## 核心规则
- storyboard ref 是 **authoritative director-approved blueprint**。
- Follow panel order exactly；do not invent alternative coverage。
- Do not render the storyboard sheet itself；recreate the filmed sequence implied by the panels。
- 按 reference priority 引用 character / environment / prop refs。
- 含 VISUAL STYLE / AUDIO / ENVIRONMENT / EMOTIONAL GUIDANCE / PANEL BEATS（逐面板，与故事板一一对应、同序）。
- 彩色/最终效果只在视频提示词描述，不写进 storyboard。

## 步骤
1. 取一张 storyboard，确认其面板顺序与各 ref。
2. 选模板，填 `<...>`：storyboard ref、各资产 ref、VISUAL STYLE、AUDIO、ENVIRONMENT、EMOTIONAL GUIDANCE。
3. PANEL BEATS：逐面板重建被拍镜头（camera + performance + effect + sound），与 storyboard 面板严格对应。
4. 若为连续 master shot，加可选连续性句；多机位采样则省略。
5. 输出英文 prompt（可附中文一句话用途）。

## QA（Video Prompt QA）
- storyboard ref used correctly、panel order preserved、no alternative coverage、character identity preserved、environment geography preserved、motion continuity、audio guidance、visual style consistent。

## 退出
- 进入 `09_quality_control.md` 做整体收口，或交付。
