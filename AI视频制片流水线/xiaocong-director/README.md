# Professional AI Video Director Toolkit

Two-stage director workflow for turning rough video ideas, reference videos, scripts, or shot notes into production-ready AI video materials.

This repository contains two Codex skills:

- `ai-video-development-director`: the prerequisite development skill for creative diagnosis, reference analysis, concept treatment, script outlines, full scripts, professional shot breakdowns, and handoff summaries.
- `xiaocong-director`: the downstream production skill for character identity boards, cinematic segment breakdowns, GPT Image 2.0 storyboard prompts, and Seedance 2.0 final video prompts.

## What It Does

- Develops rough ideas, briefs, reference videos, and fragments into director-level creative materials.
- Diagnoses story structure, audience hook, dramatic engine, tone, pacing, and production feasibility.
- Produces concept treatments, script overviews, full scripts, and professional shot breakdowns.
- Creates a clean handoff from development into downstream AI-video production.
- Builds a continuity bible for character identity, wardrobe, props, visual motifs, color, space, and camera texture.
- Suggests character-board variables before generating full GPT Image 2.0 character identity board prompts.
- Breaks scenes into 4-15 second cinematic segments.
- Generates rough previs storyboard prompts for GPT Image 2.0.
- Generates reference-led final video prompts for Seedance 2.0.
- Keeps output structured for real production use instead of generic prompt writing.

## Repository Structure

```text
.
+-- SKILL.md                         # xiaocong-director skill entry
+-- agents/
|   +-- openai.yaml
+-- references/
|   +-- gpt-image2-character-board-reference.md
|   +-- gpt-image2-storyboard-reference.md
|   +-- seedance2-final-video-reference.md
+-- ai-video-development-director/
    +-- README.md
    +-- SKILL.md
    +-- agents/
    +-- references/
```

## Installation

Install both skills for the full pipeline.

For `xiaocong-director`, copy the repository root into your Codex skills directory as:

```text
~/.codex/skills/xiaocong-director
```

On Windows, the path is usually:

```text
%USERPROFILE%\.codex\skills\xiaocong-director
```

For `ai-video-development-director`, copy the included folder into:

```text
~/.codex/skills/ai-video-development-director
```

On Windows:

```text
%USERPROFILE%\.codex\skills\ai-video-development-director
```

After installation, restart Codex or reload the available skills list.

## Invocation

Use the prerequisite development skill first when the idea still needs diagnosis, writing, reference analysis, script development, or professional shot breakdown:

```text
Use ai-video-development-director to develop this idea into a script and professional shot breakdown.
```

Then use `xiaocong-director` when the script, shot list, or development handoff is ready for AI-video production materials:

```text
Use xiaocong-director to turn this script into character boards, storyboards, and Seedance 2.0 prompts.
```

You can also invoke it with:

```text
小聪
xiaocong
xiaocong-director
```

## Recommended Pipeline

1. Start with `ai-video-development-director`.
2. Diagnose the creative direction.
3. Analyze references when provided.
4. Build the concept treatment and script overview.
5. Write or refine the full script after direction approval.
6. Produce the professional shot breakdown.
7. Hand off the approved script and shot breakdown to `xiaocong-director`.
8. Generate character-board variables, character identity board prompts, storyboard prompts, and Seedance 2.0 final video prompts.

## Xiaocong Production Workflow

1. Parse the input material.
2. Build a continuity bible.
3. Propose character-board variables.
4. Generate GPT Image 2.0 character identity board prompts after direction approval.
5. Divide the script into 4-15 second video segments.
6. Plan GPT Image 2.0 storyboard sheets.
7. Generate rough previs storyboard prompts.
8. Generate final Seedance 2.0 video prompts using storyboard and character references.

## Output Style

The skill writes like a director staging a scene on set. It prioritizes visible performance details, physical camera movement, character continuity, body-driven motion, and production-ready prompt structure.

By default, staged deliverables are bilingual, with Chinese first and English second. Copy-ready model prompts are separated into independent Chinese and English prompt blocks.

## Included References

- `ai-video-development-director/references/reference-video-analysis.md` defines deeper reference-video breakdown guidance.
- `ai-video-development-director/references/script-format.md` defines script formatting guidance.
- `ai-video-development-director/references/shot-breakdown-format.md` defines professional shot breakdown guidance.
- `ai-video-development-director/references/quality-gates.md` defines development quality checks.
- `references/gpt-image2-character-board-reference.md` defines the GPT Image 2.0 character identity board format.
- `references/gpt-image2-storyboard-reference.md` defines the GPT Image 2.0 rough storyboard format.
- `references/seedance2-final-video-reference.md` defines the current reference-led Seedance 2.0 final video prompt structure.

## License

No license has been selected yet. Add a license before distributing or accepting contributions if you want to define reuse permissions.
