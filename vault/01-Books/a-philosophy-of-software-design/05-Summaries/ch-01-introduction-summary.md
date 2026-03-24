---
type: summary
book: "a-philosophy-of-software-design"
title: "Підсумок розділу 1: складність як головний орієнтир дизайну"
aliases:
  - "Chapter 1 summary"
tags:
  - book-note
  - summary
created: 2026-03-24
updated: 2026-03-24
source: "chapter-1-excerpt"
---

# Підсумок розділу 1: складність як головний орієнтир дизайну

## Підсумок

Перший розділ формулює головну рамку книги: якість дизайну визначається тим, наскільки система лишається зрозумілою в процесі змін. Складність зростає природно, тому розробник має або прибирати її, спрощуючи код, або ізолювати її модульними межами. Звідси випливають і процесні наслідки: дизайн не можна завершити наперед, його треба безперервно переглядати в incremental development, а власне чуття до дизайну найкраще розвивають code review та вміння помічати red flags.

^aphsd-ch01-summary

## Практичні правила

- Коли чергова зміна стає важкою для пояснення, спершу підозрюйте зайву складність, а не лише нестачу часу.
- Якщо складність неможливо прибрати, сховайте її за межею модуля так, щоб інші частини системи працювали з простішою моделлю.
- Плануйте редизайн як нормальну частину розробки, а не як рідкісний "великий рефакторинг".
- Використовуйте code review не лише для пошуку помилок, а й для тренування зору на structural red flags.

## Посилання

- [[01-Books/a-philosophy-of-software-design/02-Chapters/ch-01-introduction-complexity|Розділ 1: вступ]]
- [[02-Concepts/complexity-is-the-central-design-problem|Складність є центральною проблемою дизайну ПЗ]]
- [[01-Books/a-philosophy-of-software-design/03-Concepts/modular-design-encapsulates-complexity|Модульний дизайн інкапсулює складність]]
- [[01-Books/a-philosophy-of-software-design/03-Concepts/design-is-continuous-and-incremental|Дизайн є безперервним та інкрементальним]]
- [[01-Books/a-philosophy-of-software-design/03-Concepts/red-flags-guide-design-judgment|Red flags спрямовують дизайнерське судження]]
