# Codex + Obsidian Notes

Цей workspace підготовлений для процесу, у якому Codex перетворює уривки з технічних книжок на пов'язані нотатки для Obsidian.

## Мета

Перетворювати вставлені цитати, уривки та фрагменти розділів на пов'язані Obsidian Markdown-нотатки з:

- нотатками розділів
- нотатками концептів
- нотатками з прикладами коду
- підсумковими нотатками
- `[[wikilinks]]` між файлами
- block references на кшталт `[[note#^block-id]]`

## Структура

- `_templates/` - шаблони нотаток для Codex
- `_prompts/` - повторно використовувані промпти для сесій
- `.agents/skills/obsidian-book-notes/` - repo-level skill для Codex у межах цього workspace
- `clean-code/` - поточна папка книги

## Швидкий старт

1. Відкрийте цю папку в Codex.
2. Відкрийте [_prompts/obsidian-session-prompt.md](/Users/bohdanne/Desktop/bohdan/books/_prompts/obsidian-session-prompt.md).
3. Вставте цей prompt у новий чат Codex.
4. Після цього надсилайте цитату або фрагмент розділу і вказуйте, куди він належить.

Приклад:

```text
Book: Clean Code
Chapter: 1
Source type: excerpt

Text:
<вставте сюди текст>

Створи або онови потрібні нотатки.
```

## Іменування

- нотатки розділів: `ch-XX-topic.md`
- нотатки концептів: `concept-topic.md`
- нотатки коду: `code-topic.md`
- підсумки: `summary-part-name.md`

Для стабільних посилань використовуйте короткі, передбачувані назви файлів.
