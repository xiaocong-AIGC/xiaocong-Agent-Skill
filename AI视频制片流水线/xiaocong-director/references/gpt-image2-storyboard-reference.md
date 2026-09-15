# GPT Image 2.0 Storyboard Reference

Use this reference when the user needs GPT Image 2.0 storyboard assets before Seedance 2.0 generation.

The model output target is a rough cinematic storyboard sheet for planning motion, staging, transitions, and camera energy. It is not concept art. The prompt should preserve concrete scene content, specific action progression, and directorial language.

## Strict Prompt Skeleton

Use the bracketed sections in this order:

```text
GPT Image 2 Storyboard Prompt:

quality: "high"

[STORYBOARD]:
TITLE:
TYPE:
ASPECT RATIO:
PANEL COUNT:
GRID:

[LOOK]:

[DETAIL LEVEL]:

[PACE / MOTION LOGIC]:

[COLOR LOGIC]:

[ANNOTATION KEY]:

[ARROW / MARK STYLE]:

[WORLD]:

[CAST]:

[DIRECTORIAL LANGUAGE]:

[OPENING / ENDING LOGIC]:

[BOARD RULES]:

[SHOT NOTE RULES]:

[SEQUENCE FORMAT]:
[NUMBER] - [SHOT NAME]
SHOT NOTE:
[Short cinematic note]
camera:
action:
focus:
------------------------------------------------

[SEQUENCE]:
```

Do not omit sections unless the user explicitly asks for a shorter prompt.

## Mandatory Storyboard Rules

- Base image: grayscale rough pencil/ink storyboard.
- Always include the standalone line `quality: "high"` near the top of the GPT Image 2 storyboard prompt.
- Purpose: planning, staging, motion readability, animatic preparation.
- Avoid: polished concept art, production illustration, texture rendering, material rendering, decorative linework, fashion-detail rendering.
- Characters: semi-abstract, gesture-driven, simplified faces and costumes, strong silhouette readability.
- Environments: indicated with minimum shapes needed for orientation and interaction.
- Annotations: visible production notes over the board, thin hand-drawn marks, readable but not covering key silhouettes.
- Panel numbers: large and readable in the top-left corner.
- Each panel: one clear action beat.
- Storyboard sheet: no dialogue, subtitles, logos, watermarks, decorative UI, or timestamps. Dialogue can exist in the separate text breakdown and Seedance prompt.

## Annotation Key

Use this color key unless the user provides another one:

```text
RED = camera / lens / framing / camera movement
BLUE = body movement / path / turn / jump / fall / pose flow
GREEN = core object path / shape formation / transformation flow / prop movement
ORANGE = burst / snap / impact / vibration / visual accent
PURPLE = timing / acceleration / hold / speed change
```

Adapt the GREEN channel to the scene's main action system:

- Ribbon scene: ribbon path / shape formation.
- Real-estate scene: walking path / door opening / gaze path / room reveal.
- Dialogue scene: eye-line exchange / emotional pressure path / object handling.
- Product scene: product movement / feature reveal / texture sweep.
- Fight scene: weapon path / impact arc / defensive movement.

## Panel Count Logic

- 12 panels, 3x4: transformation, action choreography, complex visual motifs, heavy transition design.
- 8 panels, 2x4 or 4x2: dialogue scene with blocking, emotional escalation, strong character business.
- 6 panels, 2x3 or 3x2: single-location scene with one clear movement arc.
- 4 panels, 2x2: atmosphere, location reveal, simple before/after beat.

## Strong Reference Prompt

Keep this example as a concrete style and density reference. Future prompts should not merely copy the structure; they should match this level of specificity in motion logic, world rules, cast description, directorial language, and per-panel camera/action/focus writing.

