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
    ref: v1.1.0
```

Use a published version tag; do not use a moving branch name.

Then sync and run:

```bash
outfitter sync
outfitter run engineer
outfitter run data-analyst
```

## Persona reviews

This catalog pins `ai-outfitter/community-profiles` as a source, which
supplies the shared `persona-reviewer` agent and the `persona-authoring` /
`persona-review` skills. The `founder` profile selects both skills; the
`engineer` profile selects `persona-review`. Run the shared reviewer in its own
Outfitter process and keep the report as durable project context:

```bash
mkdir -p docs/persona-reviews
outfitter run persona-reviewer -- \
  --append-system-prompt docs/personas/platform-lead.md \
  --print "Review the onboarding flow. @README.md" \
  > docs/persona-reviews/platform-lead-onboarding.md
```

The default `founder` agent carries the whole loop. It authors one portable
persona file per customer role with `persona-authoring`, then invokes the
`persona-review` skill to launch the same reviewer process and save its report
under `docs/persona-reviews/`:

```bash
outfitter run founder
# "Author a platform-lead persona, review the README through persona-review,
# and save the report under docs/persona-reviews/."
```

The persona file is plain Markdown with no frontmatter, and pastes unchanged
into web agents as stakeholder context. Format and story:
[Personas](https://github.com/ai-outfitter/outfitter/blob/main/docs/documentation/personas.md)
and
[Persona reviews](https://github.com/ai-outfitter/outfitter/blob/main/docs/documentation/usecases/persona-reviews.md).

## Environment baseline

The founder and other default agents use the community
`system-prompts/environment.repo.http-token.md` starter as their environment
baseline. It places repositories and worktrees under
`~/repos/<owner>/<repo-name>` and uses HTTPS with a GitHub CLI-managed token by
default. Each GitHub organization still needs repository access, token
permissions, and any required SSO authorization configured separately.

This baseline is the catalog's root `system-prompt.md`. A repository's
`AGENTS.md` remains the source for project-specific instructions.

To opt into SSH in a custom catalog, copy
`system-prompts/environment.repo.ssh.md` to that catalog's `system-prompt.md`.
To customize the policy, copy the selected environment prompt into your own
`.agents` payload and edit it there.
