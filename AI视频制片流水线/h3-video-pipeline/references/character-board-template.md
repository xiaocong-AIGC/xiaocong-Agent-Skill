# 角色设定板提示词模板（GPT Image 2）

每个角色一条提示词、一张板，reference image 用该角色选中的 MJ 图。`{…}` 是填空位，输出时替换成推导内容并去掉花括号；没有标 `{…}` 的段落原样保留——它们是让板子稳定可用的固定约束，不要增删改写。

## 填空指南

| 填空位 | 从哪来 | 写法 |
|---|---|---|
| `{Name}` | 阶段 0 角色速写 | 角色名（英文或拼音） |
| `{role one-liner}` | 角色速写的身份 | 一句英文身份描述，如 late-night café barista |
| `{corrections}` | 对比 MJ 图与角色设定的差异 | 要修掉/去掉/统一的点，如 make color correction. no apron logo.（没有就整句省略） |
| `{visual medium}` | 阶段 1 用户选中的风格 | 如 realistic 3d / 2d cel anime / painterly watercolor |
| `{NAME/ROLE/CORE MOOD/VISUAL SIGNATURE}` | 角色速写 | 各一到四个英文词，VISUAL SIGNATURE 写该角色最可识别的视觉标志（标志性配色、剪影件、专属道具等） |

修正指令（corrections）的作用是让设定板从一开始就与故事一致：MJ 探索图里带了故事不需要的道具、配色偏了，都在这里修，不要留到后面阶段。

## 模板

```
Create an artistic 16:9 CHARACTER IDENTITY BOARD.

[SUBJECT]: use the reference image. name: {Name}. {role one-liner}. {corrections}
VISUAL MEDIUM: {visual medium}.

Pure white / soft off-white background. No environment, no logo, no watermark.

DESIGN DIRECTION:
Do not create a standard character reference sheet.
Create a cinematic identity board that feels like a high-end animation studio character study mixed with an artbook layout.

The layout should be asymmetrical, elegant and visually memorable.
Use large empty space, varied image scale and intentional imbalance.
Avoid grids, blueprint design, catalog layout and repetitive turnaround presentation.

IMPORTANT LAYOUT RULE:
Do not overlap any character images.
Every view must have clear separation and breathing room.
Keep all bodies, portraits, silhouettes and detail studies visually distinct.
No cropped faces, no hidden limbs, no stacked figures, no merged poses.

MAIN COMPOSITION:
Place one large hero full-body view slightly off-center as the visual anchor.

Around it, arrange smaller supporting studies with clean spacing: neutral full-body view, back view, profile view, seated pose, leaning pose, crouching pose, top-down body angle, low-angle body angle, expressive portrait studies.

Each view should feel like a separate clean character study, not a frame from one scene.

IDENTITY LOCK:
Preserve strict identity consistency across all views: same face, same facial proportions, same hairstyle, same outfit, same body proportions, same posture language, same visual personality.

USEFUL REFERENCE DETAILS:
Make the character readable for future image and video generation: clear face shape, clear hair silhouette, clear outfit silhouette, clear body shape, clear hands, clear posture, clear expression range.

ARTISTIC SECTIONS:
Include a small silhouette study area with 2-3 simplified black character silhouettes.
Include a small expression study area with subtle emotional variations.
Include a small detail study area showing key visual features of the face, hair and outfit.

TEXT DESIGN:
Add one stylish CHARACTER ID block.
Keep it minimal, bold and art-directed.
Use only:
NAME: {NAME}
ROLE: {ROLE}
CORE MOOD: {CORE MOOD}
VISUAL SIGNATURE: {VISUAL SIGNATURE}

Use small handwritten-style labels only where helpful.
Subtle editorial arrows and annotation marks are allowed, but keep them minimal and elegant.

STYLE:
minimal, cinematic, premium, artbook-like, clean, expressive, useful for production.

The final image should feel like an artistic character identity board designed to help an AI model understand the character's face, silhouette, outfit, posture and emotional range.
```

## 题材适配

姿态列表按题材微调：把 seated pose / leaning pose 换成 1–2 个该角色在本片里最具代表性的姿态（生活流：劳作/手艺动作；演奏类：持琴姿态；动作类：战斗准备姿态），其余保持不变。

生活流/情绪片把 expression study area 的分量适当加重（如改为 an expression study area with subtle emotional variations — this is a key section）——subtle expressions 是这类片的表演核心，H3 会从板上学到表情幅度。

## 下游用法

- **故事板**：角色板作为参考图第一顺位上传，提示词只声明"外观来源"，不重述外观
- **H3 视频**：同一张板作 `@[char ref]`，条款见 h3-video-template.md
