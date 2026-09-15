# Claude Product UI Design Workflow

> 用途：让 Claude Code 自动安装并配置一套完整的 Product UI Design Workflow。
>
> 目标链路：**产品理解 → UI 参考研究 → Design System → UI 设计 → 前端实现 → 浏览器视觉检查 → Design Review → 修正**。

---

你现在需要帮我**实际安装并配置一套完整的 Product UI Design Workflow**。

不要只告诉我命令、不要只给教程、不要让我逐条复制执行。

请你直接使用终端、文件编辑等能力完成能自动完成的所有步骤。

整个目标是让以后这个项目进行 UI / UX / Web App / SaaS / Dashboard / Product Design 开发时，可以形成：

产品理解  
→ UI 参考研究  
→ Design System  
→ UI 设计  
→ 前端实现  
→ 浏览器视觉检查  
→ Design Review  
→ 修正

的完整闭环。

---

## 一、最终需要安装的能力

需要配置：

1. UI UX Pro Max
2. Impeccable
3. Mobbin MCP
4. Playwright MCP
5. Chrome DevTools MCP
6. SaaSFrame 作为 Browser Research Source

注意：

不要额外安装 Anthropic frontend-design。

原因是我们已经使用 Impeccable 作为 Design Director / Taste Layer，避免 frontend-design 和 Impeccable 的视觉规则重复或冲突。

最终职责划分：

- **UI UX Pro Max** = Design Knowledge Layer
- **Mobbin** = Primary Product UI Reference Database
- **SaaSFrame** = Secondary SaaS / Dashboard Reference
- **Impeccable** = Design Director + Design Review + Polish
- **Playwright** = Browser Interaction + Visual Verification
- **Chrome DevTools** = Debug + DOM + CSS + Console + Network + Performance

---

## 二、先检查当前环境

请你自己检查：

- 当前操作系统
- 当前工作目录
- Node.js
- npm / npx
- Claude Code CLI
- Git
- Chrome / Chromium
- 当前项目是不是 Git 项目
- 当前是否已有 `.claude`
- 当前是否已有 `CLAUDE.md`
- 当前是否已有 MCP 配置
- 当前是否已经安装以下内容：
  - ui-ux-pro-max
  - impeccable
  - mobbin
  - playwright
  - chrome-devtools

优先使用：

```bash
node --version
npm --version
npx --version
claude --version
git --version
claude mcp list
```

以及其他必要命令检查。

如果已有某个工具：

不要重复安装造成冲突。

先判断版本和现有配置，再决定：

- 保留
- 更新
- 修复
- 跳过

不要删除我已有的其他 Claude 配置。

不要破坏已有 MCP。

不要覆盖项目现有的重要 `CLAUDE.md` 内容。

如果需要修改现有文件，优先合并。

---

## 三、Node 版本检查

Playwright MCP 当前要求 Node.js 20+。

Chrome DevTools MCP 也需要现代 Node 环境。

如果 Node < 20：

不要擅自卸载我当前 Node。

先检查机器是否已有 nvm / fnm / Volta 或其他 Node 版本管理器。

如果可以安全升级或切换到 Node 20+，执行。

如果升级可能影响当前项目，则保留现状，并明确告诉我这个阻塞项。

如果 Node >= 20：

继续。

---

## 四、安装 UI UX Pro Max

UI UX Pro Max 作为通用设计知识库，希望所有 Claude Code 项目都可以使用，因此优先安装到 Claude 全局 Skills。

执行官方 CLI：

```bash
npx --yes ui-ux-pro-max-cli init --ai claude --global
```

如果已经安装：

检查版本与结构。

必要时使用当前官方 CLI 更新，而不是安装已经废弃的旧包。

注意：

正确 npm package 是：

```text
ui-ux-pro-max-cli
```

不要安装旧的：

```text
uipro-cli
```

安装完成后确认类似：

```text
~/.claude/skills/
```

下面存在 UI UX Pro Max 相关 Skill。

不要安装 `frontend-design`。

---

## 五、安装 Impeccable

Impeccable 用在当前产品项目，并启用项目级设计 Hook。

如果当前目录是一个实际项目根目录，执行：

```bash
npx impeccable install --providers=claude --scope=project
```

安装前检查：

- 当前项目是否已经安装 Impeccable
- 是否已有对应 skills
- 是否已有 hook

如果已经安装旧版，优先使用：

```bash
npx impeccable update
```

