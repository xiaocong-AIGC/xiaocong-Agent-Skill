---
name: image-upscale
description: Batch upscale and clarify AI-generated images on Windows using local Real-ESRGAN. Use this skill when the user asks to upscale images, enlarge images, make AI images clearer, convert 1K images to 2K or 4K, batch process image folders, prepare images for Douyin/Xiaohongshu covers, TapNow video references, product shots, character sheets, scene assets, or other image-generation workflows.
---

# Image Upscale

Use this skill to run local Real-ESRGAN image upscaling from Codex on Windows.

## Tool location

Real-ESRGAN executable:
D:\AI\ImageUpscale\tools\realesrgan\realesrgan-ncnn-vulkan.exe

Default input folder:
D:\AI\ImageUpscale\input

Default output folder:
D:\AI\ImageUpscale\output

Main script:
D:\Codex\skills\image-upscale\scripts\upscale.ps1

## Workflow

When the user asks to upscale images, make images clearer, batch enlarge images, prepare AI-generated images for 4K use, or prepare images for TapNow, Douyin, Xiaohongshu, product assets, scene boards, or character boards, follow this workflow:

1. Check whether the input path exists.
2. Check whether images exist in the input folder.
3. Choose the correct mode:

   * photo: realistic photography, cinematic stills, real estate scenes, emotional short-drama keyframes, realistic people, interiors, street scenes.
   * product: white-background product images, props, cups, flowers, suitcases, objects, asset sheets.
   * anime: anime, cartoon, 2D stylized illustration.
   * illustration: 3D animated movie style, concept art, storyboard boards, character boards, scene boards.
   * video: animation frame sequences.
4. Use Scale 2 for faces, close-ups, emotional portraits, images that are already sharp, or images where over-sharpening would look fake.
5. Use Scale 4 for props, product assets, scene boards, environment references, white-background asset sheets, and images meant for high-resolution reference.
6. Output PNG by default.
7. Never overwrite original files.
8. Always save results into a timestamped output folder.
9. After processing, report:

   * input path
   * output path
   * mode
   * scale
   * model
   * generated file count
   * any warning

## Commands

Default realistic photo upscale:
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy Bypass -File "D:\Codex\skills\image-upscale\scripts\upscale.ps1" -InputPath "D:\AI\ImageUpscale\input" -Mode photo -Scale 4 -Format png

Safer 2x upscale for faces:
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy Bypass -File "D:\Codex\skills\image-upscale\scripts\upscale.ps1" -InputPath "D:\AI\ImageUpscale\input" -Mode photo -Scale 2 -Format png

Product or prop asset upscale:
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy Bypass -File "D:\Codex\skills\image-upscale\scripts\upscale.ps1" -InputPath "D:\AI\ImageUpscale\input" -Mode product -Scale 4 -Format png

3D animation or concept board upscale:
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy Bypass -File "D:\Codex\skills\image-upscale\scripts\upscale.ps1" -InputPath "D:\AI\ImageUpscale\input" -Mode illustration -Scale 4 -Format png

Anime or cartoon upscale:
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy Bypass -File "D:\Codex\skills\image-upscale\scripts\upscale.ps1" -InputPath "D:\AI\ImageUpscale\input" -Mode anime -Scale 4 -Format png

## User-specific judgement

For this user's workflow:

* 抖音 / 小红书封面：usually photo, Scale 2 or Scale 4.
* TapNow 视频参考图：realistic scenes use photo; 3D animated boards use illustration.
* 人物脸部近景 / 情绪封面：prefer photo, Scale 2.
* 白底道具资产：prefer product, Scale 4.
* Josh / 3D 动画电影感设定板：prefer illustration, Scale 4.
* 带中文文字的图片：warn that super-resolution may distort text. Recommend adding text later in Figma, Photoshop, Canva, or 剪映.
* Wrong faces, bad hands, wrong composition, or incorrect identity cannot be fixed by upscaling. Recommend regeneration or image editing instead.

## Trigger examples

If the user says:

* 把 input 里的图超分
* 批量放大到 4K
* 这些 GPT 图太糊了，变清楚
* 做成 TapNow 能用的高清参考图
* 小红书封面超清处理
* 白底道具图放大
* 图片 4x 放大

Use this skill.

## Output rule

After processing, always answer in Chinese and include:

1. 是否处理成功。
2. 输入目录。
3. 输出目录。
4. 使用模式。
5. 放大倍率。
6. 生成文件数量。
7. 是否有失败文件。
8. 是否建议再做二次处理。