```text
GPT Image 2 Storyboard Prompt:

quality: "high"

[STORYBOARD]:
TITLE: SERALYA VEIL - RIBBON STORM BLOOM
TYPE: OTHER / FANTASY PERFORMANCE / TRANSFORMATION
ASPECT RATIO: 16:9
PANEL COUNT: 12
GRID: 3x4

[LOOK]:
Create a rough cinematic storyboard focused entirely on planning, staging and motion readability rather than illustration quality.
Use loose hand-drawn pencil and ink strokes, quick construction lines, gesture drawing and simplified masses.
Characters and environments should be built from basic forms rather than finished drawings.
Keep characters semi-abstract with minimal facial information and simplified costumes.
Indicate environments rather than illustrating them.
Represent stage space, suspended crystal drops, floor plane, haze layers and floating ribbon masses using only the minimum shapes required for orientation and interaction.
Allow rough unfinished strokes, broken lines, visible construction and sketch overlap.
Do not clean the drawing.
Prioritize timing, motion, staging and readability over appearance.
Avoid texture rendering, materials, lighting, clothing folds, decorative linework and production illustration quality.
The storyboard should feel like rough animation thumbnails, action planning boards, animatic preparation sketches and first-pass previs notes rather than concept art.
No timestamps.

[DETAIL LEVEL]:
low-to-medium detail
semi-mannequin characters
gesture-driven poses
strong silhouette readability

[PACE / MOTION LOGIC]:
This sequence must feel fast-paced, escalating and continuously in motion.
Favor active transitions over still reveals.
Avoid long holds.
Almost every panel should contain visible movement, transformation or camera energy.
The choreography is ribbon-first: the ribbons are the main action system and constantly generate new shapes in rapid succession.
Each formed shape should quickly evolve into the next one instead of settling.

[COLOR LOGIC]:
Keep the base storyboard grayscale.
All annotations must follow the color key below.

[ANNOTATION KEY]:
RED = camera / lens / framing / camera movement
BLUE = body movement / path / turn / jump / fall / pose flow
GREEN = ribbon path / shape formation / transformation flow / object movement
ORANGE = burst / snap / impact / vibration / visual accent
PURPLE = timing / acceleration / hold / speed change

[ARROW / MARK STYLE]:
Draw annotation arrows and marks as visible production notes over the storyboard.
Use thin hand-drawn arrows rather than clean vector graphics.
Use curved arrows for spins, arcs, turns, orbital motion and ribbon flow.
Use straight arrows for direct movement and push-in direction.
Use dashed arrows for anticipated motion and trailing ribbon continuation.
Keep annotations readable and functional.
Do not cover face, hands or key silhouette reads.

[WORLD]:
A dark ceremonial performance space suspended in emptiness.
The floor is minimal and mostly implied.
Hanging crystal droplets, soft haze and floating particles frame the space.
The environment should feel like a sacred void built only to showcase motion, scale and transformation.
Keep the world minimal so the ribbon action reads clearly.

[CAST]:
Seralya Veil, mythic ribbon dancer and living choreography performer.
Ethereal female figure with a ribbon-made dress, circular halo silhouette and long flowing ribbon extensions.
Her movement language is graceful, weightless and highly controlled, but the ribbon behavior is faster and more aggressive than her body.
She does not fight.
She performs, transforms and commands the space through elegant choreography.

[DIRECTORIAL LANGUAGE]:
Use clearly cinematic framing with strong shot variety and progressive escalation.
Begin with an immediate hook.
Favor push-throughs, fast arcs, low angles, overhead spins, profile drifts, foreground ribbon wipes and near-lens ribbon passes.
Let ribbons create transitions between shots.
Keep readability strong, but make the camera feel increasingly immersed inside the performance.
The board should feel like premium fantasy music-video previs with strong silhouette design and continuous shape evolution.

[OPENING / ENDING LOGIC]:
Begin with immediate motion and visual intrigue.
Escalate continuously.
Prefer active endings rather than calm resolution.
End on a full butterfly-wing reveal that still feels alive, unstable and in motion.

[BOARD RULES]:
Use large readable panel numbers in the top-left corner.
Keep shot subtitles and notes readable.
Each panel must show one clear action beat.
Preserve spatial continuity.
Avoid repeated camera angles unless intentional.
Keep the sheet readable at a glance.
No dialogue, subtitles, logos, watermarks or decorative UI.

[SHOT NOTE RULES]:
Each panel includes a short note explaining purpose, transition value or visual idea.
Keep notes brief.

[SEQUENCE FORMAT]:
[NUMBER] - [SHOT NAME]
SHOT NOTE:
[Short cinematic note]
camera:
action:
focus:
------------------------------------------------

[SEQUENCE]:
1 - RIBBON HOOK
SHOT NOTE:
Start with instant motion, not stillness.
camera:
Tight wide shot with fast push-in through hanging crystals.
action:
A ribbon cocoon is already twisting in midair as loose strands lash outward around it.
focus:
Immediate hook, unstable energy, mystery in motion.
------------------------------------------------
2 - PRESSURE BUILD
SHOT NOTE:
Show tension building fast.
camera:
Medium-close frontal shot, closer lens, slight handheld drift.
action:
The cocoon compresses and pulses as ribbon bands tighten, slide and begin splitting apart.
focus:
Acceleration, containment, imminent break.
------------------------------------------------
3 - BURST THROUGH
SHOT NOTE:
First major velocity hit.
camera:
Aggressive three-quarter angle from below, push-through into the burst.
action:
The cocoon explodes open in streaking ribbon arcs that slice past the lens.
focus:
Speed, depth, transition energy.
------------------------------------------------
4 - SERALYA IGNITES
SHOT NOTE:
Hero reveal without slowing down.
camera:
Medium hero shot with fast arc around her.
action:
Seralya appears inside the burst and whips one arm outward, sending ribbon trails into a circular sweep.
focus:
Identity, grace, control initiating chaos.
------------------------------------------------
5 - SPIRAL ASCENT
SHOT NOTE:
Turn the space vertical.
camera:
Low-angle rising shot spiraling upward around Seralya.
action:
Ribbon trails coil around her into a fast vertical spiral tower as she lifts and turns.
focus:
Height, rotation, upward energy.
------------------------------------------------
6 - BLOOM SNAP
SHOT NOTE:
First large shape change with no pause.
camera:
Overhead three-quarter wide shot.
action:
The spiral tower snaps open into a giant flower-like bloom that expands in concentric petal-ribbons.
focus:
Graphic clarity, fast transformation, radial force.
------------------------------------------------
7 - THROUGH THE PETALS
SHOT NOTE:
Immerse the camera inside the form.
camera:
Close moving shot passing between petals and ribbon layers.
action:
Seralya turns at the center while petal-ribbons fold, wipe and reform around the camera path.
focus:
Immersion, close passes, flowing transitions.
------------------------------------------------
8 - MANDALA SPIN
SHOT NOTE:
Shift from floral to sacred geometry.
camera:
Centered wide shot that begins symmetrical, then starts orbiting.
action:
The bloom reorganizes into a rotating mandala of layered ribbon rings while Seralya performs a controlled central spin.
focus:
Geometric order, layered motion, rotational rhythm.
------------------------------------------------
9 - CALLIGRAPHY BREAK
SHOT NOTE:
Destroy the symmetry into expressive motion.
camera:
Medium shot with slight dutch tilt and quick reframing.
action:
The mandala tears apart into long calligraphic ribbon strokes that whip around Seralya in looping characters and spirals.
focus:
Expressive line energy, fast unraveling.
------------------------------------------------
10 - RIBBON STORM
SHOT NOTE:
Peak camera interaction.
camera:
Dynamic push-through with multiple foreground passes and partial occlusion.
action:
Calligraphic trails multiply into a ribbon storm, racing toward camera, wrapping across frame and carving rapid shapes in space.
focus:
Velocity, density, lens interaction, controlled chaos.
------------------------------------------------
11 - WING ASSEMBLY
SHOT NOTE:
Build the final silhouette while motion continues.
camera:
Rear three-quarter shot opening into wider framing.
action:
The storm curves behind Seralya and rapidly assembles into butterfly-wing structures as she rises and opens both arms.
focus:
Formation clarity, majestic buildup, silhouette power.
------------------------------------------------
12 - LIVING BUTTERFLY REVEAL
SHOT NOTE:
Final payoff, but still active.
camera:
Wide frontal hero shot, slight low angle, subtle push-in.
action:
Massive ribbon butterfly wings fully spread behind Seralya while loose strands, crystal droplets and residual trails continue circling through frame.
focus:
Iconic final image, beauty in motion, active ending.
```

