---
type: concept
book: "a-philosophy-of-software-design"
scope: "book-local"
books:
  - "a-philosophy-of-software-design"
title: "Дизайн є безперервним та інкрементальним"
aliases:
  - "Software design is never done"
  - "Incremental development enables redesign"
tags:
  - book-note
  - concept
created: 2026-03-24
updated: 2026-03-24
source: "chapter-1-excerpt"
---

# Дизайн є безперервним та інкрементальним

## Визначення

У програмних системах дизайн не закінчується після стартової фази проєкту. Оскільки систему можна суттєво змінювати вже під час розробки, хороший процес розтягує дизайн у часі: маленькі інкременти виявляють вади початкових рішень, а команда свідомо використовує це для постійного редизайну.

^aphsd-design-continuous-definition

## Чому це важливо

Цей концепт прямо протистоїть waterfall-мисленню, де дизайн вважається завершеним до реального зіткнення з кодом. Для ПЗ така модель небезпечна, бо проблеми архітектури зазвичай стають видимими лише тоді, коли система вже взаємодіє з реальними вимогами, залежностями й компромісами.

## Ознаки в коді

- Команда закладає час не лише на feature work, а й на покращення структури після нових спостережень.
- Архітектурні рішення можна коригувати без повного переписування системи.
- Кожна ітерація не тільки додає поведінку, а й очищує попередні неточності дизайну.

## Книжки-джерела

- [[01-Books/a-philosophy-of-software-design/02-Chapters/ch-01-introduction-complexity#^aphsd-ch01-thesis-continuous-design]]
- [[01-Books/a-philosophy-of-software-design/02-Chapters/ch-01-introduction-complexity#^aphsd-ch01-thesis-waterfall]]
- [[01-Books/a-philosophy-of-software-design/02-Chapters/ch-01-introduction-complexity#^aphsd-ch01-quote-incremental]]

## Пов'язані концепти

- [[02-Concepts/complexity-is-the-central-design-problem|Складність є центральною проблемою дизайну ПЗ]]
- [[01-Books/a-philosophy-of-software-design/03-Concepts/modular-design-encapsulates-complexity|Модульний дизайн інкапсулює складність]]
- [[02-Concepts/architecture-governs-cost-of-change|Архітектура визначає вартість змін]]

## Пов'язаний код

- Окремі code notes для цього концепту ще не створені.
