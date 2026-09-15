# AI视频制片流水线

端到端的制片流程 skill。输入是一个想法、一份剧本或一支参考视频，输出是可直接投产的资产提示词链（角色设定板 → 场景/道具 → 分镜故事板 → 视频提示词 → 音乐）。

这类 skill 的共同特点：**分阶段、带确认门**，每阶段产出后停下等确认，不会一次吐完整条流水线。

## 按用途挑选

| 我要做的 | 用这个 |
|---|---|
| 2–3 分钟的电影级叙事短片 | `ai-short-film-production` |
| 连载漫剧/短剧的单集制作（已有剧本） | `ai-manju-production` |
| 用 MiniMax H3 做视频（通用题材） | `h3-video-pipeline` |
| 15 秒高燃动作/对决短片 | `action-15s-pipeline` |
| 口播稿/解说稿转视觉片段 | `vox-prompt-pipeline` |
| 只做前期开发（创意 → 剧本 → 分镜） | `ai-video-development-director` |
| 已有剧本/分镜，要成套生成提示词 | `xiaocong-director` |

## 清单

| Skill | 说明 |
|---|---|
| `ai-short-film-production` | AI 电影级短片全流程制片（2–3 分钟叙事短片）：想法开发 → 参考研究 → 中英对照标准剧本 → 母图法资产生产 → 全能参考四部分格式视频单元 → 剪辑规划与 SUNO 音乐。生成平台以全能参考类视频模型（可灵 / Seedance）为主 |
| `ai-manju-production` | AI 漫剧（动画/漫画风连载短剧）制片：接收已确认的单集剧本后推进五元素剧本审计、文戏表演任务、武戏招式链、视听语言选镜、专业分镜表、GPT-Image-2 图片资产（人物四视图、场景主视觉与新机位、道具与特效板、站位图）、即梦 Seedance 双格式视频提示词、生成验收与项目记忆 |
| `h3-video-pipeline` | MiniMax H3 通用视频提示词流水线，题材不限。双模式：参考图驱动流（Midjourney 角色探索 → GPT Image 2 设定板与场景图 → 故事板 → H3 极简引用式提示词 + Suno）与纯文本流（九段结构直出）。单条 15 秒上限，更长拆多单元串行生产 |
| `action-15s-pipeline` | 15 秒高燃动作短片五阶段流水线：故事定稿 → Midjourney 逐角色全身形象探索 → GPT Image 2 角色设定板 → GPT Image 2 分镜故事板 → Seedance 2.0 视频提示词 + Suno 纯音乐提示词。题材锁定高燃动作/对决 |
| `vox-prompt-pipeline` | 纯提示词驱动的 Vox 短视频视觉生产：把中文口播/解说稿合并成信息密度适中的视觉片段，保留原文、统计字数、按每秒 6 字算时长，再生成 16:9 场景描述、一镜到底动作描述与配乐音频描述 |
| `ai-video-development-director` | 视频前期开发导演：把粗略想法、参考视频、brief 或片段转成导演级创意分析、概念开发、剧本大纲、完整剧本与可投产的专业分镜拆解。只覆盖开发到分镜，不写资产或生成提示词 |
| `xiaocong-director` | 小聪导演：把剧本、分镜、参考视频拉片或粗略创意，转成角色设定板变量、GPT Image 2.0 角色板、4–15 秒电影化片段、GPT Image 2.0 故事板提示词与 Seedance 2.0 最终视频提示词 |
| `ai-video-production-workflow` | 通用 AI 视频生产工作流（电影感优先）：项目 brief、剧本开发、整部作品风格拉片与视觉语法书、参考视频反推分镜、资产卡、Blender 白模场景与 3D 布局、AI 生成段计划、首尾帧与关键帧提示词、Kling/Seedance 视频提示词、声音设计、连续性检查、序列审片、返工诊断与项目归档。**早期综合版**，功能与上面几条有重叠 |
| `ai-manga-drama-production` | AI 漫剧/短剧/动画剧情视频制片框架，从模糊想法一直到剧本、分集、故事板与视频提示词。**早期版本**，是 `ai-manju-production` 的前身，保留作参考 |

> `ai-video-production-workflow` 与 `ai-manga-drama-production` 是较早的综合版本，日常使用建议优先选上面职责更聚焦的几个。
