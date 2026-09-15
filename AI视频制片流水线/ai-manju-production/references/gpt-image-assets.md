# GPT-Image-2 图片资产体系

所有图片资产（人物、场景、道具、特效、站位图）只用 GPT-Image-2。它是推理型模型：服从清晰的自然语言指令，不吃关键词堆叠。

## 1. 总则（官方结构对齐）

1. 五段固定骨架，顺序不变：**画幅+资产类型声明 → 参考图职责（仅有参考时）→ 主体/结构段 → STYLE 风格段 → 约束段**。
2. 全提示词 100–300 词；过长会丢指令。大写标签分段优于一大段散文。
3. 风格必须显式声明：GPT-Image-2 默认照片写实，漫剧的每一张图都必须带 STYLE 段。
4. 参考图按序号+单一职责声明（`Image 1 controls …`）；每张参考只有一个主要职责。
5. 约束段必带反文字句：`No extra text, no labels, no watermark.`（模型文字能力过强，会到处写字。）
6. 修改已生成的图用编辑思维：`Change only X. Keep everything else the same.` 并逐轮重复保留清单。
7. 画幅在生成时就用目标比例，不生成后裁切。画幅按立项确认（默认 16:9）。

## 2. STYLE 风格段（全片统一机制）

- 风格段是一段逐字复用的英文媒介描述，登记在 SERIES_BIBLE；每张资产原样粘贴，不改词序。
- 内容=可观察特征：媒介类型、线条、上色方式、纹理复杂度、光照哲学。建立时的参考示例（不自动应用）：

```text
2D cel anime, clean bold line art, flat cel shading with two-tone shadows,
saturated palette, detailed painted backgrounds, theatrical anime production quality.
```

- 只写媒介，不写具体颜色与内容；具体色彩属于每张图的主体段。
- 建立方式：立项时与用户确认；首张验收通过的资产登记为代表资产。

### 风格锚图（强风格化项目必挂）

实测教训（2026-08-29，逆澜项目）：GPT-Image-2 写实先验极强，**纯文字风格段锁不住动画/漫画等强风格化目标**——"anime-adjacent / premium CG / PBR / film-grade"等词全部被拉回照片写实，人物成了真人渲染、场景成了实景照片。规则：

1. 强风格化项目**每张资产都挂风格锚图为 Image 1**；职责声明只控制渲染风格、材质语言、光线完成度，并明写禁止复制锚图中的人物、服装、颜色与构图。
2. 锚图来源：目标画风的官方剧照或高清帧（画风不受版权保护）；**首张验收通过的本项目资产立即接替为自锚**（人物锚与场景锚分开维护），逐步摆脱外部锚，形成自洽锚链。
3. 风格段文字降为次要支撑，必须加反写实句：`not photorealistic, not live-action, no real-human skin texture`。
4. 双参考重渲染（Image 1=风格锚，Image 2=旧图设计源）**仅用于轻度漂移**。实测教训（2026-08-29）：错误风格的旧图会把写实材质（布料、道具质感）带进新图，造成单图内画风分裂。**重设计一律不挂错误风格旧图**——设计全部文字重述，风格交给 2–4 张同族锚图（多锚更稳）。
5. 材质词必须用动画语言：stylized / painterly / clean simple folds / matte；禁用拉向照片的词（washed rough cloth、denim-like、weathered photo texture）。验收加一问：**单图内脸、衣、道具、背景是否同一种画风**。
6. 配饰与道具的形制灵活设计（牌／坠／绳结／环佩），选最上镜且有设定支撑的形态，不被功能推导锁死。
7. 已验收资产的小修（编辑式）不挂风格锚——挂被修订资产本身。

## 3. 人物四视图

人物唯一生产权威。不做半身探索，不做人物设定板；视频模型直接挂四视图锁身份。

### 记忆点三层法（写四视图提示词前先过）

