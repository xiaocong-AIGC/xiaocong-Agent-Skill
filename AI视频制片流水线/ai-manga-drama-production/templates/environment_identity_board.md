# Template — ENVIRONMENT IDENTITY BOARD

> 用途：把一个场景锁定成可复用资产（地理 / 光线 / 空间锚点 / 材质 / 气氛），供后续生成保持一致。
> 严格继承 `references/AI视频工作流.md` §2 的字段顺序与英文 production prompt 语气。
> **不要写死具体场景**；`<...>` 为占位。背景纯白/米白，no characters / no logo / no watermark。
> 输出主体为**英文**。REFERENCE PRIORITY 仅在有已存在外观/状态参考时填，否则注明 none。

---

Create an artistic 16:9 ENVIRONMENT IDENTITY BOARD.

[SUBJECT]: <environment name>. <full spatial identity: what space, key structures, key props, atmosphere>. <art style line>. No characters, no logo, no watermark.

VISUAL MEDIUM:
<rendering medium, e.g. Stylized 3D cel-shaded animation, three-render-two look, cinematic adult animation quality>.
Pure white / soft off-white background.
Clean production artbook presentation.
No character performance, no action scene, no dramatic battle moment.

REFERENCE PRIORITY:
<If an existing reference exists:> Use @<existing reference> as the architectural identity / spatial continuity reference.
Preserve the same design language: <list elements to keep>.
This asset controls <what this board governs: layout, key anchor, prop positions, floor path, future video staging>.
Do not copy the reference composition. Translate the reference design language into this space.
<If no reference:> Reference priority: none — this board establishes the master identity for this environment.

DESIGN DIRECTION:
Do not create a standard architectural reference sheet.
Create a cinematic environment identity board that feels like a high-end animation studio location study mixed with an artbook layout.
The layout should be asymmetrical, elegant and visually memorable.
Use large empty space, varied image scale and intentional imbalance.
Avoid grids, blueprint design, catalog layout and repetitive turnaround presentation.

IMPORTANT LAYOUT RULE:
Do not overlap any environment images.
Every view must have clear separation and breathing room.
Keep all interior/exterior views, spatial studies, prop details and atmosphere studies visually distinct.
No cropped key architecture, no hidden central anchor, no merged views, no confusing repeated layouts.

MAIN COMPOSITION:
Place one large hero wide view of <the environment> slightly off-center as the visual anchor.
Around it, arrange smaller supporting studies with clean spacing: <choose views that fit: entrance-to-center view, central anchor view, ceiling/overhead structure view, key prop study, collapsed/alt-state study, material detail, low ground-level view, top-down spatial layout study>.
Each view should feel like a separate clean environment study, not a frame from one scene.

ENVIRONMENT IDENTITY:
<What this space is and is NOT. Hybrid type definition. History and current state. Atmosphere.>

SPATIAL LOCK:
Preserve strict spatial consistency across all views: <same entrance direction, same central anchor position, same key element distribution, same light direction, same floor path, same prop positions>.
<Name the single most important spatial anchor and its location.>

KEY ENVIRONMENT ELEMENTS:
<List key architectural / natural / prop elements, one per line.>

COLOR AND MATERIAL:
<Low-saturation (or project) palette, one per line.>
Materials should be readable:
<list readable materials, one per line.>

LIGHTING:
<Light source & direction, light shafts, shadow logic, glowing elements, overall mood.>

USEFUL REFERENCE DETAILS:
Make the environment readable for future image and video generation:
<clear entrance direction, clear central anchor, clear key prop positions, clear floor path, clear space left for character performance/staging.>
The board should help an AI model understand the geography, key props, light direction, material language, atmosphere and future video staging.

ARTISTIC SECTIONS:
Include a small spatial study area with 2-3 simplified layout thumbnails: <list>.
Include a small atmosphere study area with subtle variations: <list>.
Include a small detail study area showing key visual features: <list>.

TEXT DESIGN:
Add one stylish ENVIRONMENT ID block.
Keep it minimal, bold and art-directed.
Use only:
NAME: <NAME>
ROLE: <ROLE>
CORE MOOD: <CORE MOOD>
VISUAL SIGNATURE: <VISUAL SIGNATURE>

Use small handwritten-style labels only where helpful.
Subtle editorial arrows and annotation marks are allowed, but keep them minimal and elegant.

STYLE:
Minimal, cinematic, premium, artbook-like, clean, expressive, useful for production.
<media/technical lock line consistent with the project>.

The final image should feel like an artistic environment identity board designed to help an AI model understand <this environment>'s geography, key anchors, prop layout, material language, atmosphere and future video staging.

---

> 填写提示：
> - 同一空间的不同状态（如毁坏前/后）时，用一个 ref 作 architectural identity，另一个作 spatial continuity，并写 `Do not redesign ... Translate ... into its ... state.`
> - SPATIAL LOCK 必须指明唯一最重要的空间锚点。
> - 媒介与调色逻辑必须与项目其它资产统一。
