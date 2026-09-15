# Seedance 2.0 Final Video Prompt Reference

Use this reference when the character identity board and GPT Image 2.0 storyboard sheet already exist and the user needs the final Seedance 2.0 video prompt.

This is the current Seedance prompt style for this skill. Do not use older generic Seedance templates when producing the final video prompt. The prompt should be natural, specific, and production-facing, with concrete reference usage and visible performance logic.

## Strict Prompt Skeleton

```text
Seedance 2.0 Prompt:

Use @[storyboard ref] as the storyboard reference. Follow the storyboard shot-by-shot, preserving panel order, framing progression, camera rhythm, transformation flow and escalation. Do not render any storyboard artifacts in the final video. Do not render colored annotations, arrows, motion lines, handwritten notes, labels, panel numbers, borders, timing marks, sketch overlays, text or UI elements from the storyboard image.

Use @[character ref] as the character reference. Preserve strict identity consistency, [character identity anchors].

Create a [duration] [pace] cinematic [genre / format] video in [visual medium / render style].

Environment: [world / location / atmosphere / particles / weather / background logic].

Performance logic: [the character is active, not static]. [Explain how body action drives the main visual system]. [Define body-to-object cause and effect, follow-through, overlapping motion, and reaction logic].

Body motion progression: [beat 1] -> [beat 2] -> [beat 3] -> [beat 4] -> [beat 5] -> [final beat].

[Main visual-system] logic: [how the main visual element evolves from form to form, without settling].

Motion language: [body style], [footwork], [weight shifts], [torso/arm/hand/face behavior], [main visual-system motion], [near-lens passes], [wipes], [rotations], [trails].

Pacing: [continuous escalation / emotional pacing]. No [specific unwanted pacing or staging failure]. No [static or mannequin behavior]. No [effect-only motion while character remains frozen].

Final reveal: [final image remains alive and active]. [Character still moves subtly]. [Main visual system continues moving]. [Environment continues reacting].
```

## Required Rules

- Open by naming the storyboard reference and the character reference.
- Explicitly tell Seedance to follow storyboard shot order, framing progression, camera rhythm, transformation flow, and escalation.
- Explicitly exclude storyboard artifacts: colored annotations, arrows, motion lines, handwritten notes, labels, panel numbers, borders, timing marks, sketch overlays, text, and UI elements.
- Preserve character identity from the character board with concrete anchors: costume, silhouette, body proportions, face type, posture, signature prop/feature, emotional presence.
- The body must drive the action. Do not allow the character to remain frozen while effects move around them.
- Use cause and effect: wrist sweep moves fabric, shoulder turn drags hair, foot pivot changes weight, torso arch opens the visual form, eye-line changes the emotional beat.
- Describe delayed follow-through and overlapping motion when cloth, hair, ribbons, smoke, particles, water, doors, props, or environmental elements are involved.
- Use a progression chain with arrows or clear sequencing so the model understands how the clip evolves.
- End with an active image that can continue, not a dead poster pose.


## Performance Density Rules

When writing Seedance 2.0 final prompts, enrich performance without changing the strict prompt structure.

Add density inside existing fields:
- `Performance logic`: describe intention, emotional control, body-to-object causality, and visible reaction.
- `Body motion progression`: include micro-actions in sequence, such as gaze shift, chin tuck, wrist pressure, finger tension, shoulder stability, breath control, and prop reaction.
- `Motion language`: describe posture, weight shift, hand path, facial behavior, mouth movement, clothing follow-through, hair movement, and object friction.
- `Dialogue and lip-sync` when dialogue exists: include tone, speed, volume, pause, stress words, mouth intent, and listener or self-reaction.
- `Pacing`: define where the beat accelerates, where it holds, and where the emotional weight lands.

Good performance writing:
The index finger lands first, then the wrist settles; her palm pushes the phone sideways with calm pressure, not panic. Her eyes move from the phone to the camera before she speaks. Her jaw tightens slightly on the risk line, then softens before the protective reminder.

Weak performance writing:
She pushes the phone away and looks serious.

Rules:
- Keep all performance detail visible, physical, and filmable.
- Do not overload one beat with too many actions.
- Do not contradict the storyboard panel order.
- Do not turn practical short-video acting into theatrical drama.
- Do not generate readable text, UI, subtitles, labels, or contract clauses unless the user explicitly wants generated text.
## Strong Reference Prompt

Keep this example as a concrete style and density reference. Future prompts should match its specificity: reference usage, artifact cleanup, identity preservation, body-driven motion, transformation sequence, pacing bans, and active final reveal.

