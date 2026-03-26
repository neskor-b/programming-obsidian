---
type: index
source_type: 'books'
source_slug: 'clean-architecture'
source_title: 'Clean Architecture'
author: 'Robert C. Martin'
aliases:
  - 'Clean Architecture (Robert C. Martin)'
  - 'Clean Architecture: A Craftsman''s Guide to Software Structure and Design'
  - 'Clean Architecture: A Craftsman''s Guide to Software Structure and Design (Robert C. Martin)'
  - 'Clean Architecture Index'
tags:
  - source-note
  - index
created: 2026-03-24
updated: 2026-03-26
---

# Clean Architecture

## Призначення

Центральна карта нотаток, побудованих на основі цієї книги.

## Навігація

- [[00-Home|Головна]]
- [[01-Sources/00-Sources|Усі джерела]]
- [[01-Sources/books/00-Books|Книги]]
- [[02-Concepts/00-Concepts|Спільні концепти]]
- [[04-Playbooks/00-Playbooks|Плейбуки]]

## Розділи

- [[01-Sources/books/clean-architecture/02-Chapters/ch-01-design-and-architecture|Розділ 1. Що таке дизайн і архітектура]]
- [[01-Sources/books/clean-architecture/02-Chapters/ch-02-a-tale-of-two-values|Розділ 2. Історія про дві цінності]]
- [[01-Sources/books/clean-architecture/02-Chapters/ch-03-paradigm-overview|Розділ 3. Огляд парадигм]]
- [[01-Sources/books/clean-architecture/02-Chapters/ch-04-structured-programming|Розділ 4. Структурне програмування]]
- [[01-Sources/books/clean-architecture/02-Chapters/ch-05-object-oriented-programming|Розділ 5. Об'єктно-орієнтоване програмування]]
- [[01-Sources/books/clean-architecture/02-Chapters/ch-06-functional-programming|Розділ 6. Функціональне програмування]]

## Локальні концепти

- [[01-Sources/books/clean-architecture/03-Concepts/design-architecture-continuum|Єдність дизайну й архітектури]]
- [[01-Sources/books/clean-architecture/03-Concepts/cleanliness-preserves-productivity|Охайність зберігає продуктивність]]
- [[01-Sources/books/clean-architecture/03-Concepts/two-values-of-software|Дві цінності програмного забезпечення]]
- [[01-Sources/books/clean-architecture/03-Concepts/architecture-is-important-not-urgent|Архітектура важлива, але не термінова]]
- [[01-Sources/books/clean-architecture/03-Concepts/paradigms-impose-discipline|Парадигми вводять дисципліну через обмеження]]
- [[01-Sources/books/clean-architecture/03-Concepts/functional-decomposition-needs-structured-programming|Функціональна декомпозиція потребує структурного програмування]]
- [[01-Sources/books/clean-architecture/03-Concepts/oo-controls-dependency-direction-through-polymorphism|ООП дає контроль над напрямком залежностей через поліморфізм]]
- [[01-Sources/books/clean-architecture/03-Concepts/immutability-removes-classes-of-concurrency-problems|Незмінність прибирає цілі класи проблем конкурентності]]
- [[01-Sources/books/clean-architecture/03-Concepts/segregation-of-mutability-localizes-concurrency-risk|Сегрегація змінності локалізує ризики конкурентності]]
- [[01-Sources/books/clean-architecture/03-Concepts/event-sourcing-stores-transactions-not-state|Event sourcing зберігає транзакції, а не стан]]

## Приклади коду

- [[01-Sources/books/clean-architecture/04-Code/c-function-pointers-enable-polymorphism|Вказівники на функції в C як основа поліморфізму]]
- [[01-Sources/books/clean-architecture/04-Code/clojure-atom-controls-mutation-with-swap|Clojure atom дисциплінує мутацію через swap!]]

## Міжджерельні концепти з цієї книги

- [[02-Concepts/architecture-governs-cost-of-change|Архітектура визначає вартість змін]]
- [[02-Concepts/tests-falsify-not-prove-correctness|Тести спростовують помилки, а не доводять коректність]]
- [[02-Concepts/dependency-inversion|Інверсія залежностей]]
- [[02-Concepts/plugin-architecture-via-polymorphism|Поліморфізм дозволяє будувати plugin architecture]]

## Робочі папки

- `01-Inbox/` для сирих уривків
- `02-Chapters/` для нотаток розділів
- `03-Concepts/` для локальних концептів книги
- `04-Code/` для прикладів коду

Короткий підсумок розділу та практичні правила варто тримати всередині відповідної нотатки розділу.

## Міжджерельні зв'язки

- Повторювані концепти виносьте в [[02-Concepts/00-Concepts]]
- Якщо тема вже охоплює кілька джерел, використовуйте [[03-Maps/00-Maps]]
- Якщо з ідей виростає процедура, оновлюйте [[04-Playbooks/00-Playbooks]]
