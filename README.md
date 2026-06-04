# applepi-default-profiles

Default Bridl profile source for ApplePi users.

## Profiles

- `engineer` - software engineering profile for coding, debugging, reviews, and implementation planning.
- `data_analyst` - data analysis profile for dataset exploration, statistical reasoning, and reporting.

## Use with Bridl setup

Bootstrap these defaults onto a machine:

```bash
bridl setup https://github.com/Unsupervisedcom/applepi-default-profiles
```

## Use as a remote profile source

Add this repository to your Bridl settings:

```yaml
default_profile: engineer

profile_sources:
  - github: Unsupervisedcom/applepi-default-profiles
    ref: main
    path: profiles
```

Then sync and run:

```bash
bridl sync
bridl run --profile engineer
bridl run --profile data_analyst
```
