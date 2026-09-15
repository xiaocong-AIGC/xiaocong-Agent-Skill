# Workflow 06 — Asset Prompt Generation（资产提示词生成）

> 进入条件：用户要求角色/场景/道具资产，或资产计划已就绪。
> 模块：B。提示词主体用**英文**，严格继承 `references/AI视频工作流.md`。

## 选择模板
- 角色 → `templates/character_identity_board.md`（文档 §1）
- 场景 → `templates/environment_identity_board.md`（文档 §2）
- 道具 → `templates/prop_identity_board.md`（由 §1/§2 抽象）

## 原则
- 严格沿用字段顺序与英文 production prompt 语气；**不得简化成关键词**。
- 含 IDENTITY / SPATIAL / FORM 等 LOCK 字段保证一致性。
- 背景纯白/米白；no logo/watermark；场景与道具板 no characters。
- 显式声明 REFERENCE PRIORITY（谁控什么、谁不覆盖什么）。
- 强调 useful for production / future video staging。
- 全项目媒介与调色统一。

## 步骤
1. 取资产清单中的一个资产，选对应模板。
2. 填 `<...>` 占位：SUBJECT、VISUAL MEDIUM、各 LOCK、KEY ELEMENTS、TEXT DESIGN（NAME/ROLE/CORE MOOD/VISUAL SIGNATURE，英文大写短语）。
3. 若有已存在参考，填 REFERENCE PRIORITY 并写明「控制什么、不复制什么、翻译成什么」。
4. 输出英文 prompt（可附中文一句话用途说明）。
5. 若「不要作图」→ 只交付 prompt 文本，不调用图像生成。

## QA（Asset QA）
- character identity consistency / environment spatial consistency / prop function clarity / material readability / lighting direction / future video staging usefulness。

## 退出
- 资产就绪 → 进入 `07_storyboard_generation.md`。
