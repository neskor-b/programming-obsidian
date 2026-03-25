---
type: concept
source_type: "books"
source_slug: "clean-architecture"
source_title: "Clean Architecture"
scope: "source-local"
sources:
  - "clean-architecture"
title: "Дві цінності програмного забезпечення"
aliases:
  - "A tale of two values"
  - "Behavior and structure"
tags:
  - source-note
  - concept
created: 2026-03-24
updated: 2026-03-25
source: "chapter-2-excerpt"
---

# Дві цінності програмного забезпечення

## Визначення

Програмне забезпечення має цінність не лише тоді, коли зараз виконує вимоги, а й тоді, коли його можна без надмірних витрат адаптувати до нових вимог. Уривок Роберта Мартіна чітко розділяє ці дві цінності й наголошує, що друга часто недооцінюється, хоча саме вона зберігає систему корисною в часі.

^clean-architecture-two-values-definition

## Дві цінності

- **Поведінка**. Система повинна правильно виконувати поточні бізнес-вимоги: реалізовувати потрібну функціональність, давати очікуваний результат і дозволяти виправляти дефекти, коли поведінка відхиляється від вимог. ^clean-architecture-two-values-behavior
- **Структура**. Система повинна лишатися легкою для змін: коли стейкхолдери змінюють вимоги, команда має мати змогу вносити зміни просто й передбачувано, без непропорційного росту вартості, ризику та складності. ^clean-architecture-two-values-structure

## Чому це важливо

Цей концепт змушує оцінювати якість ПЗ у двох площинах одночасно. Якщо бачити лише поведінку, команда може тимчасово задовольняти бізнес, але поступово втратити здатність реагувати на нові запити. Якщо ж зберігати структуру придатною до змін, то навіть нові або змінені вимоги не руйнуватимуть економіку розробки.

## Ознаки в коді

- Поведінка реалізована, але будь-яка нова зміна вимагає дедалі більшого числа торкань у різних частинах системи.
- Архітектурні рішення оцінюють як "не на часі", доки вартість змін не стає неприйнятною.
- Команда дедалі частіше підлаштовує нові фічі під наявну форму коду, замість того щоб структура допомагала природно вбудовувати зміни.

## Джерела

- [[01-Sources/books/clean-architecture/02-Chapters/ch-02-a-tale-of-two-values#^clean-architecture-ch02-main-idea]]
- [[01-Sources/books/clean-architecture/02-Chapters/ch-02-a-tale-of-two-values#^clean-architecture-ch02-thesis-behavior]]
- [[01-Sources/books/clean-architecture/02-Chapters/ch-02-a-tale-of-two-values#^clean-architecture-ch02-thesis-greater-value]]
- [[01-Sources/books/clean-architecture/02-Chapters/ch-02-a-tale-of-two-values#^clean-architecture-ch02-thesis-fight]]

## Пов'язані концепти

- [[01-Sources/books/clean-architecture/03-Concepts/architecture-is-important-not-urgent|Архітектура важлива, але не термінова]]
- [[02-Concepts/architecture-governs-cost-of-change|Архітектура визначає вартість змін]]
- [[01-Sources/books/clean-architecture/03-Concepts/design-architecture-continuum|Єдність дизайну й архітектури]]
- [[01-Sources/books/clean-architecture/03-Concepts/cleanliness-preserves-productivity|Охайність зберігає продуктивність]]

## Пов'язаний код

- Окремі code notes для цього концепту ще не створені.
