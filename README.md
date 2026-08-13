# Outfitter Default Agents

The default standalone `.agents` catalog for Outfitter users. The repository
root is a Dotagents payload: agents select their skills, model, extensions, and
other loadout elements directly from `agent.md` frontmatter.

## Agents

- `founder` - founder-operator setup for building, product thinking, research checks, dense prose, and careful delivery.
- `engineer` - engineering setup for repository navigation, maintainable code changes, tests, and reviews.
- `data-analyst` - data analysis setup for careful inspection, reproducible methods, assumptions, and summaries. See [docs/data-analyst.md](docs/data-analyst.md).

## Personas

The catalog pins [community-profiles](https://github.com/ai-outfitter/community-profiles)
as a source, so the persona machinery is already available. The default
`founder` agent authors one persona file per customer role in `docs/personas/`
and invokes the `persona-review` skill to run the shared reviewer in its own
Outfitter process. The `engineer` agent selects the same review skill for
customer-facing product, documentation, and onboarding work. The same persona
file also works as pasted stakeholder context in web agents. See Outfitter's
[Personas](https://github.com/ai-outfitter/outfitter/blob/main/docs/documentation/personas.md)
spec and [docs/usage.md](docs/usage.md) for the commands.

## Quick start

```bash
outfitter setup
outfitter run founder
```

The default setup path uses the immutable Release Please version tag pinned by the installed
Outfitter version.

See [docs/usage.md](docs/usage.md) for manual settings configuration and syncing.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md).
