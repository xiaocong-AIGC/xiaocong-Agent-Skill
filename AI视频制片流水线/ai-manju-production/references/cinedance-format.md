# 视频单元：格式2（CINEDANCE 英文架构）

与格式1同单元同内容（同动作、同台词、同衔接），输出英文架构版，双格式对比测试。英文原样输出，不翻译。

## 1. 4-D 流程（双格式共用，写提示词前静默执行）

- **Deconstruct 拆解**：只提取本单元的人物、参考图、场景、道具、动作、台词、时长、首帧、空间关系；删掉集数、前情、未出场角色、制作说明。
- **Diagnose 诊断**：首帧会不会空？人物会不会晚出现？视线会不会反？左右会不会翻？镜头会不会漂移？光会不会平？参考会不会被过量文字覆盖？会不会多出人物或道具？发现风险就在对应位置加一条正向锁。
- **Develop 构建**：按下方架构顺序写；空间规则先于风格描述。
- **Deliver 交付**：只交付成品提示词；诊断与推理不进输出。

## 2. 架构（按序写，不需要的段落省略）

```text
SCENE CONTEXT        本镜发生什么，1-2句；无集数、无前情、无未出场角色
ACTIVE REFERENCES    只列本单元用到的图；每个参考=最小锚点描述+
                     "100% matches the reference"
LOCATION MAP         镜头位置与朝向、前中后景、地标、光源方向
FIRST FRAME AND SPATIAL BLOCKING
                     首帧占位；每人的屏幕位置/世界位置/朝向/视线/与地标距离
FORMAT MODE          单一长镜，或受控多shot（每个切点显式定义，硬切）
OPTICS               FOV语言（见§4）
CAMERA               机位高度/距离/侧别/运动，写成物理操作员行为
ACTION TIMING        0:00-0:03 时间块：位置+动作+镜头+道具状态+音效
PHYSICS              重量/惯性/接触；招式超现实规则（见§5）
LIGHTING             主光方向、曝光优先级、禁止平光
AUDIO                只说写定的台词；同期环境音；无字幕、无配乐
POSITIVE CONSTRAINTS 少量正向锁，紧贴它保护的规则，不堆负面清单
```

## 3. 首帧占位与空间锁

需要人物开场即在画面时：

```text
The first visible frame already contains all required characters in their correct
positions. No empty establishing frame. No delayed character reveal. The spatial
relationship is readable immediately in frame one.
```

空间与视线：每个重要主体写清屏幕位置、世界位置、与地标距离（within 1 meter / hand on the altar）、身体朝向与视线朝向分开写。禁弱词：near、around、beside、somewhere——换成可测量的关系。

## 4. OPTICS（FOV 语言，按内容选）

- 对话/情绪近景：29° short telephoto portrait（背景压缩、主体锐利、奶油虚化）；更紧用 18° classic telephoto。
- 自然动作：47° standard normal（人眼透视、无畸变、背景可读）。
- 环境动作/大场面：84° classic wide（前景放大、环境铺到画框边、直线不弯）。
- 远处观察/偷窥：8° super-telephoto observation + 前景遮挡虚化。

写成可见结果（background dissolves into soft bokeh / environment visible to frame edges），不写毫米数与光圈。多shot时每shot声明镜头性格，硬切换镜头，禁止镜内漂移；需要时加防漂移锁（如 `No part of this shot becomes wide-angle coverage.`）。

## 5. PHYSICS 动画适配

- 常规动作保物理：重量转移、脚跟着地、布料与头发延迟、武器有惯性、液体有黏性和方向。
- 招式允许超现实（二段跳、御剑、瞬移残影、能量波），但每招写清：起点、轨迹、终点、落地结果（尘土、碎石、震波）。残影、拖影、冲击帧作为可见结果写出。
- 禁：漂浮脚步、无重量武器、橡皮CG动作、无因果的位移。

## 6. 上下文隔离

成品提示词是密封的当前单元文档。禁止出现：集数、场次编号、前一单元内容、"同前""继续上次"、未出场的角色/道具/@tag、制作备注。需要前情情绪时只写：`Prior audio context only, not visual content: "line."`，且不将其可视化。

## 7. 交付前静默自检

所有列出的参考都用到了？首帧正确？每人位置与视线清楚？镜头性格选定且防漂移？光有方向？台词只有写定那句、说话时嘴动其余人嘴不动？无上下文泄漏？全英文？自检不进输出。
