---
name: source-vault-scaffold
description: Create the standard Obsidian folder structure and starter Markdown files for a new programming source in this workspace.
---

# Source Vault Scaffold

Use this skill when the user wants to add a new source to the vault and quickly create the standard folder structure for it.

Supported source types:

- `books`
- `articles`
- `docs`
- `courses`

## What To Do

1. Take the source title from the user and also the source type.
2. Take the author if it is provided.
3. Prepare a short lowercase slug with hyphens, for example `clean-architecture`.
4. Run the script:

```bash
bash .agents/skills/source-vault-scaffold/scripts/create-source-vault.sh "Source Title" "source-type" "source-slug" "Author Name"
```

5. Verify the created files.
6. Briefly tell the user which folder was created.

## Explicit Invocation

The user may explicitly invoke this skill by starting the message with `$source-vault-scaffold` before the request text. Treat that as a strong signal to use this skill immediately.

## Created Structure

- `vault/01-Sources/<type>/<slug>/`
- `vault/01-Sources/<type>/<slug>/01-Inbox/`
- `vault/01-Sources/<type>/<slug>/03-Concepts/`
- `vault/01-Sources/<type>/<slug>/04-Code/`
- `vault/01-Sources/<type>/<slug>/05-Summaries/`
- `vault/01-Sources/<type>/<slug>/02-Chapters/` for `books`
- `vault/01-Sources/<type>/<slug>/02-Notes/` for `articles`, `docs`, `courses`
- `vault/01-Sources/<type>/<slug>/<source-title>.md`
- shared navigation files in `vault/` if they do not exist yet

## Rules

- Keep the skill instructions and metadata in English.
- The generated Markdown content and the user-facing summary must be in Ukrainian unless the user explicitly asks for another language.
- Do not overwrite an existing source folder.
- If the slug is not provided explicitly, generate it before running the script.
- If the user provides an author, pass it to the script so the source note frontmatter includes `author`.
