# GPT Image 2.0 Character Identity Board Reference

Use this reference when the user needs original character design assets before storyboard and Seedance 2.0 generation.

The model output target is an artistic 16:9 CHARACTER IDENTITY BOARD that locks identity, silhouette, costume/anatomy, expressions, palette, props, and notes. It is not a generic turnaround sheet. It should adapt to the selected visual medium and style.

## Intended Workflow

Do not jump straight to a full board prompt when the user has not approved the character direction.

1. Analyze the script, shot list, reference-video breakdown, genre, audience, character function, emotional arc, and visual world.
2. Propose the four required variables for each major character:
   - `CHARACTER SEED`
   - `AGE / BODY TYPE`
   - `VISUAL MEDIUM`
   - `STYLE`
3. Add `OTHER DETAILS - OPTIONAL` only when useful for costume, prop, color, identity, personality, anatomy, or presentation.
4. Ask the user to choose or revise the variables.
5. After approval, generate the complete GPT Image 2.0 prompt in the strict format below.

## Four Variables

```text
[CHARACTER SEED]:
Core identity idea, role, inner contradiction, visual hook, social world, or story function.

[AGE / BODY TYPE]:
Age impression, build, posture, physical presence, proportions, creature anatomy, or movement language.

[VISUAL MEDIUM]:
Rendering language. Examples should be used for internal selection, not copied into the final prompt unless selected.

[STYLE]:
Aesthetic direction. Examples should be used for internal selection, not copied into the final prompt unless selected.

[OTHER DETAILS - OPTIONAL]:
Extra constraints, mood, outfit hints, props, colors, themes, personality hints, presentation preferences.
```

## Final Prompt Rule

When producing the final GPT Image 2.0 prompt, remove placeholder guidance and example lists. Keep only the selected values and the production instructions. The user-provided reference title says "Remove the examples"; follow that in final outputs. Always include the standalone line `quality: "high"` near the top of the final prompt.

## Strict Prompt Skeleton

```text
GPT Image 2 Prompt:

quality: "high"

Create a fully original, copyright-safe character and present them as an artistic CHARACTER IDENTITY BOARD.

[CHARACTER SEED]:
[approved character seed]

[AGE / BODY TYPE]:
[approved age/body type]

[VISUAL MEDIUM]:
[approved visual medium]

[STYLE]:
[approved style]

[OTHER DETAILS - OPTIONAL]:
[approved optional details, or remove this section if empty]

Invent everything else:
character name, alias or title, role, personality traits, emotional tone, visual theme, outfit design or body design, color palette, signature prop or signature biological feature, recognizable silhouette, pose language, small identity notes.

Originality rules:
The character must not resemble any existing anime, manga, game, movie, comic, celebrity, athlete, mascot, franchise character or known copyrighted creature.
Do not copy recognizable IP elements, costumes, hairstyles, uniforms, weapons, logos, symbols, color combinations, silhouettes, powers or signature visual traits.
Avoid fan-art aesthetics.
Create a fresh visual identity from scratch.

Character authenticity rules:
Create the character with a strong sense of individuality and non-generic design.
Avoid overly polished, overly idealized or repetitive visual features that make the character feel like a default AI-generated face, stock design, cloned archetype or generic creature.

If the character is human or humanoid:
Use distinctive facial structure, subtle asymmetry, natural variation, small imperfections and believable proportions.
The character should feel specific, grounded and recognizably individual.
If the character is attractive, keep the appeal natural, tasteful and appropriate to the chosen visual medium.

If the character is stylized:
Preserve uniqueness through original shape language, expressive proportions, distinctive features, posture and clear personality cues.
Avoid default genre clichés and repeated beauty standards.

If the character is non-human:
Preserve uniqueness through original anatomy, believable biological structure, distinctive proportions, functional features, surface texture and clear personality cues.
Do not make it feel like a generic mascot, pet monster or stock fantasy creature.

Medium and style control:
[VISUAL MEDIUM] controls the rendering language.
[STYLE] controls the aesthetic direction.
The character identity board format is only the presentation format.
The presentation must adapt to [VISUAL MEDIUM] and [STYLE], not override them.
Use visual traits that belong naturally to the selected medium.

Create an artistic 16:9 CHARACTER IDENTITY BOARD.

The board should feel like a curated visual identity presentation, not a generic turnaround sheet.

Board content:
large full-body main character view, neutral full-body view, back view, profile view, secondary attitude pose, 4 to 6 face or expression studies, outfit detail close-ups or anatomy detail close-ups, key prop close-up or signature feature close-up, small silhouette or shape study, color palette strip, short readable identity notes.

Layout:
asymmetrical, elegant, visually memorable, large empty space, clean separation between all views, no overlapping bodies, no cropped faces, no hidden limbs, no clutter.

Text on the board may include:
character name, alias, role, personality traits, core theme, signature prop or feature, color notes.

Background:
pure white or soft off-white, minimal clean graphic design, no environment, no logo, no watermark.

Prioritize:
accurate visual medium, strong unique identity, readable outfit design or anatomy design, clear personality, original character design, natural or stylized individuality as appropriate, believable uniqueness, non-repetitive character design, artistic identity-board presentation.
```

