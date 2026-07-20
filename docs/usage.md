# Using these agents

## With `outfitter setup`

```bash
outfitter setup
```

On a new machine this automatically installs the default agent catalog.

To bootstrap directly from this repository:

```bash
outfitter setup
```

Outfitter records the immutable `ai-outfitter/default-profiles` Release Please tag shipped by that
CLI version.

## Manual addition

Add this repository to your outfitter settings:

```yaml
default_agent: engineer
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
