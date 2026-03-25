---
name: obsidian-source-notes
description: Create and update linked Obsidian Markdown notes from programming sources such as books, articles, docs, and courses.
---

# Obsidian Source Notes

Use this skill when programming sources need to be turned into linked Obsidian Markdown notes.

Supported source types:

- `books`
- `articles`
- `docs`
- `courses`

## Goal

Create or update `.md` files that:

- are clean Obsidian notes
- use `[[wikilinks]]`
- use block IDs for precise references
- avoid duplication
- connect source notes, concept notes, code notes, summaries, and playbooks
- support links between multiple sources through shared concept notes
- scale to large vaults by using retrieval-first linking instead of scanning everything

## Process

1. Inspect the target source folder in `vault/01-Sources/<source-type>/<source-slug>/` before writing.
2. Decide the routing first:
   - `source-local` for source-bound notes
   - `shared-evergreen` for concepts that recur across sources
   - `topic-map` for dense cross-source themes with many related notes
   - `playbook` for practical procedures or checklists
   - `capture` for raw fragments that still need structuring
3. Build a small candidate set before opening note bodies:
   - search the current source folder first
   - then search `vault/02-Concepts/`
   - then search `vault/04-Playbooks/`
   - then search relevant notes in `vault/03-Maps/` only if the topic is broad
4. Rank candidates by the strongest signals first:
   - exact or near-exact file name match
   - `aliases`, `type`, `scope`, `source_type`, `source_slug`, and other frontmatter metadata
   - existing `[[wikilinks]]` and block IDs
   - short summaries or opening paragraphs
   - full body text only for the top few candidates
5. Read deeply only the best 3-7 candidates. Do not scan the whole vault.
6. If the idea already exists, reuse the existing note.
7. If the source material is still raw, first save or update a capture in `vault/05-Inbox/` or in `vault/01-Sources/<source-type>/<source-slug>/01-Inbox/` when needed.
8. Create or update stable notes in the source folder:
   - `02-Chapters/` for books when chapter structure matters
   - `02-Notes/` for articles, docs, and courses
   - `03-Concepts/`
   - `04-Code/`
   - `05-Summaries/`
9. When an idea becomes cross-source and evergreen, create or update a shared note in `vault/02-Concepts/`.
10. When the output is procedural, create or update a playbook in `vault/04-Playbooks/`.
11. Add short summaries, source metadata, links, and block IDs.
12. Keep file names short, predictable, and lowercase.
13. Use path-based wikilinks when file names may collide across sources.

## Explicit Invocation

The user may explicitly invoke this skill by starting the message with `$obsidian-source-notes` before the source text. Treat that as a strong signal to use this skill immediately.

## Note Rules

- Keep the skill instructions and metadata in English.
- One note equals one stable idea.
- All final user-facing note content must be in Ukrainian unless the user explicitly asks for another language.
- Headings, summaries, explanations, lists, and note sections must be in Ukrainian.
- Keep English only for code, identifiers, library names, APIs, patterns, and quoted source text when needed.
- Use block IDs such as `^ca-ch02-rule-01`.
- When precise linking matters, point to a specific block ID in an existing note.
- Preserve source provenance: keep source-bound material in the source folder and synthesize shared ideas in `vault/02-Concepts/`.

## Optimized Linking Rules

- Prefer retrieval over brute-force reading. Narrow the search space before opening note content.
- Search order matters: current source first, shared concepts second, playbooks third, topic maps fourth.
- Treat file names, aliases, frontmatter, and existing links as primary retrieval signals.
- Treat tags as weak supporting signals only. Never rely on tags alone for linking decisions.
- Read full text only for the top candidates that survive metadata filtering.
- Add only purposeful links. A note should usually link to the few notes that genuinely help navigation or synthesis.
- Avoid quadratic linking. Do not link every related note to every other related note.
- Prefer hub-and-spoke structures:
  - source-local notes link to the most relevant shared concept or playbook
  - shared concepts link back to precise source-local blocks
  - topic maps link to shared concepts and major source entry points

## Metadata Expectations

For scale, keep notes easy to retrieve:

- Start the note with a short summary or definition.
- Keep frontmatter accurate and minimal.
- Use `aliases` for common alternative names.
- For shared notes and playbooks, keep `scope` and `sources` current when relevant.
- Use stable block IDs for the exact claim, quote, or rule that another note should reference.

## Templates

Open the matching template before writing:

- [_templates/source-note.md](/Users/bohdanne/Desktop/bohdan/ProgrammingObsidian/_templates/source-note.md)
- [_templates/chapter-note.md](/Users/bohdanne/Desktop/bohdan/ProgrammingObsidian/_templates/chapter-note.md)
- [_templates/concept-note.md](/Users/bohdanne/Desktop/bohdan/ProgrammingObsidian/_templates/concept-note.md)
- [_templates/code-note.md](/Users/bohdanne/Desktop/bohdan/ProgrammingObsidian/_templates/code-note.md)
- [_templates/summary-note.md](/Users/bohdanne/Desktop/bohdan/ProgrammingObsidian/_templates/summary-note.md)
- [_templates/playbook-note.md](/Users/bohdanne/Desktop/bohdan/ProgrammingObsidian/_templates/playbook-note.md)
- [_templates/capture-note.md](/Users/bohdanne/Desktop/bohdan/ProgrammingObsidian/_templates/capture-note.md)

## Optional Session Prompt

For reusable instructions that can help set the tone of a session, see this optional reference:

- [_prompts/obsidian-session-prompt.md](/Users/bohdanne/Desktop/bohdan/ProgrammingObsidian/_prompts/obsidian-session-prompt.md)