实测教训（2026-08-29）：只写"好看"会得到通用模板脸（尖下巴奶油脸+粗眉大双眼皮），任何剧都能用=任何剧都记不住。主要角色设计前先定三层记忆点，且每个记忆点必须由人物设定支撑，不随机贴：

1. **剪影层**（远景/黑影可认）：发型剪影+体型轮廓的独有组合（如不对称白发绺、高束长发、异形武器背负）。
2. **中景层**（半身可认）：眉眼签名——眉形+眼型+眼神质地的固定组合（如断眉、平剑眉配狭长眼、"在数东西"的专注眼神），并用反模板脸型（清晰下颌角而非尖下巴等）。
3. **特写层**（近景独有印记）：一两个来自设定的印记（瞳纹、疤、纹样），最好带成长变量（剧情推进时会变化，如力量觉醒时瞳纹亮起）。

提示词写法：三层记忆点写进 CHARACTER 段并逐条大写强调（LEFT/RIGHT等方位词防镜像混乱）；IDENTITY LOCK 段点名记忆点必须四格一致。场景同理适用"一场景一记忆点"（唯一超现实结构、唯一空间奇观或唯一光源设计）。

### 造型状态体系（连载主角必做）

1. 主要角色按**身份/境界阶段**建立造型状态表（登记于 SERIES_BIBLE）：每状态一张独立四视图，状态切换点由剧本节点决定。
2. **记忆点跨状态不变**（身份锚）；可变的是整洁度、服装完成度、发型精致度——三条线随剧情同步升级构成"反差弧"（落魄→体面的爽感来源）。造型必须匹配当前身份：底层就要素、旧、糙（脏但骨相帅），不能穿出宗门弟子感。
3. **锚图气质污染防火墙**（实测教训2026-08-30）：华服/贵族类锚图的职责声明必须点名排除 ornate costumes、embroidery、gold ornaments、jewelry、face markings——否则锚图的华丽语言会渗入平民角色的服装与发型。同理，平民锚图给贵族角色时反向声明。

**固定段（逐字复制，不可改写词序、灯光、背景或版式）：**

```text
Soft even studio lighting, plain light-grey seamless background. Horizontal
four-panel layout: on the left, a bust close-up from neck to chest; to its right,
in order, a front full-body view, a back full-body view, and a 90-degree side
profile full-body view. Feet fully in frame in all full-body views, even spacing
between panels, no hard borders.
```

**无参考图模板：**

```text
Create a {画幅} character model sheet.

[固定段——逐字粘贴]

CHARACTER: {代号}. {年龄/身份一句}. {脸型、五官、发型、肤色}. {体型与辨识特征}.
OUTFIT: {上装/下装/鞋/固定配饰/主辅配色/材质}. Same outfit in all panels.

IDENTITY LOCK: all four panels show the same character — identical face, hairstyle,
body proportions, outfit and colors; the three full-body views match in height and scale.

STYLE: {风格段逐字}.

No extra text, no labels, no watermark, no extra characters, no props unless listed.
```

**有参考图模板：** CHARACTER/OUTFIT 两段替换为职责声明，其余段落原样：

```text
Image 1 controls the face, age, hairstyle, body proportions and core recognizability.
{Image 2 controls the complete outfit, shoes, accessories, colors and materials.}
Do not redesign the character.
```

验收：四格版式正确；三张全身比例、发型、服装一致且双脚完整；胸像与全身同一人；风格与代表资产一致。通过后登记为人物权威。换装=同人物新出一张四视图（挂旧四视图做 Image 1 身份参考）。

## 4. 场景：主视觉+新机位

场景=地点×时刻。同一地点的黄昏与深夜是两个资产。

主视觉前置要求（生成前检查）：

- 本集分镜要用的结构锚点（门、窗、楼梯、祭坛、关键家具）全部画内且不贴边。
- 布局全貌可见：一张图能读出空间结构与活动区域。
- 大空间写尺度数字（宽度/纵深/层高），防止模型画窄。

