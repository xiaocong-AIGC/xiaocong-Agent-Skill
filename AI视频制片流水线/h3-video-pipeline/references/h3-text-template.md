# H3 纯文本视频提示词模板（模式 B）

无参考图，一条纯文本直出成片。适用：概念动画、动态设计、风格化序列——主体是世界/物件/图形系统，而非需要跨镜一致的角色。

## 九段结构

| 段 | 职责 | 要点 |
|---|---|---|
| 1 参数声明 | `[SUBJECT] = …` | 把可替换的题材变量提到最前，模板可复用出系列内容；可多个参数 |
| 2 总概念句 | 一句定义整支片子 | `Create a {风格定语} {形式} sequence inspired by/about [SUBJECT].` |
| 3 世界与主体 | 世界是什么样的实体、主体如何呈现 | 同时写明**不出现什么**（如：正片阶段不显示名称文字）——负面约束和正面描述同等重要 |
| 4 情绪透镜 | 一个统摄全片的情绪概念 | `Make the entire world feel like {情绪概念}.` 随后列举世界里的元素都要过这个透镜（every …, every … should feel {情绪词串}） |
| 5 镜头编排 | 单镜/多镜声明 + 速度曲线 | 见下方"速度曲线是灵魂" |
| 6 动效语言 | 元素如何出现/变化的统一动词组 | 定义一套动效词汇全片复用（如出现类：quick upward emergence, slight overshoot, soft bounce, clean settling），并声明世界随镜头路径渐进组装/变化 |
| 7 内容策展 | 选什么、放多少 | 只选最具辨识度/最有情感的元素；声明总时长内的可读性（compact, visually rich, easy to read in ~15 seconds） |
| 8 收尾协议 | 结尾镜头动作 + 落版 | 如拉远/定住 + 标题落版；落版文字的排版气质要与题材文化绑定，声明 readable and visually striking |
| 9 渲染风格 | 材质、光线、背景、质感收尾词 | 一段收拢：媒介质感 + 材质观感 + 光线 + 天空/背景 + premium finish 类收尾词 |

## 模板

```
[SUBJECT] = {变量值}

Create a {风格定语} {形式} sequence inspired by [SUBJECT].

{世界与主体：2–4 句。世界的物理形态、主体的呈现方式、明确不出现的东西。}

Make the entire world feel like {情绪概念}.
Every {元素清单} should feel {情绪词串}.
{融合句：Blend {构成要素} into one cohesive {世界形态}.}

Use {one continuous cinematic shot / a sequence of {N} shots}.
The camera {基础运动——速度、方向、高度变化}.
As the camera reaches {重点对象}, briefly slow down so {重点对象的展示动作}.
Then accelerate again and continue toward the next area.

As the camera advances, {元素清单} {出现方式}.
Use {动效动词组}.
Let each important {元素} {出现得有记忆点的方式}, with nearby supporting elements appearing around it.
{渐进组装句：The {世界} should progressively assemble along the camera path so …}

Show only the most {辨识度标准} elements of [SUBJECT].
Keep the sequence compact, visually rich, and easy to read in {总时长} seconds.

At the end, {结尾镜头动作} and transition to {落版方式}.
{落版设计：文字内容、位置、排版气质、文化绑定、readable and visually striking.}

Use {渲染风格段：媒介 + 材质 + 光线 + 背景 + 质感收尾词}.
```

## 写法规则

- **速度曲线是灵魂**：匀速运镜是纯文本模式"显慢"的头号来源。必须写出"基础速度 → 到重点减速 → 再加速"的循环，让减速本身成为视觉重音——这是模式 A"节拍时长不均匀"原则在单镜头里的对应物
- **动效词汇统一**：全片只用一套出现/变化动词组，元素各用各的动效会显乱；动词组要含"出现—过冲—回弹—落定"这样的完整小弧线，动作才有物理感
- **负面约束前置**：不想出现的东西（文字、人物、现代元素…）在第 3 段就声明，不要等成片跑偏
- **落版文字风险**：AI 渲染文字易错。标题限 1–3 个词；非拉丁文字（中文/日文落版）错字率更高——重要交付可让落版位留空、后期上字，提示词里改为 `leave a clean centered space for a title`
- **总时长可读性**：第 7 段的秒数与实际生成时长一致（上限 15 秒），内容密度按它反推——装不下就删元素，不是加速度

## 混合变体（文本 + 参考）

需要固定角色、物件或风格锚时，正文九段不变，开头追加读图声明（范围要收窄）：

```
Use @[character ref] as character reference.
Use @[style ref] only for color palette, materials and rendering style; do not take content from it.
```

## 参数化系列

同一条模板只换 `[SUBJECT]` 即可批量出系列内容（案例的 [CITY] 用法）。做系列时把定稿模板存进项目存档，后续每支只改参数行，其余逐字不动——系列一致性来自措辞完全一致。
