# Feedback and Iteration Rules

Use this when the user asks to update, generalize, specialize, simplify, or professionalize the skill.

## Change Philosophy

The skill should remain flexible unless the user asks for specialization.

Do not add project history, private preferences, old examples, or fixed brand assumptions by default. Add only reusable workflow rules.

## Patch Process

1. Identify the user's feedback in plain language.
2. Decide whether it affects:
   - frontmatter description,
   - scope,
   - stage order,
   - output formats,
   - quality gates,
   - reference analysis,
   - script format,
   - shot breakdown format,
   - handoff rules.
3. Edit the smallest necessary section.
4. Preserve the skill's generality.
5. Remove stale or over-specific constraints.
6. If a new workflow pattern emerges from repeated user feedback, add it as an optional mode rather than a hard rule.

## Update Response Format

```markdown
# Skill Update Summary

## What Changed

## Why It Changed

## Files Updated

## How To Use The New Behavior
```

## Avoid

- Turning one user's project into a global rule.
- Adding platform-specific assumptions without explicit instruction.
- Adding excessive examples that bloat the skill.
- Duplicating content across SKILL.md and references.