**场景主视觉：S+ 十六段结构（用户实测胜出结构，2026-08-31 起为强制规范）**

> 实测教训：旧模板 80% 在说"画什么"，几乎没说"怎么画"——rendering style/painterly 这类结果词对生图模型是抽象概念，模型会回落到写实先验（古镇+电影感→AAA游戏/实拍布景）。修复原则：**不只告诉模型世界里有什么，还要告诉模型美术部门会怎样设计、简化、上材质、打光和调色。** 名词式描述一律升级为"名词+视觉表现方式+程度限制"（wooden floor → broad simple plank shapes, subtle stylized wear, matte painterly finish, restrained micro-texture）。

段落顺序（每段职责唯一）：

```text
01 STYLE ANCHOR      主锚图必须支配渲染(must dominate)；把风格拆成可执行词：
                     stylized premium CG finish / simplified painterly PBR /
                     broad clean surface shapes / restrained micro-texture /
                     soft atmospheric depth / controlled bloom /
                     cinematic volumetric light / art-directed color grading；
                     副锚图声明为SECONDARY；禁止复制锚图内容与构图
02 STYLE BOUNDARY    must read FIRST as {目标}，NOT as：photorealistic环境/
                     实拍布景/AAA写实游戏/物理复原（逐项点名排除方向）
03 MATERIAL LANGUAGE 材质美术规范：softly painted X / simplified Y /
                     restrained wear / minimal grime + 反面清单
                     （no photographic grain / no hyper-detailed cracks /
                     no gritty realism）
04 MASTER SHOT       画幅+地点+机位+高度+朝向
05 LAYOUT            空间关系与尺度数字（哪个东西在哪，不堆细节）
06 KEY STORY OBJECT  剧情关键物单独成段（窗中冢山/挂牌墙/城门楼/雷云漩涡），
                     写清位置、大小、清晰度、不被遮挡
07-09 FG/MG/BG       每层=物体+该层的视觉处理方式
10 LIGHTING AND COLOR 美术灯光：主光/辅光/整体明度(dark but readable、
                     不压死黑)/冷暖分配/允许的效果(haze、controlled bloom)
11 COLOR LANGUAGE    直接给调色盘（4-6个色名）
12 MOOD              情绪+边界（slightly ominous, but NOT horror）
13 VISUAL PRIORITY   注意力排序，末位永远 surface texture last
14 FINAL STYLE SUMMARY 收口一句：like a frame from …, clearly CG-animated
15 HARD CONSTRAINTS  统一收尾：无人/无字（或"唯一可读文字仅限引号内店招"）/无水印
```

可读文字规则更新：需要世界感的店招/牌匾可逐字生成（引号内原文，字体声明书法体），并声明"图中唯一可读文字仅限以上引号内容"；其余幌子横幅一律留白。

**新机位（按分镜表实际需要逐张派生，不预设数量）：**

```text
Image 1 is the location reference.

Keep the same architecture, wall and door positions, windows, furniture, materials,
colors, lighting direction and time of day as Image 1. Do not redesign the space,
do not add or remove furniture.

Change only the camera: now at {地标}, height {…}, facing {固定地标}.
FOREGROUND: {…}  MIDGROUND: {…}  BACKGROUND: {…}
Newly visible areas continue the established architecture.

{画幅}. STYLE: {风格段逐字}. No people, no text, no watermark.
```

逐张验收：与主视觉共同可见的结构对齐、光源方向一致，通过再推进下一张。

## 5. 道具三分类

| 类型 | 判定 | 资产形态 |
|---|---|---|
| 实体道具 | 外形跨镜出现、剧情关键、有近景交互 | 白底多视图板 |
| 使用状态 | 持握/展开/损坏/激活等状态影响画面 | 独立状态图，不与基础板混排 |
| 特效道具 | 刀光、技能、法术、残影、冲击波 | 特效板（深色底、三态） |

