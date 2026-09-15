# AI视频提示词

按视频模型划分的提示词撰写规范。这类 skill 不管流程，只管"这个模型的提示词该怎么写"，通常配合 [AI视频制片流水线](../AI视频制片流水线/) 里的流程 skill 使用。

| Skill | 目标模型 | 说明 |
|---|---|---|
| `seedance-prompt-zh` | 即梦 Seedance 2.0 | 中文提示词指南：@引用语法、运镜复刻、特效模仿、视频延长、视频编辑、音乐卡点、电商广告、短剧创作、科普教育 |
| `seedance-prompt-en` | 即梦 Seedance 2.0 | 上一条的英文版本，覆盖相同场景 |
| `h3-prompt-writing` | MiniMax H3 | T2VA / I2VA / FL2VA / L2VA / Ref2VA 五种模式的提示词结构，`integrated_multimodal_description`、`overall_soundscape`、`non_diegetic_music` 三段写法，关键帧对齐与图片/视频/音频引用标签定义 |
| `kling-ai-video-prompt-director` | 可灵 Kling AI | 文生视频、图生视频、首尾帧、多镜头、自定义多镜头、Kling 3.0、3.0 Omni、O1、Elements、运动控制。把想法/剧本/故事板转成带主体、动作、镜头、光线、连续性与负面约束的导演式提示词 |
