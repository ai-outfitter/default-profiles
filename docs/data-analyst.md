# Data analyst agent

The `data-analyst` agent is a data analysis setup for careful inspection, reproducible methods, assumptions, and summaries. Its loadout selects `openai-codex/gpt-5.5`.

## DeepWork job bundle

The catalog retains its reusable Pi DeepWork job bundle under:

```text
deepwork/jobs/
```

DeepWork jobs are extension-specific assets rather than Dotagents resources. A compatible Pi projection contributes this folder to `DEEPWORK_ADDITIONAL_JOBS_FOLDERS`; the agent selects the DeepWork extension in its loadout.

Included jobs and workflows:

- `analysis/ad_hoc_research_report` - scope research, answer data questions, incorporate Finder output, and produce a final report.
- `finder_analysis/run_finder` - run the Finder pattern-discovery pipeline and set up the project-local Finder binary at `utilities/finder/finder` when missing.
- `report_formatting/format_report` - turn a draft Markdown report into a polished DocBaker document or Slidev presentation.
- `datasource_management/onboard_datasource` - create query tooling and documentation for a new datasource.
- `datasource_management/explore_schema` - inspect and document datasource schema.
- `business_context/learn_about_business` - capture company, product, customer, and operating context.
- `analyst/analyze_dataset` - inspect data quality and produce evidence-backed findings.
- `analyst/define_metrics` - define product or business metrics, guardrails, and instrumentation acceptance criteria.
- `analyst/review_experiment` - assess experiment design or results without causal overclaiming.
- `analyst/insight_brief` - synthesize mixed evidence into a concise business recommendation.
- `analyst/executive_report` - create a leadership-ready analytical report.

## `/demos` skill

The agent selects the protocol-native demo skill under:

```text
skills/demos/
```

Outfitter resolves the `demos` slug from the agent loadout and passes the skill to Pi. The skill can fetch full runnable demo bundles from the legacy DeepWork Frontend R2-backed `/demo-bundle/<id>-full-data` route and run the self-contained analyst workflow for:

- `oil`
- `healthcare` / `medicaid-spending`

Users who do not want demo behavior can remove `demos` from their agent override or shadow the agent with a smaller loadout.

## Verify analyst jobs

After syncing the catalog with an Outfitter version that projects the DeepWork asset folder, run `outfitter run data-analyst` and ask DeepWork for available workflows. The bundled `analysis`, `business_context`, `datasource_management`, `finder_analysis`, `report_formatting`, and `analyst` jobs should appear with the workflows listed above.
