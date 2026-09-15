# H3 分镜故事板提示词模板（GPT Image 2）

每单元一条提示词、一张 16:9 故事板。参考图 = 各角色的设定板（在前）+ 该单元场景图（在后），上传顺序必须与提示词里的引用声明一致。

故事板在 H3 链路里的职责：**承载全部场景、机位与叙事信息**——H3 视频提示词零场景描述，故事板画不清楚的东西成片里就没有。

## 两条画风铁律

1. **必须是"制片草图感"**：loose pencil lines + simple shading。故事板要与角色板/场景图的成品渲染风格明确区分——H3 靠这种草图质感把它识别为 sequential shot guidance，而不是一张要复刻的成品图。绝不让故事板画成精修插画。
2. **允许构图与氛围，不止剪影**：H3 故事板走"电影感构图 + 铅笔草图"路线，画面可以有光影层次、情绪和虚实，这些都会被 H3 读进成片。

## 填空指南

| 填空位 | 从哪来 | 写法 |
|---|---|---|
| `{N}` | 阶段 0 该单元节拍数 | 从 {6, 9, 12, 16} 中选定的值 |
| `{题材+主题句}` | Logline | 如 a quiet slice-of-life video about an old bookbinder's morning |
| `{参考图映射}` | 阶段 2 资产 | 每张参考图一行，只声明用途，不重述外观 |
| `{画风流派}` | 阶段 1 选定风格 | 如 Japanese animation / western graphic novel / painterly concept art |
| `{情绪基调串}` | 阶段 0 情绪基调 | 2–4 个英文形容词，如 intimate, understated and slightly melancholic |
| `{光线时刻}` | 场景清单 | 如 late-evening interior lighting |
| `{叙事美学句}` | 情绪基调推导 | 一句本片的美学主张，如 mundane moments made beautiful |
| `{摄影语言串}` | 本片视觉重点 | 3–5 项，如 negative space, off-center framing and close-ups of hands, eyes and small gestures |
| `{负面清单}` | 题材反面 | 本片最怕跑成的样子，如 flashy commercial shots or exaggerated reactions |
| `{表演基调}` | 角色速写 | 一句表演方式，如 move with restrained natural body language |
| `{信息节奏控制}` | 阶段 0 压信息设计 | 可选；哪个关键视觉压到何时才可读，如 The final pattern should gradually form but remain unreadable until the very end |
| `{Panel 各行}` | 节拍表逐拍扩写 | 见下方 Panel 写法 |
| `{台词行}` | 节拍表台词标注 | 目标观众语言，逐行 |

## 模板

```
Create a 16:9, {N}-panel storyboard for {题材+主题句}.

{参考图映射——每行一条，如：
The uploaded character board defines {Name}'s appearance; {he/she/they} should appear throughout the storyboard.
The uploaded scene image defines the location; keep its layout, key objects and lighting consistent in every panel.}

Use a basic {画风流派} storyboard sketch style with loose pencil lines, simple shading and cinematic compositions. Do not copy the rendered finish of the uploaded references; keep every panel a production sketch.

The overall tone should feel {情绪基调串}, with {光线时刻}, {叙事美学句}, {摄影语言串}. Avoid {负面清单}.

The character should {表演基调}. {信息节奏控制}

Arrange the panels in strict reading order, left to right, top to bottom, and add a small panel number in one corner of each panel. Draw one panel per line below, in order:

Panel 01: {画面描述}.
Panel 02: {画面描述}.
…（共 {N} 行，与该单元节拍表逐拍对应）

Narration:
{台词行，逐行，顺序与所属 panel 一致；多角色时行首标注说话人}
```

## Panel 行写法

每行从节拍表对应拍扩写成一句：**机位/景别 + 谁在画面哪里（用身份称呼）+ 单一动作或情绪瞬间 + 空间/情绪结果**。

- 每格一个状态，禁 then / after / before / first / next / later
- 不重述参考图已锁定的外观（发型、服装、场景物件长相）——只写这一格新增的信息
- 机位与景别要有节奏变化（全景定场、中景动作、特写情绪穿插），连续多格同景别会让成片显平
- 有台词的拍，画面描述里给出说话时的状态（在做什么、看哪里），台词本身放 Narration 块
- 最后一格 = 阶段 0 的收束记忆点
- 多单元片的非首单元：首格从边界帧续接，写法见 h3-multi-unit-guide.md（Image D 条款）

## Narration 块

- 语言 = 阶段 0 确认的目标观众语言
- 只放要被说出来的话（台词/旁白/自语），不放画面说明——H3 会把这里的每一行渲染成语音
- 行序 = 节拍顺序；无台词的片整块省略
