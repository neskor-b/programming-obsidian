#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -lt 3 ] || [ "$#" -gt 4 ]; then
  echo "Usage: $0 \"Source Title\" source-type slug-name [\"Author Name\"]" >&2
  exit 1
fi

source_title="$1"
source_type="$2"
source_slug="$3"
source_author="${4:-}"

case "$source_type" in
  books|articles|docs|courses)
    ;;
  *)
    echo "Unsupported source type: $source_type" >&2
    exit 2
    ;;
esac

source_note_name="$(printf '%s' "$source_title" | sed 's#[/:]# - #g; s#[?*<>|"]# #g; s#  *# #g; s#^ ##; s# $##')"
source_note_file="$source_note_name.md"
yaml_source_title="$(printf '%s' "$source_title" | sed "s/'/''/g")"
yaml_source_author=""
if [ -n "$source_author" ]; then
  yaml_source_author="$(printf '%s' "$source_author" | sed "s/'/''/g")"
fi

vault_dir="vault"
sources_dir="$vault_dir/01-Sources"
type_dir="$sources_dir/$source_type"
concepts_dir="$vault_dir/02-Concepts"
maps_dir="$vault_dir/03-Maps"
playbooks_dir="$vault_dir/04-Playbooks"
inbox_dir="$vault_dir/05-Inbox"
source_dir="$type_dir/$source_slug"
today="$(date +%F)"
sources_index="$sources_dir/00-Sources.md"

case "$source_type" in
  books)
    main_notes_dir="02-Chapters"
    main_notes_label="розділів"
    source_type_label="Книги"
    type_index_name="00-Books.md"
    type_scope="source-type-index"
    ;;
  articles)
    main_notes_dir="02-Notes"
    main_notes_label="нотаток"
    source_type_label="Статті"
    type_index_name="00-Articles.md"
    type_scope="source-type-index"
    ;;
  docs)
    main_notes_dir="02-Notes"
    main_notes_label="нотаток"
    source_type_label="Документація"
    type_index_name="00-Docs.md"
    type_scope="source-type-index"
    ;;
  courses)
    main_notes_dir="02-Notes"
    main_notes_label="нотаток"
    source_type_label="Курси"
    type_index_name="00-Courses.md"
    type_scope="source-type-index"
    ;;
esac

type_index="$type_dir/$type_index_name"

if [ -e "$source_dir" ]; then
  echo "Directory already exists: $source_dir" >&2
  exit 3
fi

mkdir -p "$type_dir" "$concepts_dir" "$maps_dir" "$playbooks_dir" "$inbox_dir"

if [ ! -f "$vault_dir/00-Home.md" ]; then
  cat > "$vault_dir/00-Home.md" <<EOF
---
type: home
created: $today
updated: $today
---

# Programming knowledge vault

## Навігація

- [[01-Sources/00-Sources|Усі джерела]]
- [[02-Concepts/00-Concepts|Спільні концепти]]
- [[03-Maps/00-Maps|Тематичні мапи]]
- [[04-Playbooks/00-Playbooks|Playbooks]]
- [[05-Inbox/00-Inbox|Inbox]]
EOF
fi

if [ ! -f "$sources_index" ]; then
  cat > "$sources_index" <<EOF
---
type: index
scope: sources
created: $today
updated: $today
---

# Усі джерела

## Типи джерел

- [[01-Sources/books/00-Books|Книги]]
- [[01-Sources/articles/00-Articles|Статті]]
- [[01-Sources/docs/00-Docs|Документація]]
- [[01-Sources/courses/00-Courses|Курси]]
EOF
fi

if [ ! -f "$type_index" ]; then
  cat > "$type_index" <<EOF
---
type: index
scope: $type_scope
source_type: $source_type
created: $today
updated: $today
---

# $source_type_label

## Джерела

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
EOF
fi

if [ ! -f "$playbooks_dir/00-Playbooks.md" ]; then
  cat > "$playbooks_dir/00-Playbooks.md" <<EOF
---
type: index
scope: playbooks
created: $today
updated: $today
---

# Playbooks
EOF
fi

if [ ! -f "$inbox_dir/00-Inbox.md" ]; then
  cat > "$inbox_dir/00-Inbox.md" <<EOF
---
type: index
scope: inbox
created: $today
updated: $today
---

# Inbox
EOF
fi

mkdir -p \
  "$source_dir/01-Inbox" \
  "$source_dir/$main_notes_dir" \
  "$source_dir/03-Concepts" \
  "$source_dir/04-Code" \
  "$source_dir/05-Summaries"

cat > "$source_dir/$source_note_file" <<EOF
---
type: index
source_type: '$source_type'
source_slug: '$source_slug'
source_title: '$yaml_source_title'
EOF

if [ -n "$yaml_source_author" ]; then
  cat >> "$source_dir/$source_note_file" <<EOF
author: '$yaml_source_author'
EOF
fi

cat >> "$source_dir/$source_note_file" <<EOF
aliases:
  - '$yaml_source_title'
tags:
  - source-note
  - index
created: $today
updated: $today
---

# $source_title

## Призначення

Центральна карта нотаток, побудованих на основі цього джерела.

## Навігація

- [[00-Home|Головна]]
- [[01-Sources/00-Sources|Усі джерела]]
- [[02-Concepts/00-Concepts|Спільні концепти]]
- [[04-Playbooks/00-Playbooks|Playbooks]]

## Основні нотатки

- Додавайте сюди посилання на локальні нотатки у міру читання або проходження джерела.

## Робочі папки

- \`01-Inbox/\` для сирих фрагментів
- \`$main_notes_dir/\` для $main_notes_label
- \`03-Concepts/\` для локальних концептів джерела
- \`04-Code/\` для прикладів коду
- \`05-Summaries/\` для підсумків

## Міжджерельні зв'язки

- Повторювані концепти виносьте в [[02-Concepts/00-Concepts]]
- Практичні процедури виносьте в [[04-Playbooks/00-Playbooks]]
- Якщо тема вже охоплює багато джерел, використовуйте [[03-Maps/00-Maps]]
EOF

source_link="- [[01-Sources/$source_type/$source_slug/$source_note_name|$source_title]]"
if ! grep -Fqx -- "$source_link" "$type_index"; then
  printf '%s\n' "$source_link" >> "$type_index"
fi

printf 'Created source vault: %s\n' "$source_dir"