或按照当前 CLI 支持方式更新。

不要创建重复的 Impeccable Skill。

安装完成后检查：

```text
.claude/skills/impeccable
```

以及 Claude 项目 Hook / settings 配置是否正常存在。

不要破坏我原来的 `.claude/settings.json` 或 `.claude/settings.local.json`。

如果需要修改，只做合并。

如果当前目录不是实际项目目录：

不要随便往无关目录安装 project-scope Impeccable。

这种情况下先完成所有 global / user 级安装，并在最终报告中告诉我项目级 Impeccable 尚未初始化。

---

## 六、安装 Mobbin MCP

Mobbin 是我们的主要 UI Reference 数据源。

使用官方 Claude Code MCP：

```bash
claude mcp add mobbin --scope user --transport http https://api.mobbin.com/mcp
```

安装之前先执行：

```bash
claude mcp list
```

如果已经有名为 `mobbin` 的 MCP：

不要重复添加。

检查 URL 是否为：

```text
https://api.mobbin.com/mcp
```

如果正确则保留。

如果明显配置错误，再修复。

Mobbin 使用 User Scope，因为以后所有项目都要使用。

Mobbin 需要 OAuth。

如果当前 Claude Code 可以直接发起 OAuth：

请发起。

如果必须由我本人在浏览器完成登录授权：

这是整个安装过程中允许保留给我的人工操作。

请明确告诉我：

> Mobbin 已配置完成，现在只需要在 `/mcp` 中选择 `mobbin → Authenticate` 完成授权。

不要因为 Mobbin 尚未授权而停止其他安装步骤。

继续完成剩余配置。

---

## 七、安装 Playwright MCP

Playwright 用于：

- 打开开发中的产品
- 浏览页面
- 点击
- 填写表单
- 测试 Flow
- 检查状态
- 浏览 SaaSFrame
- UI 验证

优先安装为 User Scope，供多个项目使用。

按照 Claude Code 当前 MCP CLI 支持的正确语法配置：

`playwright` 对应命令：

```bash
npx @playwright/mcp@latest
```

官方基础形式为：

```bash
claude mcp add playwright npx @playwright/mcp@latest
```

如果 Claude Code 当前版本支持 `--scope user`，请安装为 user scope。

如果已有 `playwright`：

不要重复安装。

检查配置是否正确。

不要为了 Playwright MCP 无意义地给当前业务项目安装 Playwright 测试框架依赖。

MCP 与业务项目测试依赖是两件事。

安装完成后使用：

```bash
claude mcp list
```

确认存在 `playwright`。

---

## 八、安装 Chrome DevTools MCP

Chrome DevTools 用于：

- DOM
- CSS
- Console
- Network
- Performance
- Browser Debugging
- Screenshot
- 页面问题定位

使用官方方式：

```bash
claude mcp add chrome-devtools --scope user npx chrome-devtools-mcp@latest
```

如果已经存在：

不要重复安装。

如果名称相同但配置异常：

先检查，再修复。

暂时不要加：

```text
--browser-url
--autoConnect
--categoryExtensions
--allowUnrestrictedPaths
```

等高级参数。

先使用官方默认配置。

也不要打开危险的 unrestricted filesystem 权限。

安装完成后：

```bash
claude mcp list
```

确认 `chrome-devtools` 存在。

---

## 九、SaaSFrame 不安装 MCP

SaaSFrame：

https://www.saasframe.io/

目前只作为 Secondary Research Source。

不要寻找来源不明的所谓 SaaSFrame MCP 并安装。

后续 Claude 需要 SaaS / Web App / Dashboard UI 参考时，可以通过 Playwright / Browser 查看 SaaSFrame 的公开页面。

不要：

- 绕过登录
- 绕过会员
- 绕过付费墙
- 批量爬取
- 破解访问限制

如果公开信息不足，就以 Mobbin 为主要来源。

---

## 十、MCP 最终目标

完成后执行：

```bash
claude mcp list
```

理想情况下至少看到：

```text
mobbin
playwright
chrome-devtools
```

检查它们配置是否合理。

如果当前 Claude Session 无法立即加载刚新增 MCP，这是正常情况。

不要假装已经成功调用。

告诉我重启 Claude Code 后验证即可。

---

## 十一、建立 Product UI 项目规范

如果当前目录是实际产品项目，请在项目根目录维护以下文件：