**锚图类型匹配铁律（实测教训2026-08-31，第三类风格漂移）**：每类资产必须挂**同类型**风格锚——人物挂人物锚、场景挂场景锚、**道具挂道具锚**（目标画风的道具/法器特写帧）、特效挂特效或场景锚。跨类型锚（如拿人物四视图锚道具）加上 "reference sheet / plain pale-grey background" 类措辞会触发**产品摄影先验**，道具直接漂成写实产品图。道具板同走S+逻辑：STYLE BOUNDARY 点名排除 photorealistic product photography、museum catalog photo、real-object studio shot、PBR game asset render；道具造型本身要**动画化设计**（装饰性剪影、云头/卷草收边、简化浮雕、broad clean highlights、按身份决定是否微光），用深色柔和渐变底+接触阴影，禁用纯灰产品底。

**实体道具板模板：**

```text
Create a {画幅} prop reference sheet on a clean white background: {道具名}, {一句功能}.

VIEWS: front, back, side, 3/4 angle, evenly spaced, identical scale.
STRUCTURE: {部件/尺寸/连接/开合}
SURFACE: {颜色/材质/表面处理/发光部位}
Same prop, same proportions, same colors in every view.

STYLE: {风格段逐字}.
No hands, no characters, no scene, no text, no watermark.
```

**特效板模板（按技能/功法建档，不按角色）：**

```text
Create a {画幅} effect reference sheet on a dark neutral background: {技能/功法名},
{一句：谁的什么技能，属性与感觉}.

STATES: three stages left to right — forming, full power, dissipating.
FORM: {形状/轨迹/核心与边缘颜色/发光强度/粒子}
SIGNATURE GLYPH: the Chinese character "{字}" in bold brush calligraphy,
integrated into the effect.（仅招牌技能需要书法字卡时写；逐字打引号）

STYLE: {风格段逐字} with anime effect animation language: speed lines, smears,
impact shapes.
No characters, no extra text beyond the quoted glyph, no watermark.
```

特效规则：一个角色可拥有多个技能特效，每个技能一张板、一个固定签名（颜色+形态+可选书法字）；技能签名一经验收，全剧逐字复用。同屏可读性见 [camera-language.md](camera-language.md) 光色信号条：交手双方当前活跃特效必须可区分。

## 6. 站位图（多人戏）

两人以上、位置关系复杂或生成多次漂移时使用。三层防串染：图上只有轮廓无填充、连接块只写正向措辞、附图顺序站位图最后。

**第一步：生成站位示意图。**

```text
Flat minimalist technical LINE DRAWING on a white background: a staging plan
for a film scene. {N} outline figures in muted colors — thin outlines only,
NO fills, NO shading, NO text, NO letters, NO labels.

{逐人：位置、姿态、朝向、可见范围（被画框裁掉就画裁掉）、随身道具的简单轮廓}
{锚定家具或建筑的简单轮廓与位置}

Simple, readable, diagrammatic. {画幅}.
No photorealism, no solid color fills, no typography.
```

**第二步：连接块**（贴进视频提示词的参考声明；不提示意图的图形风格，只写正向归属）：

```text
@staging — POSITION REFERENCE ONLY
Use it solely for where each figure stands, their pose and facing direction.
All style, light, faces, wardrobe and environment come exclusively from the
character sheets and the scene image. The BLUE figure = {角色A} at {位置};
the ORANGE figure = {角色B} at {位置}. Colors identify who is who on this
reference only — wardrobe comes from the character sheets. Everyone stays
in position until their scripted action.
```

附图顺序：场景图、四视图在前，站位图最后。

## 7. 验收与登记

每张资产验收后登记进 [../templates/ASSET_MANIFEST.md](../templates/ASSET_MANIFEST.md)：真实路径、类型、职责、覆盖机位或状态、验收状态。废弃资产从文件系统与映射同时移除。
