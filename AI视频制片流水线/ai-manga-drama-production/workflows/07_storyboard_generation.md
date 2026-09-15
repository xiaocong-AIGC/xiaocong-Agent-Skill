# Workflow 07 — Storyboard Generation（分镜故事板生成）

> 进入条件：用户给了 sequence，或资产已就绪要做故事板。
> 模块：B。提示词主体用**英文**，严格继承 `references/AI视频工作流.md` §4。

## 模板
`templates/storyboard_sequence_board.md`

## 原则与硬约束
- 一个 sequence（≤15s）对应**一张** storyboard sequence board。
- **panel count 由该 sequence 的动作密度/情绪变化/镜头复杂度决定**，不固定。
- grid 按 panel 数选择（4→2x2，6→3x2，15→5x3，18→3x6 ...）。
- panel artwork 保持黑白粗稿（monochrome rough storyboard）。
- director strip 对齐面板列。
- 板内无时间戳、无字幕、无 UI、无彩色面板。
- REFERENCE PRIORITY 显式声明（identity ref 控身份，env ref 控地理，prop ref 控道具，storyboard 控 staging）。

## 步骤
1. 取一个 sequence，估算合适的 panel 数（先定动作相位，再定 panel 数）。
2. 按模块顺序填模板：PROJECT CARD → CONTINUITY HEADER → SCENE PACKET → CHARACTER SANITIZATION → IDENTITY CONSISTENCY → STORYBOARD PURITY → MASTER SHOT RULE → EMOTIONAL ARC → STYLE LOCKS → SPATIAL CONTINUITY LOCK → DIRECTOR STRIP → PANEL HEADERS → CAMERA+LENS → ACTION PATH → RHYTHM/ESCALATION/STATE/STYLE TRACK → SEQUENCE。
3. 确保每个 P## 在所有逐面板轨道中都出现且数量一致。
4. SEQUENCE ID 用 `..._NNp`（NN=panel 数）。
5. 输出英文 prompt（可附中文一句话用途）。
6. 「不要作图」→ 只交付 prompt 文本。

## QA（Storyboard QA）
- project card / reference priority / scene packet clarity、master shot logic、spatial continuity、camera path、action path、rhythm/escalation/state/style track、storyboard purity。

## 退出
- 故事板就绪 → 进入 `08_video_prompt_generation.md`。
