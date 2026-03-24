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

## Process

1. Inspect the target book folder before writing.
2. If the idea already exists, reuse the existing note.
3. If the source material is still raw, first save or update a capture in `01-Inbox/` when needed.
4. Create or update stable notes in:
   - `02-Chapters/`
   - `03-Concepts/`
   - `04-Code/`
   - `05-Summaries/`
5. Add short summaries, source metadata, links, and block IDs.
6. Keep file names short, predictable, and lowercase.

## Note Rules

- Keep the skill instructions and metadata in English.
- One note equals one stable idea.
- All final user-facing note content must be in Ukrainian unless the user explicitly asks for another language.
- Headings, summaries, explanations, lists, and note sections must be in Ukrainian.
- Keep English only for code, identifiers, library names, APIs, patterns, and quoted source text when needed.
- Use block IDs such as `^cc-ch02-rule-01`.
- When precise linking matters, point to a specific block ID in an existing note.

## Templates

Open the matching template before writing:

- [_templates/chapter-note.md](/Users/bohdanne/Desktop/bohdan/BooksObsidian/_templates/chapter-note.md)
- [_templates/concept-note.md](/Users/bohdanne/Desktop/bohdan/BooksObsidian/_templates/concept-note.md)
- [_templates/code-note.md](/Users/bohdanne/Desktop/bohdan/BooksObsidian/_templates/code-note.md)
- [_templates/summary-note.md](/Users/bohdanne/Desktop/bohdan/BooksObsidian/_templates/summary-note.md)

## Session Prompt

For reusable instructions, see:

- [_prompts/obsidian-session-prompt.md](/Users/bohdanne/Desktop/bohdan/BooksObsidian/_prompts/obsidian-session-prompt.md)
