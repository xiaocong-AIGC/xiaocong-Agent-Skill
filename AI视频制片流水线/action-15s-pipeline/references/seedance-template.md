# Seedance 2.0 提示词模板 + Suno 纯音乐提示词

参考资产：`@[storyboard ref]` = 阶段 3 做好的故事板图；`@[charN ref]` = 各角色设定板。故事板只当布局锚点，角色板只当外观来源——这个分工必须在提示词开头就声明，否则模型会把故事板的剪影简笔风格渲染进成片。

## 开头引用规则（按角色数选变体）

**2 角色：**

```
Use @[storyboard ref] only as storyboard layout anchor for shot order, camera, staging, screen direction, and spatial continuity. Render from this prompt and mapped references; ignore storyboard style, simplified anatomy, panel text, malformed props, extra limbs, duplicate silhouettes, stray marks, icons, effect scribbles, borders, and headers.
Read each panel as a separate shot sample; keep the same C#/object identities and do not merge poses.
Use @[char1 ref] only for C1 final appearance, face, body, wardrobe, proportions, materials, and likeness and @[char2 ref] only for C2 final appearance, face, body, wardrobe, proportions, materials, and likeness; storyboard silhouettes guide staging and designs must not transfer between roles.
```

**1 角色**：第三段只保留 char1 的半句，结尾改为 `; storyboard silhouettes guide staging only.`
**3 角色**：第三段按同样句式扩到 @[char3 ref] / C3，保留 designs must not transfer between roles。
**0 角色（纯场景）**：删除第三段；若阶段 1 有选定的 MJ 场景图，加一句 `Use @[env ref] only for final environment materials, palette, and atmosphere.`

C1/C2/C3 与角色的对应关系要与故事板 [REFERENCES] 的 Image A/B/C 一致，避免身份错位。

## 六段主体

每段一行起头的大写标签，冒号后接内容。全部从定稿故事推导：

```
VISUAL STYLE: {风格流派（承接阶段 1 选定方向）}, 15-second {动作概念}, {镜头/透视特征}, {光线基调}, {双方标志性效果色对比}, {氛围粒子}, {动作片渲染关键词，如 impact flashes / debris bursts / clean dimensional linework}.
AUDIO: {音乐骨架一短句}; {音效清单，逐项对应本片实际出现的接触方式、场地材质、特效}.
ENVIRONMENT: {场地完整描述——与故事板 arena 措辞同源，列出地面、结构件、光源、松散物}.
EMOTIONAL GUIDANCE: {C1 与 C2 的对决关系和战斗风格——距离逻辑、招式体系、攻防态势}.
RHYTHM + ESCALATION: {节奏策略一句——每拍如何作为连续动作流中的关键帧，如何升级到终结一击}.
```

- AUDIO 里的音效必须能在 BEATS 里找到画面出处（写了 cloth snaps 就得有大幅动作，写了 debris scatter 就得有碎块飞散）
- EMOTIONAL GUIDANCE 用 C1/C2 称呼；情绪写成态势和动作倾向，不写抽象心理词

## BEATS

```
BEATS:
P01: {该拍最终成片描述}.
…（编号、数量、内容与故事板逐格对应）
```

每拍在故事板对应格的"机位 + 姿态 + 接触 + 方向"骨架上，补成片层信息：材质与服装动态、光效颜色与形态、氛围粒子、镜头动感、该拍的音画点。仍然每拍一个关键帧、禁时序词；角色一律用 C1/C2 称呼。特效颜色全程与 VISUAL STYLE 声明的效果色一致，不中途换色。

## Suno 纯音乐提示词

给 1–2 条候选，只写风格标签串（纯音乐，无歌词）。要素顺序：

```
{流派混搭}, {情绪}, {核心乐器/音色 2–4 项}, {BPM 或节奏描述}, {能量走向}, instrumental, no vocals
```

- BPM 与节拍表密度匹配：12–16 拍的高速连击对决用 130–160 BPM 的密集打击乐；4–8 拍的重击叙事用更慢但更重的鼓点
- 能量走向对齐 15 秒动作弧线：铺垫极短、快速攀升、在终结一击处给 hard hit 或骤停（如 relentless rising energy, hard final hit with abrupt cutoff）
- 音色选择呼应 AUDIO 段的音乐骨架，两边不要打架