```text
PRODUCT.md
DESIGN.md
DESIGN-REFERENCES.md
CLAUDE.md
```

注意：

如果已经存在这些文件：

先读取。

不要直接覆盖。

应该合并或补充。

---

## 十二、初始化 PRODUCT.md

`PRODUCT.md` 用来描述：

**产品是什么，而不是产品长什么样。**

如果可以从当前项目 README、package、代码和已有文档可靠判断产品信息：

可以填写已经确认的信息。

不要凭空编造业务信息。

无法确认的字段保留 TODO。

至少包括：

```markdown
# Product

## Product Overview
产品是什么。

## Target Users
谁使用这个产品。

## Core Problems
解决什么问题。

## Core Tasks
用户最主要完成哪些任务。

## Primary Actions
最主要的操作。

## Usage Context
Desktop / Mobile / Internal Tool / SaaS / Consumer App 等。

## Product Principles
产品体验原则。

## Business Constraints
业务限制。

## Technical Constraints
技术限制。

## Non-goals
明确不需要解决的问题。
```

---

## 十三、初始化 DESIGN.md

`DESIGN.md` 是项目 UI 的视觉 Source of Truth。

如果项目已有成熟 UI：

先研究现有代码，而不是重新设计整个 Design System。

如果项目是新项目：

先建立基础结构，但不要凭空决定大量视觉值。

至少包含：

```markdown
# Design System

## Design Principles
## Visual Direction
## Color Tokens
## Typography
## Spacing
## Radius
## Borders
## Shadows
## Layout
## Navigation
## Component Density
## Icons
## Forms
## Tables
## Cards
## Dialogs
## Empty States
## Loading States
## Error States
## Motion
## Responsive Behavior
## Accessibility
## Anti-patterns
```

`Anti-patterns` 默认加入：

- Avoid cards inside cards
- Avoid unnecessary containers
- Avoid excessive rounded rectangles
- Avoid excessive pills
- Avoid icon tiles above every heading
- Avoid random gradients
- Avoid default purple/blue "AI look"
- Avoid excessive shadows
- Avoid decorative charts without product value
- Avoid huge marketing-style headings inside productivity apps
- Avoid excessive glassmorphism
- Avoid unnecessary animations
- Avoid introducing a new visual language on every page

---

## 十四、初始化 DESIGN-REFERENCES.md

建立：

```markdown
# Design References

## Research Principles

UI Reference 的目标是学习：

- information hierarchy
- navigation
- workflow
- interaction pattern
- primary action
- secondary action
- progressive disclosure
- state communication
- empty state
- error state
- content density

不是复制某一个产品。

## Primary Source
Mobbin

## Secondary Source
SaaSFrame

## Research Records

每次进行重要页面设计时记录：

### Feature
### Research Goal
### References
### Patterns Observed
### What We Adopt
### What We Avoid
### Final Direction
```

---

## 十五、把 Product UI Workflow 写入 CLAUDE.md

非常重要：

如果项目已有 `CLAUDE.md`：

保留原有内容。

在合适位置新增一个：

```markdown
# Product UI Design Workflow
```

如果已经存在同名规则：

合并、去重、升级。

加入下面这些长期规则。

### 1. Understand before designing

任何重要 UI 工作开始前：

先理解：

- user
- task
- primary action
- information priority
- product context
- technical constraints

优先阅读：

- `PRODUCT.md`
- 已有代码
- 已有 `DESIGN.md`

不要为了让 UI 看起来丰富而发明不存在的功能。

### 2. Research Trigger

以下任务必须优先进行 Reference Research：

- 新产品
- 新一级页面
- 新核心 Flow
- 重要功能
- 大规模 redesign
- onboarding
- authentication
- dashboard
- workspace
- task management
- agent management
- AI interaction
- checkout
- subscription
- pricing
- settings
- search
- complex forms
- complex tables
- analytics

Research 顺序：

```text
Mobbin
→ 必要时 SaaSFrame
→ 分析 Pattern
→ 再设计
```

每次原则上寻找 3–8 个有价值的参考。

不要因为一个 padding、颜色、按钮、tooltip 等小改动重新 Research。

### 3. Reference Synthesis

不要直接复制某一个 App。

Reference Research 必须回答：

- 为什么这样布局？
- 信息层级是什么？
- Primary Action 在哪里？
- Secondary Action 怎么隐藏？
- Navigation 怎么组织？
- Status 怎么表达？
- Empty State 怎么处理？
- Error 怎么处理？
- 复杂功能有没有 Progressive Disclosure？
- 页面信息密度如何？

