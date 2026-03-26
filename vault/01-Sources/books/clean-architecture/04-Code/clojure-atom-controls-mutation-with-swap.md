---
type: code
source_type: "books"
source_slug: "clean-architecture"
source_title: "Clean Architecture"
title: "Clojure atom дисциплінує мутацію через swap!"
aliases:
  - "Clojure atom controls mutation with swap!"
tags:
  - source-note
  - code
created: 2026-03-26
updated: 2026-03-26
source: "chapter-6-excerpt"
---

# Clojure atom дисциплінує мутацію через swap!

## Фрагмент

```clojure
(def counter (atom 0)) ; initialize counter to 0
(swap! counter inc)    ; safely increment counter.
```

^clean-architecture-ch06-code-atom

## Пояснення

Цей фрагмент показує, як функціональна система може дозволяти мутацію лише в дуже дисциплінованій формі. `atom` огортає змінний стан, а `swap!` не записує значення напряму, а приймає функцію, яка обчислює новий стан з поточного. Під капотом це реалізується через `compare-and-swap`: якщо хтось змінив значення паралельно, операція повторюється. Так мутація лишається локальною, явною й захищеною.

## Ризики або smells

- Такий механізм добре працює для простих незалежних значень, але не гарантує коректну координацію кількох взаємозалежних змінних.
- Якщо бізнес-інваріанти розкидані між кількома mutable-осередками, одного `atom` або `swap!` може бути замало, і знадобиться сильніша транзакційна модель.

## Пов'язані концепти

- [[01-Sources/books/clean-architecture/03-Concepts/segregation-of-mutability-localizes-concurrency-risk|Сегрегація змінності локалізує ризики конкурентності]]
- [[01-Sources/books/clean-architecture/03-Concepts/immutability-removes-classes-of-concurrency-problems|Незмінність прибирає цілі класи проблем конкурентності]]

## Пов'язані розділи

- [[01-Sources/books/clean-architecture/02-Chapters/ch-06-functional-programming|Розділ 6. Функціональне програмування]]