```text
Seedance 2.0 Prompt:

Use @[storyboard ref] as the storyboard reference. Follow the storyboard shot-by-shot, preserving panel order, framing progression, camera rhythm, transformation flow and escalation. Do not render any storyboard artifacts in the final video. Do not render colored annotations, arrows, motion lines, handwritten notes, labels, panel numbers, borders, timing marks, sketch overlays, text or UI elements from the storyboard image.

Use @[character ref] as the character reference. Preserve strict identity consistency, ribbon-made costume, circular halo silhouette, ethereal beauty, dancer proportions and elegant mythic presence.

Create a 15-second fast-paced cinematic fantasy performance video in a modern stylized 3D animated feature look with painterly rendering, delicate iridescent materials and expressive ribbon motion.

Environment: dark sacred void suspended in emptiness, soft haze, floating particles and hanging crystal droplets.

Performance logic: Character is not a static center pose. Her body actively drives the ribbon choreography. Every ribbon transformation must be triggered by visible full-body dance actions: stepping, pivoting, spinning, arching backward, sweeping both arms, twisting the torso, rising onto one foot, turning through profile, leaping lightly and descending into the next motion. Ribbons react to her shoulders, wrists, hips, spine, hair and dress, with delayed follow-through and overlapping motion.

Body motion progression: cocoon burst reveals her already turning -> arm whip pulls ribbons into a circular sweep -> full-body spiral turn lifts her upward -> torso arch and arm expansion snap the bloom open -> controlled spin reorganizes the mandala -> sharp pivot breaks it into calligraphic strokes -> traveling turn and sweeping arms drive the ribbon storm -> rising back-arch and open-arm rotation assemble the butterfly wings.

Ribbon logic: ribbons move faster and more aggressively than her body, continuously reshaping the space. Ribbon forms evolve rapidly through cocoon burst -> spiral tower -> flower bloom -> rotating mandala -> calligraphic strokes -> ribbon storm -> butterfly wing reveal. Every shape is constructed entirely from her ribbons, quickly transforming into the next without settling or long holds.

Motion language: graceful controlled dance body, active footwork, visible weight shifts, elegant torso curves, expressive arm paths, high-energy ribbon choreography, whip arcs, delayed follow-through, layered rotations, flowing trails, near-lens ribbon passes and immersive ribbon wipes.

Pacing: continuous escalation. No slow buildup. No calm posing. No mannequin-like floating. No static center hold. No scene where only the ribbons move while Seralya remains frozen. Her pose, silhouette and body orientation must keep changing throughout the shot.

Final reveal: the butterfly-wing reveal remains alive and active. Character is still rotating subtly through the pose, arms opening, torso lifted, hair and ribbon dress flowing, wing layers pulsing, orbiting trails moving and crystal droplets drifting.
```

## Case Analysis

What makes the reference strong:

- It treats the storyboard image as planning reference only, then aggressively excludes storyboard artifacts from the final render.
- It uses a character reference as an identity lock, not just a loose style guide.
- It specifies video duration, pace, genre, render style, material behavior, and expressive motion in one clear sentence.
- It separates environment from performance logic, preventing the scene from becoming a vague fantasy background.
- It states the most important failure mode directly: the character must not become a static center pose while ribbons move independently.
- It makes the motion causal. Every transformation is triggered by visible body actions.
- It defines body motion progression and ribbon transformation progression separately, so the character and visual system remain synchronized but not identical.
- It uses negative pacing/staging bans: no slow buildup, no calm posing, no mannequin-like floating, no static center hold, no effect-only motion.
- The final reveal remains active, which helps Seedance generate a living end frame rather than a frozen poster.

## Adaptation Rules

When adapting this format to the user's project:

1. Replace `@[storyboard ref]` and `@[character ref]` with the actual素材引用 syntax the user will use, such as `@故事板1` and `@角色设定1`.
2. Preserve the opening cleanup sentence. It is essential because storyboard images contain arrows, labels, panel numbers, and notes.
3. Replace identity anchors with the character-board anchors: face, body, costume/anatomy, silhouette, prop, posture, emotional presence.
4. Replace environment with the actual scene world from the script or storyboard.
5. Replace performance logic with the character's real behavior system. Examples:
   - Dialogue scene: eye-line shifts, breath control, hand tension, seated posture changes, listener reactions.
   - Real-estate scene: walking path, door opening, gaze direction, hand gesture, room reveal, body orientation toward space.
   - Product scene: hand interaction, product rotation, texture sweep, light catch, prop movement.
   - Action scene: footwork, defensive weight shift, weapon path, impact response, recovery motion.
6. Replace visual-system logic with the scene's dominant moving element: ribbons, doors, curtains, smoke, water, papers, light beams, crowd flow, product parts, camera occluders.
7. Keep the pacing bans specific to the risk of the scene. If the common failure is stiff dialogue, ban frozen faces and locked shoulders. If the risk is effect-only motion, ban static bodies.
8. Keep the final reveal alive with residual motion, breathing, eye motion, cloth/hair follow-through, particles, light drift, or camera continuation.

## Final Prompt Checklist

Before outputting a Seedance prompt, confirm:

- It cites both storyboard and character references.
- It tells the model not to render storyboard notes or UI artifacts.
- It preserves identity anchors from the character board.
- It follows storyboard order, framing progression, camera rhythm, and escalation.
- It names environment and visual style.
- It explains body-driven causality.
- It includes a clear motion progression chain.
- It includes the main visual-system transformation logic.
- It includes pacing/staging bans.
- It ends with active continuing motion.
- It includes performance density: visible facial behavior, hand/body causality, prop reaction, dialogue tone, pause, and mouth movement when relevant.