## Case Analysis

What makes the reference strong:

- It defines the image as a production storyboard before describing the fantasy subject.
- It repeats the rough-drawing constraint in multiple ways, preventing GPT Image 2.0 from drifting into polished illustration.
- It separates the main action system from the performer. Seralya moves gracefully; the ribbons move faster and more aggressively. This contrast creates readable choreography.
- It uses progression rather than isolated images: cocoon, pressure, burst, reveal, spiral, bloom, petal pass, mandala, calligraphy, storm, wing assembly, living reveal.
- Each panel has a specific camera decision and a specific action beat.
- The color annotation key maps directly to later video prompts: RED becomes camera language, BLUE becomes body performance, GREEN becomes object/action path, ORANGE becomes impact accents, PURPLE becomes timing.
- The ending is active, not a static poster pose. This is important for video generation because Seedance needs continuing motion.

## Adaptation Rules

When adapting this format to a user's script:

1. Replace the title, type, world, cast, and main action system with the user's content.
2. Keep the rough storyboard LOOK unless the user specifically wants polished concept art.
3. Convert the segment's dramatic arc into a visual escalation sequence.
4. Make GREEN represent the dominant motion carrier in the scene.
5. Keep each panel to one readable action beat.
6. Use panel notes to explain transition value, visual purpose, or emotional function.
7. Do not place dialogue in the storyboard image. Put dialogue delivery in the paired text breakdown and Seedance prompt.
8. End with a frame that is useful for image-to-video continuation: still alive with motion, not a dead stop.

## Seedance Bridge

After the storyboard prompt is written, convert the sheet into Seedance planning fields:

```text
RED annotations -> 运镜 / 镜头距离 / 机位 / 镜头速度 / 近镜头遮挡
BLUE annotations -> 人物走位 / 姿态流 / 面部反应 / 手部动作 / 身体重心
GREEN annotations -> 主视觉物体路径 / 空间运动 / 转场承载物
ORANGE annotations -> 爆点 / 撞击 / 视觉强调 / 情绪峰值
PURPLE annotations -> 加速 / 停顿 / 节奏变化 / 动作压缩与释放
```

Use the storyboard as visual planning. The final Seedance prompt should still be a natural cinematic scene description, not a mechanical list of arrows.
