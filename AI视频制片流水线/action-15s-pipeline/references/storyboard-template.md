# 分镜故事板提示词模板（GPT Image 2）

一条提示词出一张 16:9 制片板。参考图 = 各角色的设定板，上传顺序必须与 [REFERENCES] 里 Image A/B/C 的顺序一致。`{…}` 是填空位；未标注的行原样保留——这些固定行（剪影线稿风格、单动作规则、文字限制、负面清单）是板子能被 Seedance 干净读取的保障。

## 填空指南

| 填空位 | 从哪来 | 写法 |
|---|---|---|
| `{N}` | 阶段 0 节拍数 | 偶数，4/8/10/12/14/16 |
| `{TITLE}` / `{tagline}` | 阶段 0 片名 + 自拟 | 两行英文引号文案；tagline 一句概括本片的量感或宿命感 |
| `{action concept}` | Logline | 一句英文动作概念，如 a 15-second rooftop blade duel in a rainstorm |
| `{priority list}` | 本片视觉重点 | 3–5 项，如 extreme perspective, pose reads, blade contact, screen direction, fixed geography |
| `{Image X 条目}` | 各角色设定板 | 只列剪影级特征：发型体块、头饰形状、服装块面、鞋/站姿，以 only 结尾并声明 exclusive to 该角色 |
| `{arena}` | 场景钩子 | 场地的英文短语，全篇统一措辞，如 the rain-soaked rooftop arena |
| `{contact vocabulary}` | 角色战斗风格 | 本片允许出现的攻击手段清单，如 Use blades, forearms, shoulder checks and body pivots only |
| `{distance logic}` | 本片对决逻辑 | 双方空间关系锁，如 Keep both duelists within blade's reach in every panel |
| `{count lock}` | 角色数 | 见下方按角色数的写法 |
| `{props line}` | 故事道具 | 有武器就点名允许的道具，无武器写 No weapons or props |
| `{BEATS 各行}` | 阶段 0 节拍表逐拍扩写 | 见下方 BEATS 写法 |

### COUNT LOCK 按角色数写法

- **2 角色**（最常见）：`Preserve exactly two characters: one {角色A身份} and one {角色B身份}. Never omit or duplicate either.`
- **1 角色**：`Preserve exactly one character: the {身份}. Never duplicate.`（对手可以是环境/机械，作为 object 在 CONTINUITY 里锁定数量）
- **3 角色**：逐一点名三个身份，加 `Never omit, merge or duplicate any of them.`
- **0 角色（纯场景）**：删除 [REFERENCES] 的角色条目（改为 `Image A: environment style reference only`，用选中的 MJ 场景图），COUNT LOCK 改为锁定核心物件/现象的数量与唯一性。

### BEATS 写法

每拍一行，格式：`P## / {shot tag} / {beat name}: {画面描述}.`

- **shot tag**：机位/角度的专业短语（worm-floor、low angle、over-shoulder、top-down、canted、extreme close、insert、diagonal 等），整板机位要有变化和节奏
- **beat name**：两三个词概括该拍动作
- **画面描述**：一句话写清——谁在画面哪里（用身份称呼，不用 C1/C2 编号）、单一动作姿态、接触点、特效记号及其发力源（trails / bursts / dust wedges / impact rings，必须 attached 到拳脚或接触点）、屏幕方向、空间结果
- 每格一个动作状态，禁 then / after / before / first / next / later
- 最后一拍对应阶段 0 的收束瞬间，且首尾几拍的场地措辞与 `{arena}` 一致（same-layout view 回扣地理）

## 模板

```
Create a 16:9 accelerated {角色数描述，如 two-character} close-combat storyboard sheet image.

[SUBJECT]
A modern-minimal production board for {action concept}. Prioritize {priority list}.

[HEADER]
Design an artistic production-board header with thin rules outside panel interiors only.
The header must contain exactly these two quoted lines:
"{TITLE}"
"{tagline}"

[BOARD STRUCTURE]
Use AUTO layout with {N} panels.
Use compact panel headers exactly in this format: `P## / shot tag / beat name`.
Draw one panel per BEATS entry and preserve P## order.

[VISUAL STYLE]
Panel interiors are silent visual-reference thumbnails: open-outline silhouettes, thin graphite linework, broad negative space, and only anchors needed for pose, contact clusters, direction, and spatial result.
Show only outer body-mass and limb contours; no face, clothing detail, texture, toning, gray wash, modeling, or shaded fill.
Keep all panel interiors monochrome. Put final color and palette wording only in the video prompt. Draw effects as attached abstract marks: trails, bursts, halos, dust wedges, smoke plumes, or impact rings tied to a visible origin.

[REFERENCES]
Image A: {角色A} silhouette, {剪影特征列表} only; exclusive to the {角色A身份}.
Image B: {角色B} silhouette, {剪影特征列表} only; exclusive to the {角色B身份}.
Keep the {角色数} silhouettes separate and unmerged.

[CONTINUITY]
Keep role identity, count, {contact-state 描述，如 hand-contact state}, effect origin, screen direction, {arena}, and spatial result consistent.
{distance logic}; screen sides are composition only, never separation. {contact vocabulary}.
Keep bodies separate from aura or impact marks. Each panel is one single action pose/state per role/object; avoid `then`, `after`, `before`, `first`, `next`, `later`, or `remains ... then`.

[COUNT LOCK]
{count lock}
{props line}: preserve only the {核心主体清单}, their contact marks, dust, rubble, and effect-origin marks.

[TEXT RULES]
Visible text: only the two quoted header lines and compact panel headers. Do not render prompt section labels, role names, entity IDs, count-lock text, notes, arrows, callouts, or annotations inside panels.

[CONSTRAINTS]
Avoid logos, watermarks, overlays, extra panels, insets, finished illustration, dense detail, panel color, duplicate/ghost entities, before-after copies, visible labels, visible entity IDs, inconsistent counts, and prop-like effect marks.

[BEATS]
Draw one storyboard panel per visual BEAT:
BEATS:
P01 / {shot tag} / {beat name}: {画面描述}.
P02 / {shot tag} / {beat name}: {画面描述}.
…（共 {N} 行，与阶段 0 节拍表逐拍对应）
```
