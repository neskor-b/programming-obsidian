---
type: concept
scope: "source-local"
source_type: "books"
source_slug: "a-philosophy-of-software-design"
source_title: "A Philosophy of Software Design"
sources:
  - "a-philosophy-of-software-design"
title: "Симптоми складності"
aliases:
  - "Symptoms of complexity"
  - "Change amplification, cognitive load, and unknown unknowns"
tags:
  - source-note
  - concept
created: 2026-07-26
updated: 2026-07-26
source: "chapter-2-excerpt"
---

# Симптоми складності

## Визначення

Складність проявляється трьома способами: проста зміна розповзається багатьма місцями, завдання потребує надмірного обсягу знань або розробник не може заздалегідь з'ясувати, що саме треба врахувати. Останній симптом — невідомі невідомості — найнебезпечніший, бо проблема стає видимою лише після появи помилки.

^aphsd-complexity-symptoms-definition

## Чому це важливо

Ці симптоми дають практичний спосіб оцінювати дизайн без абстрактної метрики складності. Кількість рядків коду тут ненадійна: довша, але явна реалізація може бути простішою, якщо вона знижує когнітивне навантаження і робить обсяг зміни передбачуваним.

## Ознаки в коді

- **Каскадні зміни:** одне логічне рішення продубльоване в багатьох місцях, які треба синхронно редагувати.
- **Когнітивне навантаження:** для локального завдання потрібно пам'ятати численні API, глобальні змінні, винятки або неявні обов'язки.
- **Невідомі невідомості:** залежні місця й важливі правила неможливо надійно знайти пошуком, типами, тестами або документацією.
- Після невеликої зміни команда змушена читати непропорційно велику частину системи, щоб набути впевненості.

## Джерела

- [[01-Sources/books/a-philosophy-of-software-design/02-Chapters/ch-02-nature-of-complexity#^aphsd-ch02-thesis-symptoms]]
- [[01-Sources/books/a-philosophy-of-software-design/02-Chapters/ch-02-nature-of-complexity#^aphsd-ch02-rule-cost]]

## Пов'язані концепти

- [[01-Sources/books/a-philosophy-of-software-design/03-Concepts/dependencies-and-obscurity|Залежності та неочевидність породжують складність]]
- [[02-Concepts/architecture-governs-cost-of-change|Архітектура визначає вартість змін]]
- [[02-Concepts/complexity-is-the-central-design-problem|Складність є центральною проблемою дизайну ПЗ]]

## Пов'язаний код

- Приклад із кольором банера описаний у нотатці розділу, але не потребує окремої code-note.

## Пов'язані playbooks

- Окремий playbook із цього уривка не створено.
