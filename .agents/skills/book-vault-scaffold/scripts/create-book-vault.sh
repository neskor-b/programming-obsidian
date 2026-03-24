#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -lt 2 ] || [ "$#" -gt 3 ]; then
  echo "Usage: $0 \"Book Title\" slug-name [\"Author Name\"]" >&2
  exit 1
fi

book_title="$1"
book_slug="$2"
book_author="${3:-}"
book_note_name="$(printf '%s' "$book_title" | sed 's#[/:]# - #g; s#[?*<>|"]# #g; s#  *# #g; s#^ ##; s# $##')"
book_note_file="$book_note_name.md"
yaml_book_title="$(printf '%s' "$book_title" | sed "s/'/''/g")"
yaml_book_alias="$(printf '%s Index' "$book_title" | sed "s/'/''/g")"
yaml_book_author=""
yaml_book_author_alias=""
book_link_label="$book_title"

if [ -n "$book_author" ]; then
  yaml_book_author="$(printf '%s' "$book_author" | sed "s/'/''/g")"
  yaml_book_author_alias="$(printf '%s (%s)' "$book_title" "$book_author" | sed "s/'/''/g")"
  book_link_label="$book_title ($book_author)"
fi

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
  "$book_dir/05-Summaries"

cat > "$book_dir/$book_note_file" <<EOF
---
type: index
book: '$yaml_book_title'
EOF

if [ -n "$yaml_book_author" ]; then
  cat >> "$book_dir/$book_note_file" <<EOF
author: '$yaml_book_author'
EOF
fi

cat >> "$book_dir/$book_note_file" <<EOF
aliases:
EOF

if [ -n "$yaml_book_author_alias" ]; then
  cat >> "$book_dir/$book_note_file" <<EOF
  - '$yaml_book_author_alias'
EOF
fi

cat >> "$book_dir/$book_note_file" <<EOF
  - '$yaml_book_alias'
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

book_link="- [[01-Books/$book_slug/$book_note_name|$book_link_label]]"
if ! grep -Fqx -- "$book_link" "$books_index"; then
  printf '%s\n' "$book_link" >> "$books_index"
fi

printf 'Created book vault: %s\n' "$book_dir"
