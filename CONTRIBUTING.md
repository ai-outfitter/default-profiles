# Contributing

## Repository layout

- `settings.yml` - Outfitter defaults for this standalone `.agents` payload.
- `agents/<id>/agent.md` - one identity and loadout per agent.
- `skills/<id>/SKILL.md` - reusable Agent Skills selected by agent slug.
- `deepwork/jobs/` - reusable Pi DeepWork extension assets.
- `docs/` - extended documentation for individual agents and usage.

## Adding or changing an agent

1. Create `agents/<id>/agent.md` with Dotagents frontmatter containing a matching `name`, a precise `description`, and the smallest useful loadout.
2. Put reusable procedures in `skills/<id>/` and select them from the agent's `skills` list.
3. Reference Pi extensions by package source, e.g. `git:github.com/ai-outfitter/<repo>` or a pinned npm spec.
4. Verify locally with `outfitter validate --strict` and `outfitter run <id>`.
5. Add extended documentation to `docs/` rather than the README; keep the README to a short agent list and quick start.

## Conventions

- Branch and commit prefixes: `feat`, `fix`, `refactor`, `chore`, `docs`.
- Keep diffs small and one concern per PR.
