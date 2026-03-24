---
name: book-vault-scaffold
description: Create the standard Obsidian folder structure and starter Markdown files for a new programming book in this workspace.
---

# Book Vault Scaffold

Use this skill when the user wants to add a new book to the vault and quickly create the standard folder structure for it.

## What To Do

1. Take the book title from the user.
2. Prepare a short lowercase slug with hyphens, for example `clean-architecture`.
3. Run the script:

```bash
bash .agents/skills/book-vault-scaffold/scripts/create-book-vault.sh "Book Title" "book-slug"
```

4. Verify the created files.
5. Briefly tell the user which folder was created.

## Explicit Invocation

The user may explicitly invoke this skill by starting the message with `$book-vault-scaffold` before the request text. Treat that as a strong signal to use this skill immediately.

## Created Structure

- book folder
- `01-Inbox/`
- `02-Chapters/`
- `03-Concepts/`
- `04-Code/`
- `05-Summaries/`
- `99-Meta/`
- `00-Index.md`
- `99-Meta/CODEX_WORKFLOW.md`

## Rules

- Keep the skill instructions and metadata in English.
- The generated Markdown content and the user-facing summary must be in Ukrainian unless the user explicitly asks for another language.
- Do not overwrite an existing book folder.
- If the slug is not provided explicitly, generate it before running the script.