## Strong Reference Prompt With Variable Guidance

Keep this as a concrete style and density reference. It is designed to adapt to many styles and visual media. For final generation, remove the example lists and fill the variables with the user's approved choices.

```text
GPT Image 2 Prompt (Remove the examples):

quality: "high"

Create a fully original, copyright-safe character and present them as an artistic CHARACTER IDENTITY BOARD.

[CHARACTER SEED]:
Enter the core idea here.

[AGE / BODY TYPE]:
Enter age impression, body type, posture, physical presence or creature anatomy here.

[VISUAL MEDIUM]:
Enter the exact rendering medium here.

Examples:
realistic cinematic character design, fashion editorial photography look, semi-realistic painterly realism, modern 3D animation character design, 2D anime character design, graphic novel illustration, watercolor storybook illustration, flat vector poster illustration, oil-painting-inspired character art, ink and wash illustration, semi-realistic creature concept art.

[STYLE]:
Enter the aesthetic direction here.

Examples:
urban street fashion, luxury sports editorial, dark cinematic noir, soft melancholic artbook mood, post-apocalyptic survival wear, retro-future fashion, minimalist high-fashion, cozy slice-of-life, gritty underground music-video energy, elegant fantasy costume design, poetic coastal fantasy, bioluminescent natural history mood.

[OTHER DETAILS - OPTIONAL]:
Enter any extra details, constraints, mood, outfit hints, props, colors, themes, personality hints or presentation preferences here.

Invent everything else:
character name, alias or title, role, personality traits, emotional tone, visual theme, outfit design or body design, color palette, signature prop or signature biological feature, recognizable silhouette, pose language, small identity notes.

Originality rules:
The character must not resemble any existing anime, manga, game, movie, comic, celebrity, athlete, mascot, franchise character or known copyrighted creature.
Do not copy recognizable IP elements, costumes, hairstyles, uniforms, weapons, logos, symbols, color combinations, silhouettes, powers or signature visual traits.
Avoid fan-art aesthetics.
Create a fresh visual identity from scratch.

Character authenticity rules:
Create the character with a strong sense of individuality and non-generic design.
Avoid overly polished, overly idealized or repetitive visual features that make the character feel like a default AI-generated face, stock design, cloned archetype or generic creature.

If the character is human or humanoid:
Use distinctive facial structure, subtle asymmetry, natural variation, small imperfections and believable proportions.
The character should feel specific, grounded and recognizably individual.
If the character is attractive, keep the appeal natural, tasteful and appropriate to the chosen visual medium.

If the character is stylized:
Preserve uniqueness through original shape language, expressive proportions, distinctive features, posture and clear personality cues.
Avoid default genre clichés and repeated beauty standards.

If the character is non-human:
Preserve uniqueness through original anatomy, believable biological structure, distinctive proportions, functional features, surface texture and clear personality cues.
Do not make it feel like a generic mascot, pet monster or stock fantasy creature.

Medium and style control:
[VISUAL MEDIUM] controls the rendering language.
[STYLE] controls the aesthetic direction.
The character identity board format is only the presentation format.
The presentation must adapt to [VISUAL MEDIUM] and [STYLE], not override them.
Use visual traits that belong naturally to the selected medium.

Create an artistic 16:9 CHARACTER IDENTITY BOARD.

The board should feel like a curated visual identity presentation, not a generic turnaround sheet.

Board content:
large full-body main character view, neutral full-body view, back view, profile view, secondary attitude pose, 4 to 6 face or expression studies, outfit detail close-ups or anatomy detail close-ups, key prop close-up or signature feature close-up, small silhouette or shape study, color palette strip, short readable identity notes.

Layout:
asymmetrical, elegant, visually memorable, large empty space, clean separation between all views, no overlapping bodies, no cropped faces, no hidden limbs, no clutter.

Text on the board may include:
character name, alias, role, personality traits, core theme, signature prop or feature, color notes.

Background:
pure white or soft off-white, minimal clean graphic design, no environment, no logo, no watermark.

Prioritize:
accurate visual medium, strong unique identity, readable outfit design or anatomy design, clear personality, original character design, natural or stylized individuality as appropriate, believable uniqueness, non-repetitive character design, artistic identity-board presentation.
```

