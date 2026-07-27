# Using these agents

## With `outfitter setup`

```bash
outfitter setup
```

On a new machine this installs the default agent catalog. Outfitter records the immutable `ai-outfitter/default-profiles` Release Please tag shipped by that
CLI version.

## Manual addition

Add this repository to your outfitter settings:

```yaml
default_agent: founder
default_harness: pi

sources:
  - github: ai-outfitter/default-profiles
    ref: v1.0.0
```

Use a published version tag; do not use a moving branch name.

Then sync and run:

```bash
outfitter sync
outfitter run engineer
outfitter run data-analyst
```

## Persona reviews with the founder agent

This catalog pins `ai-outfitter/community-profiles` as a source, which
supplies the shared `persona-reviewer` agent and the `persona-authoring` /
`persona-review` skills. The default `founder` agent authors one portable
persona file per customer role and delegates reviews to the shared reviewer:

```bash
outfitter run founder
# "Author a platform-lead persona for our product, then have it review the README."
```

Or launch the reviewer directly with a persona appended:

```bash
outfitter run persona-reviewer -- \
  --append-system-prompt docs/personas/platform-lead.md \
  --print "Review the onboarding flow and write the report. @README.md"
```

The persona file is plain Markdown with no frontmatter, and pastes unchanged
into web agents as stakeholder context. Format and story:
[Personas](https://github.com/ai-outfitter/outfitter/blob/main/docs/documentation/personas.md)
and
[Persona reviews](https://github.com/ai-outfitter/outfitter/blob/main/docs/documentation/usecases/persona-reviews.md).
