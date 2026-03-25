---
type: concept
source_type: "books"
source_slug: "clean-architecture"
scope: "source-local"
sources:
  - "clean-architecture"
title: "Функціональна декомпозиція потребує структурного програмування"
aliases:
  - "Functional decomposition needs structured programming"
tags:
  - source-note
  - concept
created: 2026-03-24
updated: 2026-03-24
source: "chapter-4-excerpt"
---

# Функціональна декомпозиція потребує структурного програмування

## Визначення

У подачі Роберта Мартіна функціональна декомпозиція працює лише тоді, коли модулі побудовані на керованих структурах потоку виконання. Якщо поведінку можна виразити через послідовність, вибір та ітерацію, тоді велику задачу реально розкласти на дедалі менші функції з локально зрозумілою логікою. Якщо ж керування стрибає довільно, така декомпозиція ламається ще до рівня архітектури.

^clean-architecture-functional-decomposition-definition

## Чому це важливо

Цей концепт з'єднує низькорівневу дисципліну коду з високорівневим дизайном системи. Архітектура не може спиратися на модулі, які неможливо пояснити, локально перевірити або безпечно переписати. Саме тому структурне програмування є не історичним артефактом, а передумовою для зрозумілих функцій, стабільних меж і тестовності.

## Ознаки в коді

- Великі сценарії розбиті на менші функції з чіткими вхідними умовами та передбачуваними результатами.
- Потік керування можна простежити зверху вниз без довільних стрибків між віддаленими мітками.
- Гілки й цикли локалізують складність так, що окрему функцію реально перевірити тестом або розумовим проходом.

## Джерела

- [[01-Sources/books/clean-architecture/02-Chapters/ch-03-paradigm-overview#^clean-architecture-ch03-thesis-structured]]
- [[01-Sources/books/clean-architecture/02-Chapters/ch-04-structured-programming#^clean-architecture-ch04-thesis-control-structures]]
- [[01-Sources/books/clean-architecture/02-Chapters/ch-04-structured-programming#^clean-architecture-ch04-thesis-functional-decomposition]]
- [[01-Sources/books/clean-architecture/02-Chapters/ch-04-structured-programming#^clean-architecture-ch04-thesis-architecture]]

## Пов'язані концепти

- [[01-Sources/books/clean-architecture/03-Concepts/paradigms-impose-discipline|Парадигми вводять дисципліну через обмеження]]
- [[02-Concepts/tests-falsify-not-prove-correctness|Тести спростовують помилки, а не доводять коректність]]

## Пов'язаний код

- Окремі code notes для цього концепту ще не створені.
