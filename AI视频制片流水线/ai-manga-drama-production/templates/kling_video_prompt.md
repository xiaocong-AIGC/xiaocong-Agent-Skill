# Template — KLING VIDEO PROMPT

> 用途：基于已批准的 storyboard ref 生成 Kling（AI 视频）提示词。
> 沿用与 Seedance 相同的 **storyboard → video** 逻辑（见 `references/AI视频工作流.md` §5–§6），
> 按 Kling 的描述习惯组织字段。把 storyboard ref 当导演蓝图，不渲染故事板本身，不发明额外镜头。
> **不要写死具体内容**；`<...>` 为占位。输出主体为**英文**。

---

REFERENCE USAGE:
Use @<storyboard ref> as the authoritative director-approved storyboard blueprint. Do not render the storyboard sheet itself; recreate the filmed sequence implied by the panels.
Use @<character ref> for <C1> face / body / wardrobe / proportions / identity.
<Use @<environment ref> for geography / lighting / spatial anchors / material / atmosphere.>
<Use @<prop ref> for shape / scale / material / usage & damage state.>
Reference priority: identity and geography are locked; storyboard controls staging; style does not override identity or geography.

SEQUENCE INTENT:
<One sentence: what this ≤15s sequence delivers emotionally and visually.>

CAMERA CONTINUITY:
Follow panel order exactly. <Continuous master move OR motivated cuts per panel headers.> Preserve camera placement, framing, lens intent, shot scale and screen direction from the storyboard. Do not invent alternative coverage.

CHARACTER CONSISTENCY:
Keep <C1> identity locked to the character ref across the whole clip: same face, hair, wardrobe, proportions, silhouette. Do not redesign, age-shift, merge or add characters.

ENVIRONMENT CONTINUITY:
Keep the same geography, lighting direction and spatial anchors across all shots as defined by the storyboard and environment ref. No new locations, no redesigned space.

MOTION LOGIC:
<How motion flows panel to panel: speed, weight, physics, effect origin (where vapor/sparks/light come from), continuity of momentum.>

VISUAL STYLE:
<Final rendering language: medium, cel edges, palette, material light, motion quality — consistent with the project.>

SOUND / AMBIENCE:
<Default> Diegetic ambience, foley and impacts only; no score unless the project requires it.

BEAT-BY-BEAT ACTION:
P01: <recreate the filmed shot of panel 1: camera + performance + effect + sound cue>.
P02: <...>
P03: <...>
<one beat per storyboard panel, exact order>

CONSTRAINTS:
- Do not invent extra shots, extra angles, or coverage not present in the storyboard.
- Do not add characters, props, or environment elements beyond the locked references.
- Do not render the storyboard artwork; render the implied live sequence.
- Keep within one ≤15-second sequence.
