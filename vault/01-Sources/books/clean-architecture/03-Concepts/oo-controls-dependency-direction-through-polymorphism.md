---
type: concept
source_type: "books"
source_slug: "clean-architecture"
source_title: "Clean Architecture"
scope: "source-local"
sources:
  - "clean-architecture"
title: "ООП дає контроль над напрямком залежностей через поліморфізм"
aliases:
  - "OO controls dependency direction through polymorphism"
  - "Architectural power of OO"
tags:
  - source-note
  - concept
created: 2026-03-24
updated: 2026-03-25
source: "chapter-5-excerpt"
---

# ООП дає контроль над напрямком залежностей через поліморфізм

## Визначення

У цьому формулюванні `object-oriented programming` цінне не тим, що "склеює" дані з методами, а тим, що робить поліморфні межі звичним інструментом архітектури. Завдяки цьому високорівневі політики можуть залежати лише від абстракцій, тоді як `UI`, база даних, драйвери та інші деталі підлаштовуються під ці абстракції. Саме так `OO` дає контроль над напрямком залежностей у системі.

^clean-architecture-oop-dependencies-definition

## Чому це важливо

Цей концепт з'єднує розмову про парадигми з темою `Clean Architecture`. Якщо `structured programming` дисциплінує алгоритм, то `OO` дисциплінує межі між модулями. Це знімає тиск із бізнес-правил: вони перестають знати про фреймворки, `IO`, сховище чи інтерфейс користувача як про свої прямі залежності. У результаті архітектура стає не схемою шарів, а реальною системою керування залежностями.

## Ознаки в коді

- Високорівневі сценарії залежать від інтерфейсів або абстрактних портів, а конкретні адаптери реалізують ці контракти ззовні.
- Потік виконання може йти зверху вниз, але залежність у коді спрямована в бік стабільнішої політики, а не в бік деталі.
- Заміна `database`, `UI` або зовнішнього драйвера не вимагає редагувати бізнес-правила, якщо контракт збережено.

## Джерела

- [[01-Sources/books/clean-architecture/02-Chapters/ch-03-paradigm-overview#^clean-architecture-ch03-thesis-oop]]
- [[01-Sources/books/clean-architecture/02-Chapters/ch-05-object-oriented-programming#^clean-architecture-ch05-main-idea]]
- [[01-Sources/books/clean-architecture/02-Chapters/ch-05-object-oriented-programming#^clean-architecture-ch05-thesis-indirect-control]]
- [[01-Sources/books/clean-architecture/02-Chapters/ch-05-object-oriented-programming#^clean-architecture-ch05-thesis-dependency-inversion]]
- [[01-Sources/books/clean-architecture/02-Chapters/ch-05-object-oriented-programming#^clean-architecture-ch05-thesis-independent-components]]

## Пов'язані концепти

- [[01-Sources/books/clean-architecture/03-Concepts/paradigms-impose-discipline|Парадигми вводять дисципліну через обмеження]]
- [[02-Concepts/dependency-inversion|Інверсія залежностей]]
- [[02-Concepts/open-closed-protects-high-level-policy|OCP захищає high-level policy через ієрархію залежностей]]
- [[02-Concepts/plugin-architecture-via-polymorphism|Поліморфізм дозволяє будувати plugin architecture]]

## Пов'язаний код

- [[01-Sources/books/clean-architecture/04-Code/c-function-pointers-enable-polymorphism|Вказівники на функції в C як основа поліморфізму]]