最后进行 Pattern Synthesis。

### 4. Design Knowledge

在建立新的视觉方向、Design System 或重大页面时：

优先使用 UI UX Pro Max。

让它帮助判断：

- product type
- UI pattern
- style
- color
- typography
- UX rules
- layout
- chart pattern
- interaction pattern

但不要盲目采用第一条建议。

最终方案必须结合：

```text
Product Requirements
+
Reference Research
+
Existing Design System
```

### 5. Design Source of Truth

`DESIGN.md` 是视觉 Source of Truth。

新增页面应优先遵循 `DESIGN.md`。

不要每个页面重新创造：

- 颜色
- 字体
- spacing
- radius
- shadow
- component style
- navigation pattern

如果产生长期有效的新规则：

更新 `DESIGN.md`。

### 6. Impeccable Role

Impeccable 是本项目的 Design Director / Design QA。

重要 UI 推荐流程：

```text
shape
→ craft
→ critique
→ polish
```

现有页面评审：

```text
audit
```

优先解决：

1. Information hierarchy
2. Usability
3. Layout
4. Typography
5. Spacing
6. Color
7. Decoration

不要用装饰弥补信息层级问题。

### 7. Implementation

设计确认以后再进行实现。

优先复用：

- existing component
- design token
- existing interaction pattern

已有组件能解决时，不要重新造一个类似组件。

不要因为使用 Tailwind / shadcn 等框架，就让所有界面变成默认模板风格。

### 8. Realistic UI

不要只做静态漂亮页面。

根据实际场景处理：

- real content
- loading
- empty
- error
- disabled
- hover
- focus
- success
- long content
- unusual data
- long lists

没有必要时不要塞大量假的 Dashboard 指标。

### 9. Visual Verification

完成有意义的 UI 工作后：

必须真正运行项目。

然后：

```text
启动 App
→ 使用 Playwright 打开
→ 操作真实 Flow
→ 查看 rendered UI
→ Screenshot
→ 判断问题
→ 修改
→ 再验证
```

不能因为：

- build 成功
- TypeScript 没报错
- 测试通过

就认为 UI 完成。

### 10. Responsive Verification

Web UI 根据产品情况检查代表性尺寸。

默认：

```text
375
768
1440
```

如果产品明确只做 Desktop：

至少检查：

```text
1280
1440
1920
```

重点观察：

- overflow
- wrapping
- navigation
- sidebar
- table
- modal
- dropdown
- forms
- long text
- long lists
- empty states

### 11. Chrome DevTools

以下问题优先使用 Chrome DevTools：

- Console Error
- DOM
- CSS
- layout
- network
- browser error
- performance

不要只因为页面肉眼正常就忽略 Console Error。

### 12. Avoid Generic AI UI

默认避免：

- cards inside cards
- 过多圆角框
- 过多 pills
- 每个标题上方一个 icon box
- purple gradient AI aesthetic
- 无意义渐变
- 大量 glassmorphism
- excessive shadows
- 巨型标题
- 没有业务价值的 charts
- 每个区块都套 container
- 不必要 animation
- landing page 风格硬套 SaaS 产品后台

每个视觉元素都要有产品理由。

### 13. Definition of Done

UI 工作完成必须至少满足：

- requested functionality works
- hierarchy is clear
- follows `DESIGN.md`
- interactions work
- responsive behavior is acceptable
- empty/loading/error states considered where relevant
- no relevant console errors
- rendered interface visually inspected
- important design problems found during inspection fixed

---

## 十六、设计工具调用优先级

以后项目中按这个逻辑工作：

```text
产品需求
↓
PRODUCT.md
↓
判断是不是重要 UI
↓
如果重要：
Mobbin Research
↓
必要时 SaaSFrame
↓
DESIGN-REFERENCES.md
↓
UI UX Pro Max
↓
DESIGN.md
↓
Impeccable
↓
Implementation
↓
Playwright
↓
Chrome DevTools
↓
Impeccable Audit / Critique / Polish
↓
Final UI
```

---

## 十七、小改动不要过度执行

非常重要。

下面这种任务：

- 改颜色
- 改一句文字
- padding
- margin
- 一个 button
- bug fix
- tooltip
- 小 modal
- 复用已有 component

不要重新：

- Mobbin Research
- UI UX Pro Max 全量分析
- 重做 Design System

