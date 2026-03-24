---
type: concept
book: ""
scope: "shared-evergreen"
books:
  - "clean-architecture"
title: "Поліморфізм дозволяє будувати plugin architecture"
aliases:
  - "Plugin architecture via polymorphism"
  - "Details as plugins"
tags:
  - book-note
  - concept
created: 2026-03-24
updated: 2026-03-24
source: "synthesis"
---

# Поліморфізм дозволяє будувати plugin architecture

## Визначення

`Plugin architecture` виникає тоді, коли стабільне ядро системи працює через контракт, а змінні деталі реалізують цей контракт як підключувані модулі. Поліморфізм робить таку побудову практичною: замість жорсткого знання про конкретний пристрій, `database` або `UI` ядро працює з абстракцією, а конкретна реалізація підставляється ззовні.

^plugin-architecture-via-polymorphism-definition

## Чому це важливо

Це перетворює "деталі" з того, що диктує форму всієї системи, на те, що можна замінювати без руйнування основних правил. Така архітектура зменшує coupling до технологій і дає команді свободу еволюціонувати інфраструктуру окремо від політик. Саме тому `UI` і сховище мають бути плагінами до бізнес-правил, а не їхнім центром тяжіння.

## Ознаки в коді

- Є стабільне ядро з контрактами, а конкретні адаптери підключаються на межі застосунку.
- Новий тип пристрою, сховища чи транспорту додається новою реалізацією, а не переписуванням основного сценарію.
- Компоненти можна збирати або розгортати окремо, бо їхній зв'язок проходить через явно визначені межі.

## Книжки-джерела

- [[01-Books/clean-architecture/02-Chapters/ch-05-object-oriented-programming#^clean-architecture-ch05-thesis-polymorphism-history]]
- [[01-Books/clean-architecture/02-Chapters/ch-05-object-oriented-programming#^clean-architecture-ch05-thesis-plugins]]
- [[01-Books/clean-architecture/02-Chapters/ch-05-object-oriented-programming#^clean-architecture-ch05-thesis-independent-components]]
- [[01-Books/clean-architecture/04-Code/c-function-pointers-enable-polymorphism#^clean-architecture-ch05-code-function-pointers]]

## Пов'язані концепти

- [[02-Concepts/dependency-inversion|Інверсія залежностей]]
- [[01-Books/clean-architecture/03-Concepts/oo-controls-dependency-direction-through-polymorphism|ООП дає контроль над напрямком залежностей через поліморфізм]]

## Пов'язаний код

- [[01-Books/clean-architecture/04-Code/c-function-pointers-enable-polymorphism|Вказівники на функції в C як основа поліморфізму]]
