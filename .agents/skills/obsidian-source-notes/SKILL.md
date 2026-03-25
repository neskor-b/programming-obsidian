---
name: obsidian-source-notes
description: Create and update linked Obsidian Markdown notes from programming sources such as books, articles, docs, and courses.
---

# Obsidian Source Notes

Use this skill to turn programming sources into linked Obsidian notes in `vault/`.

Supported source types:

- `books`
- `articles`
- `docs`
- `courses`

## Workflow

1. Inspect `vault/01-Sources/<source-type>/<source-slug>/` before writing.
2. Route each idea first:
   - `source-local`: bound to one source
   - `shared-evergreen`: reusable across sources
   - `topic-map`: broad topic with many links
   - `playbook`: procedure or checklist
   - `capture`: raw fragment that is not ready yet
3. Search narrowly before reading bodies:
   - current source folder
   - `vault/02-Concepts/`
   - `vault/04-Playbooks/`
   - `vault/03-Maps/` only for broad themes
4. Read only the best 3-7 matches. Rank by filename, aliases, frontmatter, existing links, and opening summary.
5. Update an existing note if it already covers the idea.
6. Write to the correct folder:
   - books: `02-Chapters/`, `03-Concepts/`, `04-Code/`
   - articles/docs/courses: `02-Notes/`, `03-Concepts/`, `04-Code/`
   - raw input: `05-Inbox/` or local `01-Inbox/`
7. Link only notes that improve navigation, provenance, or synthesis.

## Rules

- Keep the skill itself in English.
- Final note content must be in Ukrainian unless the user asks otherwise.
- One note equals one stable idea.
- Prefer updating over creating a duplicate.
- Use `[[wikilinks]]`; use path-based links when names may collide.
- Add stable block IDs for definitions, claims, quotes, and code anchors.
- Keep source-bound material in the source folder.
- Move reusable synthesis to `vault/02-Concepts/`.
- Move procedures and checklists to `vault/04-Playbooks/`.
- Do not create standalone summary notes by default.
- Keep filenames short, lowercase, and predictable.

## Metadata

- Start each note with a short summary or definition.
- Keep frontmatter minimal and correct.
- Source-bound notes should keep `source_type`, `source_slug`, and `source_title`.
- Shared notes and playbooks should keep `scope` and `sources` current when relevant.
- Add `aliases` only when they improve retrieval.

## Templates

Open the matching template before writing:

- [_templates/source-note.md](/Users/bohdanne/Desktop/bohdan/ProgrammingObsidian/_templates/source-note.md)
- [_templates/chapter-note.md](/Users/bohdanne/Desktop/bohdan/ProgrammingObsidian/_templates/chapter-note.md)
- [_templates/concept-note.md](/Users/bohdanne/Desktop/bohdan/ProgrammingObsidian/_templates/concept-note.md)
- [_templates/code-note.md](/Users/bohdanne/Desktop/bohdan/ProgrammingObsidian/_templates/code-note.md)
- [_templates/playbook-note.md](/Users/bohdanne/Desktop/bohdan/ProgrammingObsidian/_templates/playbook-note.md)
- [_templates/capture-note.md](/Users/bohdanne/Desktop/bohdan/ProgrammingObsidian/_templates/capture-note.md)

## Optional Prompt

- [_prompts/obsidian-session-prompt.md](/Users/bohdanne/Desktop/bohdan/ProgrammingObsidian/_prompts/obsidian-session-prompt.md)