直接：

```text
读取 DESIGN.md
→ 修改
→ 必要的视觉验证
```

即可。

避免 Workflow 过度工程化。

---

## 十八、Research 规则

需要参考时：

优先：

**Mobbin MCP**

特别适合：

- App
- Web App
- Flow
- Onboarding
- Settings
- Search
- Checkout
- Task
- AI Interaction
- Mobile
- Product Screens

SaaSFrame 特别适合补充：

- SaaS
- Desktop Web App
- Dashboard
- Analytics
- Billing
- Settings
- Admin
- Team
- Integration
- Data Table

如果 Mobbin 可以提供充分资料：

不要求一定再访问 SaaSFrame。

研究参考是为了提高设计决策质量，不是为了堆素材数量。

---

## 十九、不要自动复制外部 UI

Mobbin 和 SaaSFrame 只能用于：

**Design Research**。

禁止：

- “照着 Linear 复制”
- “照着 Stripe 一模一样做”

正确行为：

```text
研究多个产品
→ 找共同 Pattern
→ 判断为什么有效
→ 结合我们的产品重新设计
```

---

## 二十、安装完成后的验证

完成所有可以执行的步骤以后，请实际验证。

至少检查：

### Environment

- Node >= 20
- npm 正常
- Claude Code 正常

### Skills

- UI UX Pro Max 已存在
- Impeccable 当前项目已存在（如果当前目录是项目）

### MCP

执行：

```bash
claude mcp list
```

确认至少有：

```text
mobbin
playwright
chrome-devtools
```

### Project Files

确认：

```text
PRODUCT.md
DESIGN.md
DESIGN-REFERENCES.md
CLAUDE.md
```

存在并且没有破坏已有内容。

### Impeccable

检查项目 Skill 和 Hook 配置。

如果当前 Session 无法识别刚安装的 Skill：

不要判定安装失败。

说明需要重启 Claude Code。

### Browser MCP

如果当前会话已经可以调用新 MCP：

可以做一个最小验证。

如果需要重启才能加载：

不要为了测试搞复杂 workaround。

记录为：

```text
restart required
```

---

## 二十一、不要做的事情

整个过程中不要：

- 删除我的代码
- 删除已有 Skill
- 删除其他 MCP
- 覆盖整个 `CLAUDE.md`
- 修改业务功能
- 大规模升级项目依赖
- 安装 frontend-design
- 安装来源不明的 SaaSFrame MCP
- 打开危险的 unrestricted filesystem 权限
- 绕过 Mobbin / SaaSFrame 付费访问
- 为了安装工作流重构当前项目
- 给当前项目塞不必要的 UI Framework
- 安装 shadcn，除非当前项目本来就在使用或之后明确需要
- 假装 OAuth 已经完成
- 假装没有真正调用过的 MCP 已经验证成功

---

## 二十二、遇到问题时的原则

如果某条命令因为版本变化不可用：

不要立刻停下来让我自己解决。

先：

1. 查看该 CLI `--help`
2. 查看当前已安装版本
3. 判断当前正确语法
4. 使用官方包 / 官方仓库对应方式修复
5. 继续执行后续不受影响的步骤

只有真正需要：

- 账号登录
- OAuth
- 系统管理员确认
- 安全授权

这种必须由人完成的步骤，才留给我操作。

---

## 二十三、最终只给我一个安装报告

所有工作执行结束后，再给我总结。

格式：

```markdown
# Product UI Workflow 安装结果

## 已完成

列出成功安装和配置的内容。

## MCP 状态

Mobbin：
Playwright：
Chrome DevTools：

## Skills 状态

UI UX Pro Max：
Impeccable：

## 项目规范

PRODUCT.md：
DESIGN.md：
DESIGN-REFERENCES.md：
CLAUDE.md：

## 需要我手动完成

只列真正必须人工完成的动作。

例如：

1. Mobbin OAuth
2. Restart Claude Code

如果没有就写：

无需额外操作。

## 验证结果

说明实际执行了哪些验证。

不要只输出理论上的“应该成功”。
```

---

## 最终执行要求

现在开始执行。

不要再向我复述安装教程。

不要只输出这些命令让我自己执行。

使用你当前可以使用的终端和文件工具完成安装、配置、合并和验证。

对于需要重启 Claude Code 才加载的新 Skill / MCP，先完成安装和静态验证，把重启放到最后，不要因此中途停止。
