---
type: concept
book: "clean-architecture"
scope: "book-local"
books:
  - "clean-architecture"
title: "Архітектура важлива, але не термінова"
aliases:
  - "Eisenhower matrix for software architecture"
  - "Importance versus urgency in software"
tags:
  - book-note
  - concept
created: 2026-03-24
updated: 2026-03-24
source: "chapter-2-excerpt"
---

# Архітектура важлива, але не термінова

## Визначення

Матриця Айзенхауера в цьому розділі використовується як спосіб пояснити, чому архітектура системи так часто програє короткостроковим запитам. Поведінка ПЗ зазвичай сприймається як термінова, бо її дефекти й відсутні фічі видно одразу. Архітектура ж є важливою, але рідко виглядає терміновою, хоча саме вона визначає, чи залишиться система здатною до змін.

^clean-architecture-important-not-urgent-definition

## Матриця для ПЗ

1. **Термінове й важливе**. Критичні зміни або проблеми, які потрібно вирішити негайно, щоб система лишалася корисною. ^clean-architecture-important-not-urgent-priority-1
2. **Не термінове, але важливе**. Архітектурні рішення, які не "горять" сьогодні, але визначають майбутню вартість розробки. ^clean-architecture-important-not-urgent-priority-2
3. **Термінове, але не важливе**. Фічі або запити, що тиснуть по часу, але не покращують довгострокову здатність системи еволюціонувати. ^clean-architecture-important-not-urgent-priority-3
4. **Не термінове й не важливе**. Роботи, які не створюють помітної цінності ані зараз, ані в майбутньому. ^clean-architecture-important-not-urgent-priority-4

## Чому це важливо

Цей концепт допомагає побачити головну пастку командної пріоритизації: терміновість легко маскується під важливість. Через це архітектурні роботи постійно відкладаються "на потім", доки зміни не стають занадто дорогими. Отже, захищати архітектуру означає системно тримати в полі зору важливі, але не термінові рішення.

## Ознаки в коді

- Команда майже завжди обирає фічу з дедлайном замість покращення меж, залежностей чи структури.
- Архітектурні проблеми визнають лише тоді, коли вони вже блокують зміни або різко піднімають їхню вартість.
- Планування зосереджене на негайній видимій користі, а не на збереженні маневреності системи.

## Книжки-джерела

- [[01-Books/clean-architecture/02-Chapters/ch-02-a-tale-of-two-values#^clean-architecture-ch02-thesis-eisenhower]]
- [[01-Books/clean-architecture/02-Chapters/ch-02-a-tale-of-two-values#^clean-architecture-ch02-thesis-matrix-priorities]]
- [[01-Books/clean-architecture/02-Chapters/ch-02-a-tale-of-two-values#^clean-architecture-ch02-thesis-architecture-top-two]]
- [[01-Books/clean-architecture/02-Chapters/ch-02-a-tale-of-two-values#^clean-architecture-ch02-thesis-fight]]

## Пов'язані концепти

- [[01-Books/clean-architecture/03-Concepts/two-values-of-software|Дві цінності програмного забезпечення]]
- [[02-Concepts/architecture-governs-cost-of-change|Архітектура визначає вартість змін]]
- [[01-Books/clean-architecture/03-Concepts/design-architecture-continuum|Єдність дизайну й архітектури]]

## Пов'язаний код

- Окремі code notes для цього концепту ще не створені.
