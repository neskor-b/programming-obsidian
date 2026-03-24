# Codex + Obsidian Notes

Цей workspace розділяє технічну частину для Codex і чистий vault для Obsidian, щоб можна було відкривати в Obsidian одразу всі книги й не бачити службові файли.

## Як тепер працює структура

- `vault/` - єдина папка, яку варто відкривати в Obsidian
- `vault/01-Books/<book-slug>/` - усі локальні нотатки конкретної книги
- `vault/02-Concepts/` - спільні evergreen-нотатки, які можуть посилатися на кілька книг
- `vault/03-Maps/` - тематичні мапи для великих тем і міжкнижкової навігації
- `.agents/skills/` - локальні skills для Codex
- `_templates/` - шаблони нотаток
- `_prompts/` - опційні референсні промпти
- `docs/` - технічні рішення і дослідження структури

## Чому така модель

- Obsidian бачить тільки нотатки, а не `_templates`, `_prompts` чи `.agents`
- книжкові нотатки залишаються ізольованими, тому сотні файлів не змішуються в одному каталозі
- спільні концепти не дублюються в кожній книзі, а збираються в `vault/02-Concepts/`
- міжкнижкові зв'язки будуються через path-based `[[wikilinks]]` і block references

Детальні правила описані в [docs/vault-architecture.md](/Users/bohdanne/Desktop/bohdan/BooksObsidian/docs/vault-architecture.md).

## Швидкий старт

1. Відкрийте `/Users/bohdanne/Desktop/bohdan/BooksObsidian` у Codex.
2. Відкрийте `/Users/bohdanne/Desktop/bohdan/BooksObsidian/vault` в Obsidian.
3. Надішліть у чат цитату або фрагмент розділу і вкажіть книгу та розділ.
4. Codex має сам перевірити локальні нотатки книги, спільні концепти та за потреби створити міжкнижкові лінки.

За потреби можна додатково подивитися [_prompts/obsidian-session-prompt.md](/Users/bohdanne/Desktop/bohdan/BooksObsidian/_prompts/obsidian-session-prompt.md), але копіювати його в кожен чат не потрібно.

Приклад:

```text
Book: Clean Architecture
Chapter: 1
Source type: excerpt

Text:
<вставте сюди текст>

Створи або онови потрібні нотатки.
```

## Створення нової книги

Щоб створити каркас нової книги, достатньо звичайного запиту або явного виклику skill.

Приклад:

```text
Створи нову книгу "Refactoring" у цьому vault.
Slug: refactoring
```

або

```text
$book-vault-scaffold
Створи нову книгу "Domain-Driven Design".
Slug: domain-driven-design
```

Очікуваний результат:

- нова книга в `vault/01-Books/<slug>/`
- стандартні підпапки `01-Inbox/`, `02-Chapters/`, `03-Concepts/`, `04-Code/`, `05-Summaries/`, `99-Meta/`
- оновлена навігація в `vault/01-Books/00-Books.md`

## Явний виклик skill

- `$obsidian-book-notes` - створити або оновити нотатки з уривка
- `$book-vault-scaffold` - створити каркас нової книги

## Іменування

- нотатки розділів: `ch-XX-topic.md`
- локальні або спільні концепти: `concept-topic.md` або короткий `topic.md`, якщо контекст очевидний
- нотатки коду: `code-topic.md`
- підсумки: `summary-part-name.md`

Коли існує ризик колізій між книгами, використовуйте path-based посилання на кшталт `[[01-Books/clean-architecture/03-Concepts/concept-boundary]]`.
