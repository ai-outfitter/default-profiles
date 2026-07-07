# Using these profiles

## With `outfitter setup`

```bash
outfitter setup
```

On a new machine this automatically uses these profiles.

To bootstrap directly from this repository:

```bash
outfitter setup https://github.com/ai-outfitter/default-profiles
```

## Manual addition

Add this repository to your outfitter settings:

```yaml
default_profile: engineer

profile_sources:
  - github: ai-outfitter/default-profiles
    ref: main
    path: profiles
```

Then sync and run:

```bash
outfitter sync
outfitter run --profile engineer
outfitter run --profile data-analyst
```
