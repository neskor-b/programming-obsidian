#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -lt 2 ]; then
  echo "Usage: $0 \"Book Title\" slug-name" >&2
  exit 1
fi

book_title="$1"
book_slug="$2"
book_dir="$book_slug"

if [ -e "$book_dir" ]; then
  echo "Directory already exists: $book_dir" >&2
  exit 2
fi

mkdir -p \
  "$book_dir/01-Inbox" \
  "$book_dir/02-Chapters" \
  "$book_dir/03-Concepts" \
  "$book_dir/04-Code" \
  "$book_dir/05-Summaries" \
  "$book_dir/99-Meta"

cat > "$book_dir/00-Index.md" <<EOF
---
type: index
book: $book_title
aliases:
  - $book_title Index
tags:
  - book-note
  - index
created: $(date +%F)
updated: $(date +%F)
---

# $book_title

## Призначення

Центральна карта нотаток, побудованих на основі цієї книги.

## Розділи

- Додавайте сюди посилання на нотатки розділів у міру читання.

## Процес

- Сирі уривки можна тимчасово складати в [[${book_slug}/01-Inbox]]
- Нотатки розділів живуть у [[${book_slug}/02-Chapters]]
- Концепти живуть у [[${book_slug}/03-Concepts]]
- Приклади коду живуть у [[${book_slug}/04-Code]]
- Підсумки живуть у [[${book_slug}/05-Summaries]]
- Правила роботи описані в [[${book_slug}/99-Meta/CODEX_WORKFLOW]]
EOF

cat > "$book_dir/99-Meta/CODEX_WORKFLOW.md" <<EOF
# Процес Codex для цієї книги

## Що надсилати в Codex

Використовуйте такий формат:

\`\`\`text
Book: $book_title
Chapter: 1
Source type: quote | section | code
Text:
...
\`\`\`

## Що має робити Codex

1. Перевірити наявні нотатки в папці цієї книги.
2. Вирішити, чи належить ідея до нотатки розділу, концепту, коду чи підсумку.
3. Оновити існуючі нотатки, якщо це можливо.
4. Створити block references для важливих уривків і коду.
5. Додати \`[[wikilinks]]\` до пов'язаних нотаток.

## Шаблон block id

Використовуйте читабельні ідентифікатори на кшталт:

- \`^${book_slug}-ch01-rule-01\`
- \`^${book_slug}-concept-example-definition\`
- \`^${book_slug}-code-example-01\`

## Карта папок

- \`01-Inbox/\`
- \`02-Chapters/\`
- \`03-Concepts/\`
- \`04-Code/\`
- \`05-Summaries/\`
EOF

printf 'Created book vault: %s\n' "$book_dir"
