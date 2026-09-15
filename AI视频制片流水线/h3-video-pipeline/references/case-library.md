# 案例库（参考文化）

本 skill 的结构与关键措辞来源于以下两个公开分享的 MiniMax H3 实测案例（作者 @aimikoda）。**用法：只借结构、措辞方式和"极简哲学"，绝不把案例的具体内容（拿铁、咖啡馆、城市地图等意象）带进产出**——除非用户题材恰好如此。

---

## 案例 1｜参考图驱动流：拉花日常动画（模式 A 的原型）

来源：https://x.com/aimikoda/status/2090969477588427222

作者结论：故事板与 H3 配合极好；视频提示词里**完全没写场景描述**，H3 对参考图的理解力承担了一切。

### Midjourney v8.2 角色提示词（→ 阶段 1 的原型）

> Stylized female anime character, cafe barista, distinctive character-driven anime aesthetic, slightly unconventional facial proportions, sharp expressive eyes, delicate angular features, recognizable silhouette, clean background

### GPT Image 2 故事板提示词（→ h3-storyboard-template 的原型）

> Create a 16:9, 9-panel storyboard for a quiet slice-of-life anime video about making latte and latte art. The uploaded character should appear throughout the storyboard. Use a basic Japanese animation storyboard sketch style with loose pencil lines, simple shading and cinematic anime compositions. The overall tone should feel intimate, understated and slightly melancholic, with late-evening café lighting, mundane moments made beautiful, subtle expressions, negative space, off-center framing and close-ups of hands, eyes, steam and small gestures. Avoid flashy commercial shots or exaggerated anime reactions. The character should softly talk to themselves while making the latte, with restrained natural body language. The latte design should gradually form but remain unreadable until the very end.
> Narration:
> まずはエスプレッソを淹れます。
> ミルクをなめらかにスチームして、ゆっくり注ぎます。
> カップに近づけて、模様を描いていきます。
> 最後にひと仕上げ。ラテアートの完成です。

结构拆解：画幅+面板数+主题 → 角色贯穿声明 → 故事板画风（草图感）→ 情绪基调+摄影语言 → 负面清单 → 表演基调 → 信息节奏控制（图案最后才可读）→ 旁白文本。

### MiniMax H3 视频提示词（→ h3-video-template 的原型）

> Use the storyboard @[storyboard ref] as sequential shot guidance, not as a static image. Do not treat the storyboard as one image. Follow each panel as a separate beat. Use @[character ref] as character reference.
>
> She talks while preparing the latte:
>
> まずはエスプレッソを淹れます。
> ミルクをなめらかにスチームして、ゆっくり注ぎます。
> カップに近づけて、模様を描いていきます。
> 最後にひと仕上げ。ラテアートの完成です。

结构拆解：读图规则（三句，逐字保留价值最高）→ 角色引用 → 表演引导句 + 台词逐行。零场景描述。

---

## 案例 2｜纯文本流：城市地图序列（模式 B 的原型）

来源：https://x.com/aimikoda/status/2092245028399726605

### MiniMax H3 纯文本提示词（→ h3-text-template 的原型）

> [CITY] = city name here
>
> Create a stylized 3D animated city-map sequence inspired by [CITY].
>
> Show a beautifully designed miniature city map built on a solid land surface.
> Do not show the city name during the map sequence.
>
> Make the entire world feel like a landscape of memories.
> Every street, building, park, bridge, stairway, waterfront, and landmark should feel nostalgic, intimate, and emotionally charged.
> Blend architecture, pathways, terrain, and natural elements into one compact, cohesive miniature world.
>
> Use one continuous cinematic shot.
> The camera moves quickly and smoothly across the map with energetic forward motion, gentle turns, and subtle height changes.
> As the camera reaches major iconic locations, briefly slow down so those places can pop up and settle clearly.
> Then accelerate again and continue toward the next area.
>
> As the camera advances, buildings, streets, trees, bridges, and landmarks rise from the map in satisfying pop-up motion.
> Use quick upward emergence, slight overshoot, soft bounce, and clean settling.
> Let each important location pop up in a memorable way, with nearby supporting elements appearing around it.
> The city should progressively assemble along the camera path so the world feels like it is awakening through memory.
>
> Show only the most iconic and culturally recognizable elements of [CITY].
> Keep the sequence compact, visually rich, and easy to read in 15 seconds.
>
> At the end, pull back slightly and transition to a clean final title moment.
> Display the city name prominently in the center of the screen as a typographic title.
> Design the typography according to the local culture and visual identity of [CITY].
> The lettering should feel stylish, elegant, and culturally grounded rather than generic.
> Keep it clearly readable and visually striking as the final reveal.
>
> Use a richly detailed stylized 3D diorama look with appealing materials, warm daylight, gentle shadows, a bright sky gradient, and a polished premium finish.

结构拆解（对应 h3-text-template 的九段）：参数声明 → 总概念句 → 世界与主体（含负面约束）→ 情绪透镜 → 镜头编排+速度曲线 → 动效语言（pop-up 四件套）→ 内容策展 → 收尾协议+落版 → 渲染风格。
