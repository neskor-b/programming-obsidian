---
type: concept
scope: "source-local"
source_type: "books"
source_slug: "a-philosophy-of-software-design"
source_title: "A Philosophy of Software Design"
sources:
  - "a-philosophy-of-software-design"
title: "Глибокі модулі приховують складність"
aliases:
  - "Deep modules hide complexity"
  - "Module depth"
tags:
  - source-note
  - concept
created: 2026-07-26
updated: 2026-07-26
source: "chapter-4-excerpt"
---

# Глибокі модулі приховують складність

## Визначення

Глибокий модуль надає багато корисної функціональності через малий і простий інтерфейс. Його «глибина» — не абсолютний розмір реалізації, а вигідне співвідношення прихованої складності до складності контракту, яку мусить опанувати клієнт.

^aphsd-deep-modules-definition

## Чому це важливо

Інтерфейс поширює складність модуля на всіх його користувачів, тоді як прихована реалізація локалізує її всередині. Тому глибокий модуль одночасно зменшує когнітивне навантаження та збільшує простір внутрішніх змін, які не спричиняють каскаду змін у системі.

## Ознаки в коді

- Типовий сценарій потребує небагатьох понять, параметрів і викликів.
- Велика частина політик, оптимізацій і special cases реалізована всередині модуля.
- Реалізацію можна істотно змінити без зміни клієнтського коду.
- Рідкісні можливості доступні, але не ускладнюють основний шлях.
- Документація контракту значно коротша за пояснення внутрішнього механізму.

> [!warning] Поверхневий модуль
> Якщо інтерфейс майже повністю розкриває тривіальну реалізацію, модуль додає новий контракт, але не компенсує його прихованою складністю.

## Джерела

- [[01-Sources/books/a-philosophy-of-software-design/02-Chapters/ch-04-modules-should-be-deep#^aphsd-ch04-main-idea]]
- [[01-Sources/books/a-philosophy-of-software-design/02-Chapters/ch-04-modules-should-be-deep#^aphsd-ch04-thesis-depth]]
- [[01-Sources/books/a-philosophy-of-software-design/02-Chapters/ch-04-modules-should-be-deep#^aphsd-ch04-thesis-unix]]

## Пов'язані концепти

- [[01-Sources/books/a-philosophy-of-software-design/03-Concepts/modular-design-encapsulates-complexity|Модульний дизайн інкапсулює складність]]
- [[01-Sources/books/a-philosophy-of-software-design/03-Concepts/abstractions-must-preserve-important-details|Абстракції мають зберігати важливі деталі]]
- [[01-Sources/books/a-philosophy-of-software-design/03-Concepts/classitis-increases-system-complexity|Classitis збільшує складність системи]]

## Пов'язаний код

- Unix file I/O — приклад глибокого API; Java stream wrappers — контрастний приклад фрагментованого типового сценарію.
