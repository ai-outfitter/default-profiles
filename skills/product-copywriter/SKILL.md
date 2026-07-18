---
name: product-copywriter
description: Rewrite and critique product, marketing, landing-page, homepage, CTA, feature, pricing, onboarding, and launch copy so it reads like strong human copywriting instead of generic LLM output — and put every claim at the right place on the page. Use when Codex is asked to improve product messaging, build or restructure marketing pages, remove vague AI-generated phrasing, sharpen website prose, audit positioning language, decide where claims/stats/proof belong, or apply copywriting taste to UI/marketing text.
---

# Product Copywriter

Turn product copy into clear, specific, human prose — and put every claim at the right place on the page. Preserve the user's strategy and facts; improve the language, structure, and evidence.

The controlling question for every element: **would this make sense to a user, would it help them, would they care — does it create answers and new thoughts, or just more questions?** Anything that fails this is a simulacrum of help, however polished.

When the task involves a full landing page, homepage, or high-stakes positioning pass, read `references/product-copywriting.md` before editing.

## Workflow

1. Identify the job this content is meant to do: audience, product/category, desired action, reader awareness, the one thing the reader must understand.
2. Inventory the copy. Mark the highest-value lines: hero, subhead, section headings, CTAs, proof points.
3. Cut generic LLM texture before adding new language.
4. Rewrite for concrete user outcomes, credible mechanisms, and a recognizable point of view.
5. Before presenting: run the persona tests (below), then re-read the whole page as a first-time visitor.
6. Present 2–3 genuinely different variants for taste decisions — never iterate one line per round.

## Claim Altitude (information architecture)

Every claim has exactly one correct altitude. State it once, in its strongest form, at that altitude — reference it elsewhere, never restate it.

- **Headline** owns the want, not the mechanism. "Close the books without the month-end scramble" states the desired change; "Review every variance in one queue" belongs beside the product view that shows how it works.
- **Prose** owns honest numbers, scope, and grounding.
- **Artifact** owns the proof: real screenshots, logs, output, or measured results demonstrating the claim beat decorative stat tiles.
- Subheads must not pre-tell what later sections own. If the sub enumerates the capabilities, the capabilities section is a rerun.
- **After any sequence of local edits, re-read the whole page fresh.** Point fixes cause claim migration — the same claim accumulating at multiple altitudes without any single edit being wrong.

## Structure and Framing

- **Theater always backfires.** Any staging of credibility — internal-review verdicts ("a skeptical internal review rated this…"), tribunal language, virtue announcements, authority costumes, dressed-up artifacts — reads as either self-praise or dysfunction, never as rigor. State the assessment in plain first person ("We trust the speed result; the score edge needs more runs than two") and let real artifacts carry the authority. This is the general form of several rules below: if an element performs credibility instead of presenting it, cut the performance.
- **Organizing metaphors must come from the reader's world.** A conceit borrowed from an unrelated domain makes readers wonder whether the framing carries meaning it does not. Prefer plain, informative section labels such as Why, Results, Products, Writing, or the product's name.
- **Keep point-of-view material proportional to its job.** Make the argument concisely and let visitors reach concrete results before a long explanation of worldview.
- **Titles claim the positive, never the defense.** "Teams complete reviews in hours" is stronger than "This is not another slow review process" because it does not anchor on the objection.
- **The say-it-out-loud test.** Would a credible person in this field actually say the sentence? "The system this discipline grew up in" tries to impress instead of inform. Prefer the plain version: "This is where we learned what works."
- **Provenance stamps only when they add information the label lacks.** A benchmark name, sample size, date, or comparison window carries evidence; labels such as "verified" and "real results" merely announce credibility.

## Compose the Viewport, Not the Elements

Elements that are each fine in isolation can chain into busy, repetitive, or jarring pages. Every fold-sized view is one composition:

