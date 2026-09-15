# 个人产品开发工作流指令整理

个人自研的 Agent Skill 与工作流指令集合，按**用途**分类。
内容以 AI 视频/漫剧创作为主，兼含调研、图像处理与产品设计工作流。

## 目录总览

| 分类 | 内容 | 数量 |
|---|---|---|
| [AI视频制片流水线](AI视频制片流水线/) | 端到端制片流程：从想法/剧本一直到可投产的图片与视频提示词 | 10 |
| [AI视频提示词](AI视频提示词/) | 针对单个视频模型的提示词撰写规范 | 4 |
| [剧本与内容创作](剧本与内容创作/) | 故事开发、剧本写作、连载管理 | 1 |
| [调研与信息获取](调研与信息获取/) | 全网调研与信息聚合 | 2 |
| [图像与工具](图像与工具/) | 图像处理等本地工具类 | 1 |
| [产品UI设计](产品UI设计/) | 产品 UI 设计工作流文档 | 1 |

## 分类一览

### AI视频制片流水线

端到端的制片流程 skill —— 输入是想法、剧本或参考视频，输出是可直接投产的资产提示词链。

| Skill | 说明 |
|---|---|
| `ai-short-film-production` | AI 电影级短片全流程制片（2–3 分钟叙事短片）：想法开发 → 参考研究 → 中英对照剧本 → 母图法资产 → 全能参考视频单元 → 剪辑与 SUNO 音乐 |
| `ai-manju-production` | AI 漫剧制片：五元素剧本审计 → 文戏表演/武戏招式链 → 视听语言选镜 → 专业分镜表 → GPT-Image-2 资产 → 即梦 Seedance 双格式视频提示词 → 生成验收 |
| `h3-video-pipeline` | MiniMax H3 通用视频提示词流水线，双模式（参考图驱动流 / 纯文本九段结构），单条 15 秒上限 |
| `action-15s-pipeline` | 15 秒高燃动作短片五阶段流水线：故事定稿 → Midjourney 角色探索 → GPT Image 2 设定板 → 故事板 → Seedance 2.0 + Suno |
| `vox-prompt-pipeline` | 纯提示词驱动的 Vox 短视频视觉生产：口播稿切片 → 字数/时长测算 → 16:9 场景描述 + 一镜到底动作 + 音频提示词 |
| `ai-video-development-director` | 视频前期开发导演：创意诊断 → 参考视频拉片 → 剧本大纲 → 完整剧本 → 专业分镜拆解（只做开发，不写生成提示词） |
| `xiaocong-director` | 小聪导演：把剧本/分镜/拉片转成角色设定板 + 4–15 秒视频分镜 + GPT Image 2.0 故事板 + Seedance 2.0 成片提示词 |
| `ai-video-production-workflow` | 通用 AI 视频生产工作流（电影感优先）：brief → 剧本 → 风格拉片 → 资产卡 → Blender 白模 → 图/视频提示词 → 审片归档（早期综合版） |
| `ai-manga-drama-production` | AI 漫剧/短剧制片框架（早期版本，`ai-manju-production` 的前身，保留作参考） |

### AI视频提示词

按视频模型划分的提示词撰写规范，配合上面的流水线使用。

| Skill | 说明 |
|---|---|
| `seedance-prompt-zh` | 即梦 Seedance 2.0 中文提示词指南：@引用语法、运镜复刻、特效模仿、视频延长/编辑、音乐卡点、电商广告、短剧、科普 |
| `seedance-prompt-en` | 同上的英文版本 |
| `h3-prompt-writing` | MiniMax H3 提示词规范：T2VA / I2VA / FL2VA / L2VA / Ref2VA 五种模式，`integrated_multimodal_description`、`overall_soundscape`、`non_diegetic_music` 三段结构 |
| `kling-ai-video-prompt-director` | 可灵 Kling AI 视频提示词导演：文生视频、图生视频、首尾帧、多镜头、Kling 3.0 Omni、O1、Elements、运动控制 |

### 剧本与内容创作

| Skill | 说明 |
|---|---|
| `manju-script-studio` | AI 漫剧/短剧剧本开发：概念开发（logline / 爽感承诺 / 金手指）→ 人物与对手梯度 → 原著改编分析 → 体量测算 → 三幕锚点 → 分集梗概 → 单集剧本 → 滚动批次续写 + 伏笔账本。剧本确认后交给 `ai-manju-production` 制作 |

### 调研与信息获取

| Skill | 说明 |
|---|---|
| `agent-reach` | 全网调研：15 个平台多后端路由（小红书 / 推特 / B站 / Reddit / V2EX / Facebook / Instagram / LinkedIn / YouTube / GitHub / 雪球 / 小宇宙 / RSS 等） |
| `follow-builders` | AI builder 资讯摘要：追踪 X 与播客上的 AI 建设者，聚合成可读摘要 |

### 图像与工具

| Skill | 说明 |
|---|---|
| `image-upscale` | Windows 本地 Real-ESRGAN 批量放大与清晰化，1K → 2K/4K，用于封面、参考图、角色设定板等 |

### 产品UI设计

| 文档 | 说明 |
|---|---|
| `Claude-Product-UI-Design-Workflow.md` | 产品 UI 设计工作流指令 |

## 怎么用

每个 skill 是一个独立文件夹，入口是 `SKILL.md`（YAML frontmatter 里的 `name` / `description` 决定何时被触发），附带 `references/`、`templates/`、`agents/`、`scripts/` 等辅助文件。

**全局安装**（对所有项目生效）：把 skill 文件夹整个复制到

```
~/.claude/skills/<skill-name>/
```

Windows 下即 `C:\Users\<用户名>\.claude\skills\<skill-name>\`。

**项目级安装**（只对单个项目生效）：复制到项目根目录的

```
.claude/skills/<skill-name>/
```

复制后重启会话即可被识别。注意复制的是 skill 文件夹本身，不要把中文分类目录一起带上。

## 依赖说明

大部分 skill 是纯提示词/流程文档，无外部依赖。以下几个需要额外环境：

- `agent-reach` — 依赖 `agent-reach` CLI 及各平台后端，可用 `agent-reach doctor --json` 检查
- `image-upscale` — 依赖本地 Real-ESRGAN 可执行文件（Windows）
- `follow-builders` — `scripts/` 下为 Node.js 脚本，需要 `npm install`
