---
type: concept
book: ""
scope: "shared-evergreen"
books:
  - "clean-architecture"
title: "Інверсія залежностей"
aliases:
  - "Dependency inversion"
  - "Source code dependencies can oppose control flow"
tags:
  - book-note
  - concept
created: 2026-03-24
updated: 2026-03-24
source: "synthesis"
---

# Інверсія залежностей

## Визначення

Інверсія залежностей означає, що напрямок залежностей у вихідному коді не зобов'язаний збігатися з напрямком виконання програми. Високорівневий модуль може викликати низькорівневу поведінку під час runtime, але при цьому сам код деталей залежатиме від абстракції, визначеної ближче до політик. Так архітектура підпорядковує деталі стабільнішим правилам системи.

^dependency-inversion-definition

## Чому це важливо

Цей концепт дає практичний спосіб захистити бізнес-логіку від ерозії через фреймворки, `database`, `UI` та інфраструктурні рішення. Якщо залежності спрямовані до стабільних правил, то зміна деталей не тягне за собою ланцюгового редагування всередині ядра. Звідси з'являються тестованість, змінюваність і можливість міняти технологічні рішення без переписування політик.

## Ознаки в коді

- Інтерфейс або абстракція живе поруч із high-level policy, а concrete implementation імпортує цей контракт, а не навпаки.
- Потік викликів іде в один бік, а імпорт залежностей у коді може йти в інший.
- `UI`, `database`, транспорт чи зовнішні драйвери можна замінювати як адаптери, не торкаючись ядра правил.

## Книжки-джерела

- [[01-Books/clean-architecture/02-Chapters/ch-05-object-oriented-programming#^clean-architecture-ch05-thesis-indirect-control]]
- [[01-Books/clean-architecture/02-Chapters/ch-05-object-oriented-programming#^clean-architecture-ch05-thesis-dependency-inversion]]
- [[01-Books/clean-architecture/02-Chapters/ch-05-object-oriented-programming#^clean-architecture-ch05-thesis-independent-components]]
- [[01-Books/clean-architecture/02-Chapters/ch-05-object-oriented-programming#^clean-architecture-ch05-quote-definition]]

## Пов'язані концепти

- [[02-Concepts/plugin-architecture-via-polymorphism|Поліморфізм дозволяє будувати plugin architecture]]
- [[01-Books/clean-architecture/03-Concepts/oo-controls-dependency-direction-through-polymorphism|ООП дає контроль над напрямком залежностей через поліморфізм]]
- [[02-Concepts/architecture-governs-cost-of-change|Архітектура визначає вартість змін]]

## Пов'язаний код

- [[01-Books/clean-architecture/04-Code/c-function-pointers-enable-polymorphism|Вказівники на функції в C як основа поліморфізму]]
