---
type: concept
book: "clean-architecture"
scope: "book-local"
books:
  - "clean-architecture"
title: "Дві цінності програмного забезпечення"
aliases:
  - "A tale of two values"
  - "Behavior and structure"
tags:
  - book-note
  - concept
created: 2026-03-24
updated: 2026-03-24
source: "chapter-2-excerpt"
---

# Дві цінності програмного забезпечення

## Визначення

У цьому розділі ПЗ розглядається як носій двох різних цінностей: воно має коректно поводитися сьогодні й водночас зберігати таку структуру, яка дозволяє недорого змінювати поведінку завтра. Помилка багатьох команд полягає в тому, що вони захищають лише першу цінність і втрачають другу, хоча саме поєднання поведінки та структури робить систему довготривало корисною.

^clean-architecture-two-values-definition

## Чому це важливо

Цей концепт допомагає побачити, що архітектурні рішення не є "розкішшю після релізу". Якщо команда оцінює успіх лише за тим, чи працює поточна функціональність, вона непомітно перетворює кожну наступну зміну на дорожчий і ризикованіший проєкт. Для бізнесу це означає втрату маневреності, а для інженерів - постійну боротьбу з формою системи замість розвитку продукту.

## Ознаки в коді

- Команда легко додає фічі на початку, але схожі за масштабом зміни швидко дорожчають з кожним циклом.
- Обговорення вимог крутиться лише навколо "щоб працювало", без уваги до меж, залежностей і локалізації майбутніх змін.
- Нові запити доводиться "впихати" в систему через обхідні рішення, бо форма коду не відповідає формі змін.

## Книжки-джерела

- [[01-Books/clean-architecture/02-Chapters/ch-02-a-tale-of-two-values#^clean-architecture-ch02-main-idea]]
- [[01-Books/clean-architecture/02-Chapters/ch-02-a-tale-of-two-values#^clean-architecture-ch02-thesis-behavior]]
- [[01-Books/clean-architecture/02-Chapters/ch-02-a-tale-of-two-values#^clean-architecture-ch02-thesis-greater-value]]
- [[01-Books/clean-architecture/02-Chapters/ch-02-a-tale-of-two-values#^clean-architecture-ch02-thesis-fight]]

## Пов'язані концепти

- [[02-Concepts/architecture-governs-cost-of-change|Архітектура визначає вартість змін]]
- [[01-Books/clean-architecture/03-Concepts/design-architecture-continuum|Єдність дизайну й архітектури]]
- [[01-Books/clean-architecture/03-Concepts/cleanliness-preserves-productivity|Охайність зберігає продуктивність]]

## Пов'язаний код

- Окремі code notes для цього концепту ще не створені.
