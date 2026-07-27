# Outfitter Default Agents

The default standalone `.agents` catalog for Outfitter users. The repository
root is a Dotagents payload: agents select their skills, model, extensions, and
other loadout elements directly from `agent.md` frontmatter.

## Agents

- `founder` - founder-operator setup for building, product thinking, research checks, dense prose, and careful delivery.
- `engineer` - engineering setup for repository navigation, maintainable code changes, tests, and reviews.
- `platform` - platform engineering setup for infrastructure, CI/CD, deployment, reliability, browser-debugging evidence, and developer tooling.
- `actions-agent` - conventional headless identity for GitHub Actions automation.
- `data-analyst` - data analysis setup for careful inspection, reproducible methods, assumptions, and summaries. See [docs/data-analyst.md](docs/data-analyst.md).

## Personas via the founder agent

The catalog pins [community-profiles](https://github.com/ai-outfitter/community-profiles)
as a source, so the persona machinery is available out of the box. The
`founder` agent (the default) carries the loop: it authors one portable
Markdown persona file per customer role in `docs/personas/` (via the
`persona-authoring` skill) and delegates reviews to the shared
`persona-reviewer` agent with the file appended at launch. The same file
pastes unchanged into web agents (claude.ai project knowledge, ChatGPT) as
stakeholder context. See Outfitter's
[Personas](https://github.com/ai-outfitter/outfitter/blob/main/docs/documentation/personas.md)
spec and
[Persona reviews](https://github.com/ai-outfitter/outfitter/blob/main/docs/documentation/usecases/persona-reviews.md)
story.

## Quick start

```bash
outfitter setup
outfitter run engineer
```

The default setup path uses the immutable Release Please version tag pinned by the installed
Outfitter version.

See [docs/usage.md](docs/usage.md) for manual settings configuration and syncing.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md).