- **Reading order must match visual-weight order.** The eye enters at the biggest/brightest thing; if that's the punchline, the setup is never read first. A two-beat headline needs comparable sizes — let color and style carry the punch, not a 4x scale jump.
- **Do not stack decorative labels.** Wordmark taglines, eyebrows, and status lines compete when they repeat the same idea. Keep only labels that add unique information.
- **Check vocabulary repetition across neighboring elements** — the same word appearing in the wordmark, tagline, and eyebrow reads as a glitch, not emphasis.
- **If the brand name is a common word, avoid using that word generically near the wordmark.** Use an unambiguous synonym nearby; otherwise ordinary prose can look like a product reference or forced wordplay.
- **Watch display-size line wrapping** — an orphaned short word at hero scale looks like a rendering bug.
- **The eyebrow deletion test:** an eyebrow must carry unique information (category, status, license). An eyebrow that pre-justifies or pre-explains its headline is scaffolding — delete it and see if the scene loses anything. Confident claims stand alone; the evidence section does the proving.
- **Run the 7-second test on the assembled fold**: where does the eye go first, second, third? What would a first-time visitor think the company does? What problem does it solve for them? Would they continue? Something concrete must appear above the fold, not just conviction.

## Evidence Rules

- **Stat-tile / big-number visual grammar is reserved for numbers traceable to logs, benchmarks, or an approved source of truth.** Anecdotes and estimates go in prose, where "in our experience" reads honestly. Display treatment must not make weak evidence look authoritative.
- **Show, don't claim.** Prefer a real artifact (product screenshot, run log, terminal capture, published report) over an assertion. Never say "great" — let the receipts imply it.
- **Never delete a failing element without asking what job it was doing** and finding that job a better vehicle. Format serves the user; deletion alone is half a fix.
- Truth mechanics: commands must work exactly as pasted; stats stay scoped to what was measured; estimates are labeled; license categories are precise; representative artifacts are labeled representative, never "live"; claims are checked against an approved source of truth before publishing.
- Honest status or maturity labels (Generally Available, Beta, Preview) do positioning work no paragraph can.
- **Prose interprets, artifact shows.** Restating an artifact's key fact in prose is correct when the prose translates the measurement into meaning; it is duplication only when it adds nothing the artifact did not already say.
- **Representative artifacts must match the real product's semantics exactly** — colors, states, sort order, labels. The artifact is how the reader learns the product; a dressed-up mock teaches them wrong.
- **Design data displays in Tufte order: finding → comparison → format → strip.** Before presenting data visually, know the key finding or trend the display must make visible. Then choose the comparison context that makes it most informative and completes the story (baseline, prior period, target, peer group) — a number without context is meaningless. Only then pick the format that shows it clearest (table, chart type, or prose — don't chart what a sentence can say), and finally remove everything that distracts from that core. For a fuller treatment, see [Caylent's Tufte data-visualization skill](https://github.com/caylent/tufte-data-viz).
- **Read your own table the way an analyst reads data: outliers first.** An empty cell beside a derivable value, a label on some rows but not others, and a column whose value barely varies are all questions the table poses and refuses to answer. Fill the cell or explain the gap; apply labels uniformly or not at all; a near-constant column is a footnote, not a column.
- **Minimize perceived complexity, not ink.** Vision is gestalt: readers see shapes and groups, not individual marks (Kanizsa's triangle is a shape made of absences). Data-ink minimalism is a heuristic for this deeper rule and sometimes wrong: enclosure, background bands, and quiet rules that pre-group related elements add ink while _reducing_ the viewer's parsing work. Every mark must either carry data or reduce the work of perceiving structure; delete only marks that do neither.
- **Brand system vs display-optimum is a decision, not a default.** Brand conventions sometimes conflict with what a data display wants, and within-system consistency is itself a reader aid. Neither side silently wins: flag the conflict and let the owner choose per artifact. For dedicated table or chart work, defer to a specialized data-visualization skill or style guide when one is available.

## Remove LLM Copy Tells

- Abstract benefit clouds: "unlock", "empower", "transform", "seamless", "robust", "supercharge", "streamline", "elevate", "reimagine", "next-generation".
- Vague category stacks: "AI-powered platform for modern teams", "end-to-end solution", "comprehensive suite".
- On-the-nose meta labels ("Point of view", "Our approach", "Key asset") and doubled labels where the second line restates the first.
- Filler headers that don't help the user ("Everything you need, all in one place") — every header either carries content or gets cut.
- Slogan headers that applaud the content below instead of adding to it ("Proof, not promises"). Cute lines must also clarify; memorable-but-empty loses to plain.
- Self-praise about our own virtues ("labeled honestly", "we're transparent") — demonstrate, don't announce.
- Tenure flags ("founded in [year]", "[N] years of experience") when duration is not itself the customer value. Prefer relevant evidence of adoption, maturity, or results.
- Naming the ICP more than once per page. Once, concisely, is the cap — more is talking about the customer instead of to them.
- Inflated contrasts ("not just X, but Y"), repeated three-part rhythms, claims with no mechanism, long noun strings, over-polished neutrality.

### Banned tropes (default-remove; keep only when demonstrably serving the reader)

- **Em dashes: budget of one or two per page.** Replace with commas, periods, colons, or parentheses. Citation notation such as "Company research — Month YYYY" is exempt.
- Never: delve, moreover, furthermore, albeit, indeed, certainly. Cut formal transitions generally; let sentences flow.
- Rhetorical question-then-answer pairs ("The result? Chaos.") — restate as a statement, unless the question is literally the research question and even then prefer the statement.
- Rule of three: vary list lengths. A triple is fine when it's the actual enumeration (three real features); reflexive triples for rhythm get broken into pairs, singles, or fours.
- Metaphor clichés: symphony of, tapestry of, testament to, delicate balance, nestled. Concrete description instead.
- Preambles ("Let's dive in", "Let's break it down") — start with the content.
- Dramatic ellipses and staccato fragments for false drama; explanatory telling-clauses ("which was surprising because"); redundant adjective pairs ("dark and brooding" — pick the stronger word).
- Emphasis budget: bold/italic at most once per ~500 words; word choice does the emphasizing.
- **Faux-insider patterns** (performing knowledge instead of stating it): "Here's what most people get wrong", "Here's the thing/why/the secret", "The trick is", "What nobody tells you", "The truth about" — and the quieter forms: "it's worth noting/naming/stating plainly". State the thing.
- **Staccato rhetoric** (short fragments arranged for drama): parallel fragments ("No X. No Y."), setup-reversal ("We thought X. We were wrong." and "That's not X, it's Y"), fragment-as-punchline ending a paragraph, "And" for false drama ("It does X. And it does Y."). In prose, default-remove: join the fragments into sentences. Headlines get more latitude — a short declarative pair can be the product promise ("Do it once. Run it forever.") — but only when the fragments carry the actual claim, never for rhythm alone.

Do not remove technical terms the target reader genuinely uses. For specialists, distinguish meaningful terminology from meaningless jargon.

## Rewrite Principles

- Lead with the reader's problem or desired progress. While it can appear later, every promise should also have a mechanism and proof covered on the page.
- For company or brand positioning, state a falsifiable claim about the customer's world and explain how the product responds. Naming outputs alone underplays the value; name the end they serve.
- Establish chronology from source evidence before writing an origin story, then preserve that causal order.
- Give each page one primary audience and job. Explain relationships among offerings only where the reader needs that context.
- Make headings useful alone; a scanner should understand the page from headings and CTAs. CTAs verb-led and literal.
- Keep voice plainspoken and a little uneven. Terse beats complete: cut restatement, not substance.
- **Pain words keep their valence.** Words used to describe the problem (chase, babysit, reconcile) should not describe the promise. "Juggle twice as many projects" still sells more juggling.
- **Name mechanisms in terms the reader already trusts** (CSV, Git, tmux, familiar file formats, native integrations). Inherited credibility beats invented vocabulary and shows that the product fits the reader's world.
- **Brainstorm winners are direction, not copy.** A line that wins a positioning exploration is a compass heading; rewrite it for the page instead of pasting it unchanged.
- **CTA weight must match the importance of the next action.** Use a text link for optional exploration and a primary button for the page's main path.

## Quality Gates

For each important line:

- Could a competitor say this unchanged?
- Does it say what changes for the user, with the mechanism?
- Would the target reader understand it on first read — or does it use vocabulary the page hasn't taught yet?
- Does it imply more certainty, scale, or maturity than the product supports?
- Is this claim already stated at another altitude on this page?
- Does every comparative have a referent the reader already knows? ("3x as many" — as many as what?)

For the whole page, run two persona tests before presenting:

1. **Cold-visitor test**: a target buyer who arrived without context — what do they understand, believe, and do next?
2. **Leadership-conviction test**: does the page express a viewpoint the organization would defend, or interchangeable market copy?

## Evidence-Heavy Writing (posts and readouts only, not page copy)

Use a transparent, evidence-led voice:

- **Order by descending importance.** Start with the concrete result or observation the reader came for, then make every sentence the most important of the remaining things you have to say. If the finding first appears halfway down, the top is doing setup's job.
- Make factual claims traceable to a source or artifact; distinguish observation, interpretation, and opinion.
- Include process details when they help the reader reproduce the result, evaluate the evidence, or avoid a consequential mistake.
- Use exact measurements when available and label uncertainty when they are not.
- **The fact-to-sentence density test.** Before keeping any paragraph, ask how a domain expert would state it to a peer — usually the fact plus its significance in one or two sentences. Generated prose dresses each fact in a four-beat costume: an entrance that positions it against what others miss, a warm-up stating the general principle, the fact itself, and a punchline restating the fact as wit. Strip to the fact and the comparison that makes it matter; if a metaphor and a literal statement carry identical content, evidence writing takes the literal one. The tell is sentence count exceeding fact count.
- **Section weight must match argument weight.** A full section (heading, marginalia, paragraph block) claims that its content is a pillar of the piece's argument. A single interesting-but-adjacent fact takes a footnote, an aside under the artifact it relates to, or a parenthetical — not a section. If a section can be deleted without the argument losing a step, demote it before cutting it.
- **Give provenance and caveats one clear home**: a closing limitations passage, a small note directly beneath the visual asset it qualifies, or a footnote. The statement is load-bearing; do not cut it while leaving a weaker half-version elsewhere. Basis stamps on tables and charts (measurement basis, benchmark name, sample, date) are artifact grammar, not repetition, and stay with their artifact.
- **Caveat, don't hedge.** Outside that home, state results plainly. A sentence may carry scope, but it should not argue its own unreliability. Scattering trust disclaimers across the piece can spend more words distrusting the result than reporting it; one clear caveat reads more confident and more honest than repeated flinches.
- Include failures or lessons only when they help the reader make a decision or avoid an error; do not let the author's story displace the reader's problem.
- Attach enthusiasm or criticism to a specific result or mechanism, not to the product as a whole.
- Credit sources directly and add analysis rather than paraphrasing them at length.
- End when the evidence and implication are complete; omit ceremonial recaps.

## Generation Is Not Review

First-draft copy — from anyone, however well-briefed — reliably reproduces the patterns this skill bans (tagline stacking, self-narration, virtue-announcing, the same beat at two altitudes). Writing and reviewing are different modes: every piece gets a second adversarial read against this skill, line by line, before it ships. Assume the draft broke rules; go find them.

## Output Style

Make the smallest coherent changes that improve the page. Do not rewrite stable legal, privacy, or unrelated content unless asked. When giving feedback: lead with the issue and why it matters, show before/after for the most important lines, keep rationale concise. When the user hands you a direction that conflicts with these principles, integrate it and flag the conflict in the same turn — don't implement literally and wait for them to notice.
