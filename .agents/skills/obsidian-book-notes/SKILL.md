---
name: obsidian-book-notes
description: Create and update linked Obsidian Markdown notes from programming book excerpts, quotes, and chapter fragments.
---

# Obsidian Book Notes

Use this skill when programming book excerpts, quotes, or chapter fragments need to be turned into linked Obsidian Markdown notes.

## Goal

Create or update `.md` files that:

- are clean Obsidian notes
- use `[[wikilinks]]`
- use block IDs for precise references
- avoid duplication
- connect chapter, concept, code, and summary notes
- support links between multiple books through shared concept notes
- scale to large vaults by using retrieval-first linking instead of scanning everything

## Process

1. Inspect the target book folder in `vault/01-Books/<book-slug>/` before writing.
2. Decide the routing first:
   - `book-local` for chapter structure, author-specific framing, local examples, and source-bound notes
   - `shared-evergreen` for concepts that recur across books
   - `topic-map` for dense cross-book themes with many related notes
3. Build a small candidate set before opening note bodies:
   - search the current book folder first
   - then search `vault/02-Concepts/`
   - then search relevant notes in `vault/03-Maps/` only if the topic is broad
4. Rank candidates by the strongest signals first:
   - exact or near-exact file name match
   - `aliases`, `type`, `scope`, `books`, and other frontmatter metadata
   - existing `[[wikilinks]]` and block IDs
   - short summaries or opening paragraphs
   - full body text only for the top few candidates
5. Read deeply only the best 3-7 candidates. Do not scan the whole vault.
6. If the idea already exists, reuse the existing note. Prefer shared concept notes for ideas that recur across books.
7. If the source material is still raw, first save or update a capture in `vault/01-Books/<book-slug>/01-Inbox/` when needed.
8. Create or update stable notes in the book folder:
   - `02-Chapters/`
   - `03-Concepts/`
   - `04-Code/`
   - `05-Summaries/`
9. When an idea becomes cross-book and evergreen, create or update a shared note in `vault/02-Concepts/`.
10. Add short summaries, source metadata, links, and block IDs.
11. Keep file names short, predictable, and lowercase.
12. Use path-based wikilinks when file names may collide across books.

## Explicit Invocation

The user may explicitly invoke this skill by starting the message with `$obsidian-book-notes` before the source text. Treat that as a strong signal to use this skill immediately.

## Note Rules

- Keep the skill instructions and metadata in English.
- One note equals one stable idea.
- All final user-facing note content must be in Ukrainian unless the user explicitly asks for another language.
- Headings, summaries, explanations, lists, and note sections must be in Ukrainian.
- Keep English only for code, identifiers, library names, APIs, patterns, and quoted source text when needed.
- Use block IDs such as `^cc-ch02-rule-01`.
- When precise linking matters, point to a specific block ID in an existing note.
- Preserve source provenance: keep book-specific material in the book folder and synthesize shared ideas in `vault/02-Concepts/`.

## Optimized Linking Rules

- Prefer retrieval over brute-force reading. Narrow the search space before opening note content.
- Search order matters: current book first, shared concepts second, topic maps third.
- Treat file names, aliases, frontmatter, and existing links as primary retrieval signals.
- Treat tags as weak supporting signals only. Never rely on tags alone for linking decisions.
- Read full text only for the top candidates that survive metadata filtering.
- Add only purposeful links. A note should usually link to the few notes that genuinely help navigation or synthesis.
- Avoid quadratic linking. Do not link every related note to every other related note.
- Prefer hub-and-spoke structures:
  - book-local notes link to the most relevant shared concept
  - shared concepts link back to precise book-local source blocks
  - topic maps link to shared concepts and major book-local entry points
- Create a shared concept note only when the idea is reusable beyond one book or already appears in multiple books.
- Create or update a topic map only when a topic has become too dense for simple direct linking.

## Candidate Selection Heuristics

When multiple candidates exist, prefer the one that:

1. matches the same concept at the same abstraction level
2. already has the right note type for the new material
3. has clean source provenance and block references
4. can be updated without mixing different concepts into one file

Create a new note instead of forcing a link when the existing candidate is too broad, too narrow, or semantically different.

## Metadata Expectations

For scale, keep notes easy to retrieve:

- Start the note with a short summary or definition.
- Keep frontmatter accurate and minimal.
- Use `aliases` for common alternative names.
- For shared notes, keep `scope` and `books` current when relevant.
- Use stable block IDs for the exact claim, quote, or rule that another note should reference.

## Templates

Open the matching template before writing:

- [_templates/chapter-note.md](/Users/bohdanne/Desktop/bohdan/BooksObsidian/_templates/chapter-note.md)
- [_templates/concept-note.md](/Users/bohdanne/Desktop/bohdan/BooksObsidian/_templates/concept-note.md)
- [_templates/code-note.md](/Users/bohdanne/Desktop/bohdan/BooksObsidian/_templates/code-note.md)
- [_templates/summary-note.md](/Users/bohdanne/Desktop/bohdan/BooksObsidian/_templates/summary-note.md)

## Optional Session Prompt

For reusable instructions that can help set the tone of a session, see this optional reference:

- [_prompts/obsidian-session-prompt.md](/Users/bohdanne/Desktop/bohdan/BooksObsidian/_prompts/obsidian-session-prompt.md)
