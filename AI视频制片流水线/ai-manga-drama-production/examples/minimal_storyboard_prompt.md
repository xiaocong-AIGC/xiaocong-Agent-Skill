# Example — Minimal Storyboard + Video Prompt（格式演示）

> ⚠️ 仅演示**格式与字段填法**，不是默认故事，不可套用到真实项目。
> panel 数、镜头、效果由 AI 按真实 sequence 判断。此处用占位演示一个极简 4-panel 板。

## A. STORYBOARD SEQUENCE BOARD（英文，演示 4 panel → 2x2）

```
Create a 16:9 image.

[PROJECT CARD]
Create a compact designed masthead, not a table.
TITLE: <SEQUENCE TITLE>
META LINE: <style / genre / intensity arc>
PRIORITY: <key readable items>
MICRO BRIEF: <one sentence, ≤15s sequence>

[CONTINUITY HEADER]
SEQUENCE ID: <seq_id_04p>
REFERENCE PRIORITY: Use @<char ref> as identity reference for C1 face/body/wardrobe/proportions/silhouette; @<env ref> controls geography/lighting; this storyboard controls staging, camera path, continuity and panel order.

[SCENE PACKET] ... (PREMISE / LOCATION / START -> END / ACTION CHAIN / PROP-EFFECT STATE / MUST READ)
[CHARACTER SANITIZATION] C1: <panel-visible traits>. Remove ... that cannot appear in a panel.
[IDENTITY CONSISTENCY] ... storyboard controls staging only; do not redesign/merge/age-shift.
[STORYBOARD PURITY] Panel images are monochrome light-gray rough sketches; headers outside panels; no color/subtitles/UI/timing marks inside panels.
[MASTER SHOT RULE] P01 establishes geography and direction.
[EMOTIONAL ARC] <phase -> phase -> phase>.
[STYLE LOCKS] STYLE LOCK / EFFECT LOCK / ENVIRONMENT LOCK ...
[SPATIAL CONTINUITY LOCK] panels are sampled phases of one path; only camera/pose/angle/effect change.

[DIRECTOR STRIP]
... RHYTHM/ESCALATION format lines ...
PANEL HEADERS: P01 / <lens> / <beat> -> P02 / ... -> P03 / ... -> P04 / ...
CAMERA + LENS PLAN: P01 ... -> P02 ... -> P03 ... -> P04 ...
ACTION PATH: P01 ... -> P02 ... -> P03 ... -> P04 ...
RHYTHM TRACK: P01 RHY P01: build / medium block / clean beat -> ... -> P04 RHY P04: impact / short block / smash beat
ESCALATION MAP: P01 ESC P01: L3 rise / rise -> ... -> P04 ESC P04: L5 peak / spike
STATE TRACK: P01 ... -> P04 ...
STYLE TRACK: P01 ... -> P04 ...

[SEQUENCE]
Grid: 4 panels in a clean 2x2 storyboard sheet; monochrome rough sketch, headers outside panels, director strip aligned below.
```

## B. SEEDANCE VIDEO PROMPT（英文，演示，对应上面 4 panel）

```
Use @<storyboard ref> as the authoritative director-approved storyboard blueprint for the sequence. Treat every storyboard panel as a consecutive shot within a single cinematic sequence. Follow panel order exactly and do not invent alternative coverage. Do not render the storyboard sheet itself. Preserve camera placement, framing, lens intent, staging, geography, prop placement, continuity and emotional escalation. Recreate the filmed sequence implied by the panels rather than the physical storyboard artwork.

Use @<char ref> as the authoritative C1 character reference for face, body, wardrobe, proportions, <signature>.
Use @<env ref> as the environment reference for geography, lighting, spatial anchors, material, atmosphere.

VISUAL STYLE: <final rendering language>.
AUDIO: No background music or score. Use only diegetic ambience, foley, impacts, texture, and silence.
ENVIRONMENT: <final environment + effect source>.
EMOTIONAL GUIDANCE: Valence: <arc>. Arousal: <arc>; show through <cues>.

PANEL BEATS:
P01: <filmed shot of panel 1>.
P02: <...>.
P03: <...>.
P04: <...>.
```

---
> 注意演示要点：
> - panel 内黑白粗稿、无时间戳/字幕/UI；
> - video prompt 把 storyboard 当蓝图、不渲染故事板、不发明额外镜头；
> - PANEL BEATS 与故事板面板一一对应、同序；
> - reference priority 显式声明。
