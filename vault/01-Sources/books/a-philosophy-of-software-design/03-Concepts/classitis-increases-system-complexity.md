---
type: concept
scope: "source-local"
source_type: "books"
source_slug: "a-philosophy-of-software-design"
source_title: "A Philosophy of Software Design"
sources:
  - "a-philosophy-of-software-design"
title: "Classitis збільшує складність системи"
aliases:
  - "Classitis"
  - "Small classes can increase complexity"
tags:
  - source-note
  - concept
created: 2026-07-26
updated: 2026-07-26
source: "chapter-4-excerpt"
---

# Classitis збільшує складність системи

## Визначення

Classitis — схильність вважати більшу кількість малих класів і методів автоматично кращим дизайном. Такий поділ може зробити кожну одиницю локально простою, але збільшити загальносистемну складність через накопичення інтерфейсів, зв'язків, імен і boilerplate.

^aphsd-classitis-definition

## Чому це важливо

Розмір коду не вимірює якість абстракції. Кожна нова межа має власну ціну: її потрібно назвати, задокументувати, знайти й утримувати в робочій пам'яті. Поділ корисний лише тоді, коли новий модуль приховує достатньо складності або створює справді незалежну відповідальність.

## Ознаки в коді

- Для одного типового сценарію треба створити ланцюжок одноразових wrapper-об'єктів.
- Методи лише перейменовують один очевидний вираз і не приховують політики чи механізму.
- Зміна поведінки потребує переходів через багато дрібних файлів і контрактів.
- Класи прості окремо, але їхню взаємодію важко відновити без наскрізного читання.
- Поділ обґрунтовують лімітом рядків, а не якістю нової абстракції.

> [!warning] Не плутати з модульністю
> Проблема не в малих класах як таких. Проблема виникає, коли нова межа не зменшує залежності й не приховує складності.

## Джерела

- [[01-Sources/books/a-philosophy-of-software-design/02-Chapters/ch-04-modules-should-be-deep#^aphsd-ch04-thesis-shallow]]
- [[01-Sources/books/a-philosophy-of-software-design/02-Chapters/ch-04-modules-should-be-deep#^aphsd-ch04-thesis-classitis]]
- [[01-Sources/books/a-philosophy-of-software-design/02-Chapters/ch-04-modules-should-be-deep#^aphsd-ch04-rule-no-size-threshold]]

## Пов'язані концепти

- [[01-Sources/books/a-philosophy-of-software-design/03-Concepts/deep-modules-hide-complexity|Глибокі модулі приховують складність]]
- [[01-Sources/books/a-philosophy-of-software-design/03-Concepts/modular-design-encapsulates-complexity|Модульний дизайн інкапсулює складність]]

## Пов'язаний код

- Ланцюжок `FileInputStream` → `BufferedInputStream` → `ObjectInputStream` ілюструє, як розділення можливостей ускладнює найчастіший сценарій.
