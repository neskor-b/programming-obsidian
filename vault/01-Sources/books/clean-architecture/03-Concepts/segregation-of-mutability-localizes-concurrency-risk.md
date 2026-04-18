---
type: concept
source_type: "books"
source_slug: "clean-architecture"
source_title: "Clean Architecture"
scope: "source-local"
sources:
  - "clean-architecture"
title: "Сегрегація змінності локалізує ризики конкурентності"
aliases:
  - "Segregation of mutability localizes concurrency risk"
  - "Mutable and immutable components"
tags:
  - source-note
  - concept
created: 2026-03-26
updated: 2026-04-18
source: "chapter-6-excerpt"
---

# Сегрегація змінності локалізує ризики конкурентності

## Визначення

Практичний компроміс між ідеальною `immutability` і реальними обмеженнями системи полягає в тому, щоб розділити застосунок на `immutable` компоненти та небагато `mutable` зон. `Immutable` частини виконують обчислення функціонально, без зміни стану, а `mutable` частини беруть на себе взаємодію зі спільними змінними та захищають її через транзакції, `retry` або `compare-and-swap` дисципліни. Так мутація не зникає повністю, але стає локалізованою й контрольованою.

^clean-architecture-segregation-mutability-definition

## Чому це важливо

Цей підхід дає архітектору реалістичний шлях до переваг функціонального стилю без вимоги абсолютної чистоти всюди. Замість того щоб розмазувати `lock`-и та coordination logic по всьому коду, система явно показує, де саме вона змінює стан і які правила безпеки при цьому діють. Це спрощує reasoning про конкурентність, звужує поверхню ризику й допомагає виштовхнути більшість логіки в передбачуваніші частини системи.

## Ознаки в коді

- Основні сценарії та обчислення можна виконувати як чисті або майже чисті функції без доступу до shared mutable state.
- Усі записи в спільний стан проходять через вузькі API або спеціалізовані механізми синхронізації.
- Компоненти, які змінюють стан, легко перелічити, ізолювати й протестувати окремо від решти системи.

## Джерела

- [[01-Sources/books/clean-architecture/02-Chapters/ch-06-functional-programming#^clean-architecture-ch06-main-idea]]
- [[01-Sources/books/clean-architecture/02-Chapters/ch-06-functional-programming#^clean-architecture-ch06-thesis-pragmatic-limits]]
- [[01-Sources/books/clean-architecture/02-Chapters/ch-06-functional-programming#^clean-architecture-ch06-thesis-segregation]]
- [[01-Sources/books/clean-architecture/02-Chapters/ch-06-functional-programming#^clean-architecture-ch06-thesis-atom]]
- [[01-Sources/books/clean-architecture/02-Chapters/ch-06-functional-programming#^clean-architecture-ch06-quote-architects]]

## Пов'язані концепти

- [[01-Sources/books/clean-architecture/03-Concepts/immutability-removes-classes-of-concurrency-problems|Незмінність прибирає цілі класи проблем конкурентності]]
- [[01-Sources/books/clean-architecture/03-Concepts/event-sourcing-stores-transactions-not-state|Event sourcing зберігає транзакції, а не стан]]

## Пов'язаний фрагмент

- [[01-Sources/books/clean-architecture/02-Chapters/ch-06-functional-programming#^clean-architecture-ch06-code-atom|Clojure atom дисциплінує мутацію через swap!]]