## Case Analysis

The provided Vessa Morivan board demonstrates the intended presentation logic:

- A large full-body hero view dominates the left side, giving immediate silhouette, posture, and personality.
- Smaller neutral front, back, and profile views lock continuity for later storyboard and video generation.
- Expression studies show identity across mood changes instead of repeating one perfect face.
- Detail close-ups isolate craft decisions such as accessories, fabric panels, tattoos, tools, anatomy, or surface features.
- A signature prop or biological feature receives its own labeled close-up so it can be reused as a continuity anchor.
- Silhouette studies reduce the character into readable dark shapes, useful for Seedance prompts and storyboard staging.
- The color palette strip acts as a repeatable visual identity key.
- Notes, alias, role, personality, and core theme are short and readable, giving the image useful text without turning it into a dense document.
- The board uses clean negative space and separation; bodies do not overlap, faces are not cropped, limbs are not hidden.

The important lesson is not the specific fantasy-steampunk content. The lesson is the role of the board: it creates a reusable identity anchor before storyboards and video prompts.

## Adaptation Rules

When adapting this format to the user's project:

1. Derive character variables from story function, emotional arc, reference-video behavior, and world aesthetics.
2. Recommend multiple variable options only when there are genuine creative forks. Otherwise provide one strong recommendation and note editable alternatives.
3. Keep the design fully original and copyright-safe, even when the user references an existing style or video.
4. Preserve individuality through asymmetry, proportions, posture, gesture, specific props, imperfect details, and clear personality cues.
5. Match the visual medium exactly. A 2D anime board, fashion editorial board, painterly realism board, and 3D animation board should not share the same face logic or rendering habits.
6. Do not invent a generic attractive person. Design from character history, social role, practical costume logic, and body language.
7. Use the board to create continuity anchors that will later repeat in storyboard prompts and Seedance prompts.

## Variable Suggestion Template

```text
【角色设定板变量建议】
角色：
剧情/视频功能：

CHARACTER SEED：

AGE / BODY TYPE：

VISUAL MEDIUM：

STYLE：

OTHER DETAILS - OPTIONAL：

建议理由：

可选替代方向：
1.
2.
```

## Seedance Bridge

After a character board is approved or generated, extract the following into Seedance planning:

```text
身份锚点：角色名、角色功能、社会身份、核心矛盾
脸部锚点：脸型、眉眼、鼻梁、嘴唇、肤色、瑕疵、发型
身体锚点：身高体态、肩颈、走路重心、惯用姿势
服装锚点：主服装、鞋、外套、饰品、颜色、材质
道具锚点：签名道具或生物特征
表演锚点：眼神习惯、手部习惯、紧张时动作、放松时动作
色彩锚点：主色、辅助色、金属/布料/皮肤/发光色
```

Use these anchors in every Seedance prompt involving the character, especially across multiple 4-15 second segments.
