---
type: concept
source_type: "books"
source_slug: "a-philosophy-of-software-design"
scope: "source-local"
sources:
  - "a-philosophy-of-software-design"
title: "Модульний дизайн інкапсулює складність"
aliases:
  - "Modular design encapsulates complexity"
tags:
  - source-note
  - concept
created: 2026-03-24
updated: 2026-03-24
source: "chapter-1-excerpt"
---

# Модульний дизайн інкапсулює складність

## Визначення

Модульний дизайн не усуває всю складність системи, але обмежує площу контакту з нею. Система ділиться на відносно незалежні модулі, кожен з яких приховує внутрішні рішення настільки, щоб розробник міг змінювати один модуль без потреби тримати в голові деталі решти системи.

^aphsd-modular-design-definition

## Чому це важливо

Ця ідея переводить боротьбу зі складністю з рівня "зробімо все простим" до більш реалістичного питання: яку складність ми не можемо прибрати, але можемо якісно локалізувати. Без такого локалізування масштаб системи швидко перевищує когнітивні межі команди.

## Ознаки в коді

- Модуль має чітку межу та інтерфейс, який не змушує читача знати його внутрішній устрій.
- Внесення змін у модуль рідко вимагає каскаду синхронних змін в інших частинах системи.
- Внутрішні special cases і технічні деталі не витікають назовні через API, імена або протоколи взаємодії.

## Джерела

- [[01-Sources/books/a-philosophy-of-software-design/02-Chapters/ch-01-introduction-complexity#^aphsd-ch01-thesis-two-approaches]]
- [[01-Sources/books/a-philosophy-of-software-design/02-Chapters/ch-01-introduction-complexity#^aphsd-ch01-main-idea]]

## Пов'язані концепти

- [[02-Concepts/complexity-is-the-central-design-problem|Складність є центральною проблемою дизайну ПЗ]]
- [[01-Sources/books/a-philosophy-of-software-design/03-Concepts/design-is-continuous-and-incremental|Дизайн є безперервним та інкрементальним]]

## Пов'язаний код

- Окремі code notes для цього концепту ще не створені.
