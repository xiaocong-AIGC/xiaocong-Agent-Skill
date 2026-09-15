# Template — CHARACTER IDENTITY BOARD

> 用途：把一个角色锁定成可复用资产，供后续图像/视频生成保持一致。
> 严格继承 `references/AI视频工作流.md` §1 的字段顺序与英文 production prompt 语气。
> **不要写死具体角色**；`<...>` 为占位，由 AI 按当前项目填。背景纯白/米白，no logo / no watermark。
> 输出主体为**英文**。不得简化成关键词 prompt。

---

Create an artistic 16:9 CHARACTER IDENTITY BOARD.

[SUBJECT]: <use the reference image OR describe from script>. name: <character name>. <one-line role/identity>. <correction & lock instructions, e.g. make color correction; no goggles; no extra props; remove X>.
VISUAL MEDIUM: <rendering medium, e.g. realistic 3d / stylized 3d cel-shaded, three-render-two look>.

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
Around it, arrange smaller supporting studies with clean spacing: <choose views that fit the character: neutral full-body, back view, profile view, seated pose, leaning pose, crouching pose, top-down body angle, low-angle body angle, expressive portrait studies>.
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
NAME: <NAME>
ROLE: <ROLE>
CORE MOOD: <CORE MOOD>
VISUAL SIGNATURE: <VISUAL SIGNATURE>

Use small handwritten-style labels only where helpful.
Subtle editorial arrows and annotation marks are allowed, but keep them minimal and elegant.

STYLE:
minimal, cinematic, premium, artbook-like, clean, expressive, useful for production.

The final image should feel like an artistic character identity board designed to help an AI model understand the character's face, silhouette, outfit, posture and emotional range.

---

> 填写提示：
> - 若有参考图，[SUBJECT] 用 `use the reference image` 并写明要修正/移除的项；若纯文字生成，用脚本里的外形描述。
> - VISUAL MEDIUM 必须与全项目风格一致（同一作品所有角色统一媒介）。
> - MAIN COMPOSITION 的视图清单按角色特性挑选，不必照搬演示里的全部姿势。
> - TEXT DESIGN 四项用英文大写短语。
