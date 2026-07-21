# Outfitter Default Agents

The default standalone `.agents` catalog for Outfitter users. The repository
root is a Dotagents payload: agents select their skills, model, extensions, and
other loadout elements directly from `agent.md` frontmatter.

## Agents

- `founder` - founder-operator setup for building, product thinking, research checks, dense prose, and careful delivery.
- `engineer` - engineering setup for repository navigation, maintainable code changes, tests, and reviews.
- `actions-agent` - conventional headless identity for GitHub Actions automation.
- `data-analyst` - data analysis setup for careful inspection, reproducible methods, assumptions, and summaries. See [docs/data-analyst.md](docs/data-analyst.md).

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
