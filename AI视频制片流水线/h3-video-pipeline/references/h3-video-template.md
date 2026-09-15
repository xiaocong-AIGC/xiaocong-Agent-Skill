# H3 视频提示词模板 + Suno 纯音乐提示词

参考资产：`@[storyboard ref]` = 该单元故事板；`@[char ref]` = 角色设定板（每角色一个）；`@[first frame ref]` = 多单元续接尾帧（见 h3-multi-unit-guide.md）；`@[scene ref]` = 场景图（默认不挂，见下）。

## 铁律：极简

H3 的分工是**参考图承载内容，文字只声明读图方式与表演**：

- **零场景描述**——场景在故事板里
- **零逐拍重述**——节拍在故事板面板里
- 开头读图规则**逐字保留**——这几句是实测有效的关键措辞，不改写、不"精简"、不换同义词

每多写一句成片描述，都是在和故事板抢话语权，制造漂移。忍住把 Seedance 式大段描述塞回来的冲动。

## 模板

```
Use the storyboard @[storyboard ref] as sequential shot guidance, not as a static image. Do not treat the storyboard as one image. Follow each panel as a separate beat. Use @[char ref] as character reference.

{表演引导句}:

{台词行}

{音频行}
```

### 角色引用按角色数

- **1 角色**：如上，一句 `Use @[char ref] as character reference.`
- **多角色**：每角色一句并点名：`Use @[char1 ref] as character reference for {Name A}. Use @[char2 ref] as character reference for {Name B}.` 与故事板参考图顺序一致，避免身份错位
- **0 角色**：删除该句

### 场景引用（默认不挂）

场景全由故事板承载，这是 H3 的实证用法。只有当抽卡显示**环境材质/光线明显漂移**、且回修故事板无效时，才追加：

```
Use @[scene ref] only for the environment's materials, layout and lighting; do not take characters from it.
```

### 表演/台词层

- 引导句格式：`{Name/She/He/They} {talks softly to themselves / says / narrates} while {贯穿动作}:`
- 台词逐行，语言 = 目标观众语言，行序 = 节拍顺序，与故事板 Narration 块**逐字一致**（两处不一致 H3 会二选一，口型与节拍就乱了）
- 多角色对话：行首标说话人（`{Name A}: …`）
- 无台词片：整层替换为一句表演基调（如 `The character moves with restrained, unhurried body language.`），或省略

### 音频行

- **单条片 + Suno 配乐**（默认）：`No background music, no score; dialogue and diegetic sound effects only.`
- **单条片 + H3 自配乐**（用户不想用 Suno 时）：`Background music: {一句风格描述}.`
- **多单元片**：必须禁 BGM（固定用默认写法），配乐由一条贯穿全片的 Suno 在剪辑时统一铺

### 允许的文字增量（白名单）

除模板四层外，只允许：针对上一抽具体问题的修正指令、时长/画幅参数、音频行变体。其余一律不加。

## 生成验收与定向重试

抽卡回来对照检查，按症状定位病灶——**一次只改一个变量，改上游必级联下游**：

| 症状 | 病因 | 修哪里 |
|---|---|---|
| 成片把故事板当一张静态图（翻拍板子/画中画/出现分格线） | 读图三句被改写或删减；或故事板画得太"成品" | 恢复逐字措辞；回阶段 3 强化草图感 |
| 只演完前几格就到时长 | 面板过多或台词过长 | 节拍数降一档（16→12→9→6）或删台词 |
| 角色脸/服装漂移 | 角色板可读性不足 | 回阶段 2：检查板上脸部特写与剪影是否清晰 |
| 场景走样、物件错位 | 故事板里场景画得太简 | 回阶段 3 把场景图挂进故事板参考；仍不行才在 H3 挂 @[scene ref] |
| 台词被截断/语速赶 | 台词超时 | 按语速校验删句（中 4–5 字/秒、日 6–7 音/秒、英 2–3 词/秒） |
| 节奏平、没有起伏 | 节拍时长均匀、景别单一 | 回阶段 0 重排不均匀节拍；回阶段 3 检查景别变化 |
| 收尾草率 | 收束拍时长不足 | 回阶段 0 给最后一拍加时长，故事板末格强化 |

## Suno 纯音乐提示词

给 1–2 条候选，只写风格标签串（纯音乐，无歌词）。要素顺序：

```
{流派混搭}, {情绪——与阶段 0 情绪基调同源}, {核心乐器/音色 2–4 项}, {BPM}, {能量走向}, instrumental, no vocals
```

每条候选下附一行排除项（按题材增删）：

```
Exclude Styles: vocals, lyrics, choir, {与本片情绪相反的风格词}
```

- **BPM 按小节对齐节拍网格**：4/4 下一小节 = 240 ÷ BPM 秒。选 BPM 让一小节 ≈ 单拍平均时长（BPM = 240 ÷ 单拍秒数；数值太快就对齐半小节，BPM = 120 ÷ 单拍秒数）——换镜落在小节头，卡点剪辑不用拉伸音频
- 密度参考：抒情/生活流 60–90 BPM 轻织体；标准叙事 90–120；高密度快节奏 120–160 强节拍
- 能量走向对齐全片叙事弧线，按题材选形态：如 gentle build with a warm resolving outro（抒情）/ steady pulse with a quiet suspended ending（悬念）/ rising energy with a hard final hit（高燃）
- 有台词的片，乐器避开人声频段的浓密铺陈（密集弦乐中频、人声合成垫），给语音留位置
- **多单元片只出一条 Suno 贯穿全片**，重锤/转折点对齐单元边界与收束拍——音乐连续性是掩盖单元接缝最强的胶水
