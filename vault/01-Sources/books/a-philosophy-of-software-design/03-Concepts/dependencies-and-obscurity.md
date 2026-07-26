---
type: concept
scope: "source-local"
source_type: "books"
source_slug: "a-philosophy-of-software-design"
source_title: "A Philosophy of Software Design"
sources:
  - "a-philosophy-of-software-design"
title: "Залежності та неочевидність породжують складність"
aliases:
  - "Dependencies and obscurity cause complexity"
tags:
  - source-note
  - concept
created: 2026-07-26
updated: 2026-07-26
source: "chapter-2-excerpt"
---

# Залежності та неочевидність породжують складність

## Визначення

Залежність виникає, коли фрагмент коду не можна правильно зрозуміти або змінити ізольовано. Неочевидність виникає, коли важлива інформація, правило чи сама залежність приховані від розробника. Залежності неминучі, але хороший дизайн зменшує їхню кількість і робить решту простими, явними та легкими для виявлення.

^aphsd-dependencies-obscurity-definition

## Чому це важливо

Залежності спричиняють каскадні зміни й когнітивне навантаження, а неочевидність — невідомі невідомості та додаткове навантаження. Тому якісний API не просто скорочує кількість зв'язків: він замінює приховані й розпорошені зв'язки на такі, які можна назвати, знайти та перевірити компілятором або іншими інструментами.

## Ознаки в коді

- Зміна протоколу, сигнатури або спільного правила потребує узгоджених правок у кількох компонентах.
- Важливе обмеження можна відновити лише з випадкових використань, а не з імені, типу, API чи документації.
- Однакові рішення записані окремо й не мають явного спільного джерела.
- Документація змушена докладно компенсувати структуру, яку сам код не робить очевидною.
- Непослідовні імена або правила приховують відмінності й залежності.

## Джерела

- [[01-Sources/books/a-philosophy-of-software-design/02-Chapters/ch-02-nature-of-complexity#^aphsd-ch02-thesis-causes]]
- [[01-Sources/books/a-philosophy-of-software-design/02-Chapters/ch-02-nature-of-complexity#^aphsd-ch02-rule-explicit-dependencies]]

## Пов'язані концепти

- [[01-Sources/books/a-philosophy-of-software-design/03-Concepts/complexity-symptoms|Симптоми складності]]
- [[01-Sources/books/a-philosophy-of-software-design/03-Concepts/modular-design-encapsulates-complexity|Модульний дизайн інкапсулює складність]]
- [[02-Concepts/dependency-inversion|Інверсія залежностей]]

## Пов'язаний код

- Окремі code notes для цього концепту ще не створені.

## Пов'язані playbooks

- Окремий playbook із цього уривка не створено.
