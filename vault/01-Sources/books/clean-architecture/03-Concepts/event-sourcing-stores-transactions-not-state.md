---
type: concept
source_type: "books"
source_slug: "clean-architecture"
source_title: "Clean Architecture"
scope: "source-local"
sources:
  - "clean-architecture"
title: "Event sourcing зберігає транзакції, а не стан"
aliases:
  - "Event sourcing stores transactions not state"
  - "Store history, derive state"
tags:
  - source-note
  - concept
created: 2026-03-26
updated: 2026-03-26
source: "chapter-6-excerpt"
---

# Event sourcing зберігає транзакції, а не стан

## Визначення

`Event sourcing` означає, що система зберігає не поточний mutable-стан об'єкта, а послідовність фактів або транзакцій, які цей стан утворили. Коли потрібен стан, він обчислюється через `replay` усіх подій або через replay від найближчого `snapshot`. Це переносить акцент із "оновлюй запис" на "додавай новий факт", роблячи сховище ближчим до append-only моделі.

^clean-architecture-event-sourcing-definition

## Чому це важливо

Цей підхід використовує сучасний запас пам'яті й обчислювальної потужності, щоб купити простішу модель змін. Якщо дані додаються, а не переписуються, то зменшується кількість місць, де виникають проблеми конкурентного оновлення, і з'являється природний журнал історії системи. Архітектурно це важливо ще й тому, що `event sourcing` переводить систему з логіки `CRUD` у логіку фактів, часової послідовності та відтворюваності.

## Ознаки в коді

- Модель запису додає події або транзакції в журнал, а не оновлює поточний рядок стану на місці.
- Поточний стан можна відновити через програвання історії або через поєднання `snapshot` + нові події.
- `Read model` або проєкції можуть відрізнятися від `write model`, бо стан є похідним від історії, а не первинним записом.

## Джерела

- [[01-Sources/books/clean-architecture/02-Chapters/ch-06-functional-programming#^clean-architecture-ch06-main-idea]]
- [[01-Sources/books/clean-architecture/02-Chapters/ch-06-functional-programming#^clean-architecture-ch06-thesis-event-sourcing]]
- [[01-Sources/books/clean-architecture/02-Chapters/ch-06-functional-programming#^clean-architecture-ch06-thesis-cr-not-crud]]

## Пов'язані концепти

- [[01-Sources/books/clean-architecture/03-Concepts/immutability-removes-classes-of-concurrency-problems|Незмінність прибирає цілі класи проблем конкурентності]]
- [[01-Sources/books/clean-architecture/03-Concepts/segregation-of-mutability-localizes-concurrency-risk|Сегрегація змінності локалізує ризики конкурентності]]

## Пов'язаний код

- Окремі code notes для цього концепту ще не створені.
