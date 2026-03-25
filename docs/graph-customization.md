## Ціль графа

Граф у цьому vault має показувати структуру знань, а не структуру файлової системи.

Тобто візуально головними мають бути:

- concepts
- source notes
- code notes
- playbooks

А не:

- home note
- index notes
- службові navigation hubs
- сирі capture-нотатки

## Де живуть налаштування графа

- `vault/.obsidian/app.json`
- `vault/.obsidian/graph.json`
- `vault/.obsidian/plugins/juggl/data.json`
- `vault/.obsidian/plugins/juggl/graph.css`
- `vault/.obsidian/plugins/breadcrumbs/data.json`
- `vault/.obsidian/types.json`

## Канонічні frontmatter поля

Граф і плагіни повинні спиратися на стабільні metadata-поля:

- `type`
- `scope`
- `source_type`
- `source_slug`
- `source_title`
- `sources`

## Рекомендовані значення `type`

- `home`
- `index`
- `chapter`
- `note`
- `concept`
- `code`
- `playbook`
- `capture`

`chapter` має сенс для книг і курсів. Для articles, docs і деяких courses основним source-local типом може бути `note`.

## Кольорова легенда

Основна кольорова логіка зараз живе в Juggl і прив'язана до `type`.

- `concept` — `rgb(22, 163, 74)`  
  Evergreen-концепти та узагальнення. Базовий зелений колір для ідей.
- `chapter` — `rgb(245, 158, 11)`  
  Послідовні розділи книг або курсів. Теплий amber для матеріалу, що читається лінійно.
- `note` — `rgb(6, 182, 212)`  
  Звичайні source-local notes для articles, docs і courses. Яскравий cyan для “робочих” нотаток.
- `code` — `rgb(99, 102, 241)`  
  Code notes і приклади коду. Насичений indigo для технічних артефактів.
- `playbook` — `rgb(234, 88, 12)`  
  Практичні інструкції, checklist і how-to. Активний orange-red для процедурних нотаток.
- `capture` — `rgb(100, 116, 139)`  
  Сирі capture/inbox notes. Приглушений slate, бо це ще не стабілізоване знання.
- `index` — `rgb(202, 138, 4)`  
  Index notes. Приглушений gold для навігаційних вузлів.
- `home` — `rgb(120, 113, 108)`  
  Home note. Нейтральний stone для головного навігаційного вузла.
- `class:dangling` — `rgb(148, 163, 184)`  
  Невизначені або dangling вузли.
- `class:file -class:image` — `rgb(71, 85, 105)`  
  Fallback-колір для звичайних файлів без спеціальної категорії.

## Повний перелік типів нотаток

Після перегляду vault і templates, канонічні типи зараз такі:

- `home`
- `index`
- `chapter`
- `note`
- `concept`
- `code`
- `playbook`
- `capture`

Стислий підсумок джерела не виділяється в окремий `type`: він живе як секція всередині `chapter` або `note`.

Якщо додається новий `type`, для нього потрібно одночасно:

1. додати template
2. додати стиль у `vault/.obsidian/plugins/juggl/data.json`
3. вирішити, чи його треба приховувати або деемфазувати через `scope`

## Рекомендовані значення `scope`

- `sources`
- `source-type-index`
- `shared-concepts`
- `topic-maps`
- `playbooks`
- `inbox`
- `shared-evergreen`

`scope` варто використовувати лише там, де воно реально потрібне для навігації або graph filtering.

## Правила відображення

- `type` визначає основний колір і категорію вузла
- `scope` використовується для приховування або приглушення глобальних index notes
- global graph має приховувати великі navigation hubs, якщо вони засмічують картину
- Juggl має стилізувати `playbook` і `capture` окремо від `concept` та `code`

## Які вузли приховувати або деемфазувати

Зазвичай варто приховувати або деемфазувати:

- `home`
- `scope: sources`
- `scope: source-type-index`
- `scope: shared-concepts`
- `scope: topic-maps`
- `scope: playbooks`
- `scope: inbox`

Ці вузли потрібні для навігації, але вони не повинні домінувати граф.

## Як працювати з Breadcrumbs

Breadcrumbs корисний для послідовних джерел:

- книги
- курси
- великі документи з чіткою внутрішньою структурою

Для статей і коротких docs не потрібно насильно додавати `up/down/next/prev`, якщо це не покращує навігацію.

## Зміни після міграції

Після переходу на `01-Sources/` потрібно:

1. оновити pinned або ignored index notes в `app.json`
2. оновити CSS selectors у `Juggl`, які прив'язані до старих `scope`
3. додати стилі для `playbook` і `capture`
4. перевірити, що нові `source_type` і `scope` не створюють графовий шум
5. перевірити global graph і Juggl на кількох реальних нотатках
