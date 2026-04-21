---
type: concept
source_type: "books"
source_slug: "clean-architecture"
source_title: "Clean Architecture"
scope: "source-local"
sources:
  - "clean-architecture"
title: "Компоненти є одиницями розгортання"
aliases:
  - "Components are units of deployment"
  - "Independent deployability"
tags:
  - source-note
  - concept
created: 2026-04-21
updated: 2026-04-21
source: "chapter-12-excerpt"
---

# Компоненти є одиницями розгортання

## Визначення

У цьому розумінні компонент - це найменша частина системи, яку можна розгортати як окремий артефакт. Неважливо, чи це `jar`, `DLL`, `gem`, shared library або агрегат source files: важливо, що межа компонента збігається з реальною межею build/deploy циклу. Добрий компонент зберігає `independent deployability`, а отже і `independent developability`, навіть якщо в конкретному релізі його пакують разом з іншими частинами системи.

^clean-architecture-components-definition

## Чому це важливо

Цей концепт переводить розмову про архітектуру з "як класи лежать по папках" до "як система реально збирається, постачається і змінюється". Якщо межі компонентів чесні, команда може окремо розвивати деталі, міняти способи інтеграції й підключати нові модулі без того, щоб кожна зміна автоматично ставала зміною всього застосунку.

## Ознаки в архітектурі

- Компонент має зрозумілий deployable artifact або принаймні чітку потенційну форму такого артефакту.
- Його можна мислити окремо від способу остаточного пакування: один `archive` не обов'язково означає один компонент.
- Зв'язки між компонентами проходять через контракти, лінкування або plugin boundary, а не через текстове копіювання коду.
- Незалежність компонента важлива не лише для релізу, а й для того, щоб його можна було розробляти й еволюціонувати окремо.

## Джерела

- [[01-Sources/books/clean-architecture/02-Chapters/ch-05-object-oriented-programming#^clean-architecture-ch05-thesis-independent-components]]
- [[01-Sources/books/clean-architecture/02-Chapters/ch-12-components#^clean-architecture-ch12-main-idea]]
- [[01-Sources/books/clean-architecture/02-Chapters/ch-12-components#^clean-architecture-ch12-thesis-units-of-deployment]]
- [[01-Sources/books/clean-architecture/02-Chapters/ch-12-components#^clean-architecture-ch12-thesis-independent-deployability]]
- [[01-Sources/books/clean-architecture/02-Chapters/ch-12-components#^clean-architecture-ch12-thesis-plugins-return]]

## Пов'язані концепти

- [[02-Concepts/plugin-architecture-via-polymorphism|Поліморфізм дозволяє будувати plugin architecture]]
- [[02-Concepts/dependency-inversion|Інверсія залежностей]]
- [[02-Concepts/open-closed-protects-high-level-policy|OCP захищає high-level policy через ієрархію залежностей]]

## Пов'язаний фрагмент

- [[01-Sources/books/clean-architecture/02-Chapters/ch-12-components#^clean-architecture-ch12-simple-diagram-evolution|Історична схема еволюції від fixed-address binaries до runtime plugins]]
