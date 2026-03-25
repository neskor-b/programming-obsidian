---
type: concept
source_type: "books"
source_slug: "clean-architecture"
source_title: "Clean Architecture"
scope: "source-local"
sources:
  - "clean-architecture"
title: "Парадигми вводять дисципліну через обмеження"
aliases:
  - "Paradigms impose discipline"
  - "Negative paradigms"
tags:
  - source-note
  - concept
created: 2026-03-24
updated: 2026-03-25
source: "chapter-3-excerpt"
---

# Парадигми вводять дисципліну через обмеження

## Визначення

У цьому розділі парадигми програмування описані не як нові суперсили розробника, а як корисні обмеження. Кожна з трьох парадигм забирає частину свободи: `structured programming` обмежує прямі стрибки керування, `object-oriented programming` дисциплінує непряме передавання керування через поліморфізм, а `functional programming` обмежує присвоєння й змінність. Саме ці обмеження роблять код придатнішим до архітектурного мислення.

^clean-architecture-paradigms-discipline-definition

## Чому це важливо

Цей концепт прибирає романтизоване уявлення, що архітектура починається лише з високорівневих схем. Насправді архітектурна якість багато в чому залежить від того, які базові свободи ми свідомо обмежуємо в щоденному коді. Парадигми створюють інженерну дисципліну, на якій потім будуються алгоритми, межі компонентів і правила роботи з даними.

## Ознаки в коді

- Алгоритми будуються на керованих конструкціях, а не на хаотичних переходах керування.
- Межі між компонентами проходять через абстракції та поліморфізм, а не через жорстке знання деталей один про одного.
- Дані або незмінні, або змінюються в дуже вузько контрольованих місцях.

## Джерела

- [[01-Sources/books/clean-architecture/02-Chapters/ch-03-paradigm-overview#^clean-architecture-ch03-main-idea]]
- [[01-Sources/books/clean-architecture/02-Chapters/ch-03-paradigm-overview#^clean-architecture-ch03-thesis-structured]]
- [[01-Sources/books/clean-architecture/02-Chapters/ch-03-paradigm-overview#^clean-architecture-ch03-thesis-oop]]
- [[01-Sources/books/clean-architecture/02-Chapters/ch-03-paradigm-overview#^clean-architecture-ch03-thesis-functional]]
- [[01-Sources/books/clean-architecture/02-Chapters/ch-03-paradigm-overview#^clean-architecture-ch03-thesis-negative]]
- [[01-Sources/books/clean-architecture/02-Chapters/ch-03-paradigm-overview#^clean-architecture-ch03-thesis-architecture]]

## Пов'язані концепти

- [[01-Sources/books/clean-architecture/03-Concepts/design-architecture-continuum|Єдність дизайну й архітектури]]
- [[01-Sources/books/clean-architecture/03-Concepts/functional-decomposition-needs-structured-programming|Функціональна декомпозиція потребує структурного програмування]]

## Пов'язаний код

- Окремі code notes для цього концепту ще не створені.
