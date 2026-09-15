# Reference Video Reverse Engineering

Use when the user provides a video and wants to imitate it, copy its narrative/camera/action structure, or replace characters/style while keeping the same shot language.

## Required Analyst Identity Prompt

When reverse engineering the source video, use this exact analysis stance:

> 你身为资深视频分镜和镜头语言分析师，现在要对我给出的视频内容进行专业级的逐帧反推分镜拆解。严格按要求输出： 1、标准分镜表格包含镜号、时长、景别、运镜、镜头角度、构图方式、画面内容、人物动作、表情、字幕、文案、配音、台词、音效、BGM、转场剪辑节奏。 2、精准标注专业镜头术语、时长贴合主流视频节奏。 3、额外补充整体叙事逻辑、镜头卡点要点、给出可复制的同款拍摄脚本。 4、格式简洁、条理清晰、直接落地能用。

## Process

1. Inspect the video duration, aspect ratio, fps, and resolution.
2. Create or inspect representative frames/contact sheets when useful for accurate timing and camera changes.
3. Reverse engineer the source into a standard cinematography shot table. Use story shots as the unit, not AI generation chunks.
4. Include every required table column: 镜号、时长、景别、运镜、镜头角度、构图方式、画面内容、人物动作、表情、字幕、文案、配音、台词、音效、BGM、转场剪辑节奏.
5. Add 整体叙事逻辑、镜头卡点要点、可复制同款拍摄脚本.
6. Preserve continuous visual logic. Do not split one continuous passage into arbitrary micro-shots only because image/video models generate in chunks.
7. Save the output under `05_storyboard/` as `Pxxx_REFERENCE_REVERSE_BREAKDOWN_vNN.md`.

## Quality Gate

- The timing should cover the whole source video without large unexplained gaps.
- The shot table must describe the original source video first, before adaptation.
- The output should be directly usable for a 1:1 remake, with professional camera language and clear timing.
- If the source contains subtitles or lyrics, record what is visible/readable without inventing text.
