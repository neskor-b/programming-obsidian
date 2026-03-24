#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -lt 2 ]; then
  echo "Usage: $0 \"Book Title\" slug-name" >&2
  exit 1
fi

book_title="$1"
book_slug="$2"
vault_dir="vault"
books_dir="$vault_dir/01-Books"
concepts_dir="$vault_dir/02-Concepts"
maps_dir="$vault_dir/03-Maps"
book_dir="$books_dir/$book_slug"
today="$(date +%F)"
books_index="$books_dir/00-Books.md"

if [ -e "$book_dir" ]; then
  echo "Directory already exists: $book_dir" >&2
  exit 2
fi

mkdir -p "$books_dir" "$concepts_dir" "$maps_dir"

if [ ! -f "$vault_dir/00-Home.md" ]; then
  cat > "$vault_dir/00-Home.md" <<EOF
---
type: home
created: $today
updated: $today
---

# Книжковий vault

## Навігація

- [[01-Books/00-Books|Усі книги]]
- [[02-Concepts/00-Concepts|Спільні концепти]]
- [[03-Maps/00-Maps|Тематичні мапи]]

## Принцип

- Кожна книга живе в \`01-Books/<book-slug>/\`
- Повторювані міжкнижкові ідеї живуть у \`02-Concepts/\`
- Великі теми з багатьма зв'язками збираються в \`03-Maps/\`
EOF
fi

if [ ! -f "$books_index" ]; then
  cat > "$books_index" <<EOF
---
type: index
scope: books
created: $today
updated: $today
---

# Усі книги

## Індекси книг

EOF
fi

if [ ! -f "$concepts_dir/00-Concepts.md" ]; then
  cat > "$concepts_dir/00-Concepts.md" <<EOF
---
type: index
scope: shared-concepts
created: $today
updated: $today
---

# Спільні концепти

Тут живуть evergreen-нотатки, які збирають ідеї з кількох книг і посилаються на конкретні книжкові джерела через block references.
EOF
fi

if [ ! -f "$maps_dir/00-Maps.md" ]; then
  cat > "$maps_dir/00-Maps.md" <<EOF
---
type: index
scope: topic-maps
created: $today
updated: $today
---

# Тематичні мапи

Тут зберігаються MOC-нотатки для великих тем, які вже перетнули кілька книг і багато концептів.
EOF
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
created: $today
updated: $today
---

# $book_title

## Призначення

Центральна карта нотаток, побудованих на основі цієї книги.

## Навігація

- [[00-Home|Головна]]
- [[01-Books/00-Books|Усі книги]]
- [[02-Concepts/00-Concepts|Спільні концепти]]
- [[01-Books/${book_slug}/99-Meta/CODEX_WORKFLOW|Правила роботи для цієї книги]]

## Розділи

- Додавайте сюди посилання на нотатки розділів у міру читання.

## Робочі папки

- \`01-Inbox/\` для сирих уривків
- \`02-Chapters/\` для нотаток розділів
- \`03-Concepts/\` для локальних концептів книги
- \`04-Code/\` для прикладів коду
- \`05-Summaries/\` для підсумків

## Міжкнижкові зв'язки

- Повторювані концепти виносьте в [[02-Concepts/00-Concepts]]
- Якщо тема вже охоплює кілька книг, використовуйте [[03-Maps/00-Maps]]
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
2. Перевірити shared notes у \`vault/02-Concepts/\` і релевантні MOC у \`vault/03-Maps/\`.
3. Вирішити, чи належить ідея до локальної книжкової нотатки, shared concept note або topic map.
4. Оновити існуючі нотатки, якщо це можливо.
5. Створити block references для важливих уривків і коду.
6. Додати \`[[wikilinks]]\` між книжковими та shared нотатками.

## Шаблон block id

Використовуйте читабельні ідентифікатори на кшталт:

- \`^${book_slug}-ch01-rule-01\`
- \`^${book_slug}-concept-example-definition\`
- \`^${book_slug}-code-example-01\`

## Карта папок

- \`vault/01-Books/${book_slug}/01-Inbox/\`
- \`vault/01-Books/${book_slug}/02-Chapters/\`
- \`vault/01-Books/${book_slug}/03-Concepts/\`
- \`vault/01-Books/${book_slug}/04-Code/\`
- \`vault/01-Books/${book_slug}/05-Summaries/\`
- \`vault/02-Concepts/\`
- \`vault/03-Maps/\`
EOF

book_link="- [[01-Books/$book_slug/00-Index|$book_title]]"
if ! grep -Fqx "$book_link" "$books_index"; then
  printf '%s\n' "$book_link" >> "$books_index"
fi

printf 'Created book vault: %s\n' "$book_dir"
