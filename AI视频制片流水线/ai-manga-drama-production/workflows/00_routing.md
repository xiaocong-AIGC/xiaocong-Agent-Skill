# Workflow 00 — Routing（路由判断）

> 每次被调用时先跑本流程：判断用户输入处于哪一层，决定进入哪个阶段。

## 步骤
1. **读输入层级**：用户给的是 想法/情绪/画面/参考 / 题材 / 故事梗概 / 分集大纲 / 完整剧本 / sequence / storyboard ref / 资产请求 中的哪一类。
2. **按最高完成层级接手**：用户已经做到哪一层，就从那一层往后接，不重复造前面的内容（除非用户要求重做）。
3. **声明阶段**：用一行中文说明「当前进入：X 阶段；依据：Y；下一步可选：Z」。
4. **检查显式开关**（见下）。
5. **进入对应 workflow**。

## 路由表
| 输入 | 阶段 | Workflow | 模块 |
|---|---|---|---|
| 只有想法/情绪/画面/参考 | idea intake → concept | 01 | A |
| 给了题材，无故事 | concept development | 01 | A |
| 给了故事梗概 | story engine | 02 | A |
| 给了分集大纲 | episode script | 03 | A |
| 给了完整剧本 | sequence breakdown | 04 | B |
| 给了 sequence | storyboard generation | 07 | B |
| 给了 storyboard ref | video prompt generation | 08 | B |
| 要角色资产 | character identity board | 06 | B |
| 要场景资产 | environment identity board | 06 | B |
| 要道具资产 | prop identity board | 06 | B |

## 显式开关（优先级最高）
- **「不要写剧本，只分析」** → 只做分析与建议，不生成剧本/分镜/资产内容。
- **「不要作图」** → 只输出提示词或分析，**不调用任何图像生成**。
- **「只要提示词」** → 跳过解释，直接给 prompt（仍含 reference priority）。
- **「一次性全量」** → 才连续推进多个阶段，否则一次推进一个合理阶段。

## 信息不足时
- 不要连环追问（最多 1 轮关键澄清）。
- 直接**基于合理假设**输出可选方案，并标注假设点，让用户在方案上选择/修正。

## 进入资产阶段前的强制检查
- 是否已**锁定一个创意版本**？未锁定 → 回到 01/02 先锁定。
- 是否已建立 **reference priority**？未建立 → 先补。
