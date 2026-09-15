# 调研与信息获取

从互联网获取与聚合信息的 skill。只负责"取内容"，不负责写报告、做分析、翻译等内容加工。

| Skill | 说明 |
|---|---|
| `agent-reach` | 全网调研，15 个平台多后端路由（OpenCLI / 各平台 CLI / API）：小红书、推特 X、B站、Reddit、V2EX、Facebook、Instagram、LinkedIn、YouTube、GitHub 代码搜索、小宇宙播客、雪球、RSS、普通网页、音视频转文字。6 个渠道零配置。用 `agent-reach doctor --json` 查看当前各平台由哪个后端服务 |
| `follow-builders` | AI builder 资讯摘要：追踪 X 上的 AI 建设者与 YouTube 播客，把内容重组成可读摘要。内容从中心 feed 拉取，无需 API key |

## 依赖

- `agent-reach` 需要 `agent-reach` CLI 与对应平台后端
- `follow-builders` 的 `scripts/` 为 Node.js 脚本，需要 `npm install`
