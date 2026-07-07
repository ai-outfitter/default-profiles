# Contributing

## Repository layout

- `settings.yml` - default profile and profile source paths.
- `profiles/<id>/profile.yml` - one directory per profile: id, label, description, package list, and controls.
- `profiles/<id>/cli_specific/pi/` - profile-bundled Pi content (skills, DeepWork jobs).
- `skills/` - shared skills not tied to a single profile.
- `docs/` - extended documentation for individual profiles and usage.

## Adding or changing a profile

1. Create `profiles/<id>/profile.yml` with `id`, `label`, `description`, and any packages or controls.
2. Reference packages by git source, e.g. `git:github.com/ai-outfitter/<repo>`.
3. Verify locally with `outfitter sync` and `outfitter run --profile <id>`.
4. Add extended documentation to `docs/` rather than the README - keep the README to a short profile list and quick start.

## Conventions

- Branch and commit prefixes: `feat`, `fix`, `refactor`, `chore`, `docs`.
- Keep diffs small and one concern per PR.
