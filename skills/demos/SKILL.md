---
name: demos
description: "Run the bundled data analyst demo workflows from R2-backed DeepWork demo bundles"
---

# `/demos` — Data Analyst Demo Runner

Use this skill when the user asks for `/demos`, `run demo`, `oil demo`, `healthcare demo`, or asks to try the data analyst agent on canned demo data.

The data analyst agent intentionally does **not** vendor demo datasets. Demo data is pulled on demand from the legacy DeepWork Frontend R2-backed demo bundle route:

```text
https://unsupervised-preview.unsupervised-52b.workers.dev/demo-bundle/<demo-id>-full-data
```

## Supported demos

- `oil` — WTI summer forecast for a fictional oil producer using FRED, NOAA, and GDELT data. Produces a Slidev-style presentation/report.
- `healthcare` — alias for `medicaid-spending`, Medicaid spending growth drivers using CMS NHE and CMS-64 FMR data. Produces a DocBaker/HTML-style report.
- `medicaid-spending` — canonical healthcare demo id.

## Process

1. Resolve the requested demo id:
   - `oil` -> `oil`
   - `healthcare`, `medicaid`, `medicaid-spending` -> `medicaid-spending`
2. Prepare the demo bundle in the current project root by running the helper script from this skill directory:

   ```bash
   bash scripts/fetch-demo.sh <demo-id> --target .
   ```

   If the current directory is not an empty/scratch project, ask before using `--force`, or offer a scratch target such as `/tmp/deepwork-demos/<demo-id>`.

3. Read `.deepwork/demo-initial-prompt.txt` after the helper completes.
4. Execute the demo for real using the self-contained analyst DeepWork jobs. The prompt normally begins with `/deepwork analysis/ad_hoc_research_report ...`; use the DeepWork tools/extension rather than inventing a manual workflow.
5. Continue until the report artifact is created. Summarize:
   - Demo id and bundle URL.
   - Finder path, when Finder ran.
   - Final report path.
   - Key answer/recommendation.

## Helper script examples

List supported demos:

```bash
bash scripts/fetch-demo.sh --list
```

Fetch oil into the current project:

```bash
bash scripts/fetch-demo.sh oil --target .
```

Fetch healthcare into a scratch directory:

```bash
mkdir -p /tmp/deepwork-demos/healthcare
bash scripts/fetch-demo.sh healthcare --target /tmp/deepwork-demos/healthcare
```

Override the bundle host for branch previews or local testing:

```bash
DEMO_BUNDLE_HOST=https://example.test bash scripts/fetch-demo.sh oil --target .
```

## Guardrails

- Do not require the old `deepwork-frontend` checkout. The demo bundle must come from the R2-backed `/demo-bundle` route unless the user explicitly points to a local fixture.
- Do not add external DeepWork job folders. Use the jobs bundled with this data analyst agent catalog.
- Do not silently overwrite a non-empty project directory. Ask first or use a scratch target.
- If the bundle download fails, report the exact URL and HTTP/curl error, then suggest retrying or setting `DEMO_BUNDLE_HOST`.
