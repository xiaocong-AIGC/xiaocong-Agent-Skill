# Video Prompt

Use after storyboard and required frames are ready, or after an all-reference chain is ready for Kling Omni / Seedance. Always consult `PLATFORM_PLAYBOOK.md` for the target platform's current budgets, obedient camera moves, and effective wording before writing.

## Drive Modes

Pick one mode per shot/clip (recorded in the keyframe plan or clip plan) and write with that mode's emphasis — one template, three weights:

- **Mode A 首尾帧驱动**: emphasis on what happens between the two frames; both frames must come from one layout camera.
- **Mode B 全参考链驱动**: emphasis on reference orchestration and the timeline; restrain visual adjectives, references control appearance.
- **Mode C 运镜复刻**: a video reference (source segment or white-model camera-move preview rendered from the shot's layout camera) controls camera and rhythm; text only adds action, dialogue, and lock statements — over-writing fights the reference.

## Process

1. Keep production metadata separate from the model prompt body; record drive mode, risk grade, and attempt count (3 failed attempts trigger the degrade plan, never a fourth identical roll).
2. Write the body in Chinese, in this order: `参考素材使用` (priority + arbitration + platform @引用 mapping) → 镜头总起 (one sentence: the event and emotional movement) → 起幅 → 时间轴 → 落幅+衔接钩子 → 运镜 → 声音 → 锁定声明 → negatives.
3. Timeline is mandatory whenever a clip has more than one beat or any dialogue: quantified segments (0–2s / 2–5s …), each with subject action, camera state, and verbatim dialogue lines (who, tone). One clip carries at most 1–2 clear actions and exactly one camera move; more means split the clip.
4. Describe the move as 起幅构图 → 落幅构图 with a transition duration, not as a named move alone.
5. 落幅 must include the transition hook from the storyboard's Transition Out column: exit direction, end-of-clip eyeline, or sound tail, so the next clip can receive the cut.
6. Sound: dialogue lines sit inside the timeline; ambience = the scene's sound signature; list SFX points. Verify dialogue fits the duration (3–4 chars/sec). During a spoken line, no cut and no camera change.
7. Replace continuity re-description with a 锁定声明: identity/costume = image N, scene/light = image N, props = image N, all unchanged; state the single allowed change.
8. Negatives = short standard base + shot-specific risks from the playbook (e.g. extra characters, second camera move).

All-reference additions for Kling Omni / Seedance:

9. One prompt per AI generation clip (a clip may contain several internal story shots — keep the internal timeline).
10. The source video segment or camera-move preview controls camera language, ordering, action rhythm, and edit timing; locked images control identity, scene, prop form, and style. Say so explicitly.
11. Respect platform reference budgets and durations per the playbook; route missing assets to 08A first.

Output:

- Save prompts under `08_video_prompts/`, versioned `_vNN` (a changed prompt = new version). Take numbers `_tNN` belong to generated video files, tracked in the prompt's internal metadata.

Quality gate:

- Body order followed; drive mode recorded; playbook consulted.
- Multi-beat or dialogue clips have a quantified timeline; one move per clip; 起幅/落幅 both described.
- Lock statements replace re-description; the single allowed change is explicit.
- 落幅 carries the designed transition hook.
- The prompt reconstructs the filmed sequence, not the storyboard sheet.
