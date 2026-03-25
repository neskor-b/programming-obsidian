---
type: code
source_type: "books"
source_slug: "clean-architecture"
title: "Вказівники на функції в C як основа поліморфізму"
aliases:
  - "C function pointers enable polymorphism"
tags:
  - source-note
  - code
created: 2026-03-24
updated: 2026-03-24
source: "chapter-5-excerpt"
---

# Вказівники на функції в C як основа поліморфізму

## Фрагмент

```c
struct FILE {
  void (*open)(char* name, int mode);
  void (*close)();
  int (*read)();
  void (*write)(char);
  void (*seek)(long index, int mode);
};

extern struct FILE* STDIN;

int getchar() {
  return STDIN->read();
}
```

^clean-architecture-ch05-code-function-pointers

## Пояснення

Цей фрагмент показує, що поліморфізм не народився разом із `OO`-мовами. Поведінка `getchar()` змінюється залежно від того, на який `FILE` вказує `STDIN`, а отже виклик проходить через таблицю функціональних вказівників. Ідея така сама, як у `virtual method` та `vtable`: стабільний виклик у коді делегує конкретну поведінку змінній реалізації.

## Ризики або smells

- У чистому `C` цей підхід тримається на ручних домовленостях: треба правильно ініціалізувати всі функціональні вказівники й завжди викликати поведінку саме через них.
- Якщо структура контракту змінюється або один із вказівників лишається неініціалізованим, помилка буде низькорівневою й важкою для локалізації.

## Пов'язані концепти

- [[02-Concepts/plugin-architecture-via-polymorphism|Поліморфізм дозволяє будувати plugin architecture]]
- [[02-Concepts/dependency-inversion|Інверсія залежностей]]
- [[01-Sources/books/clean-architecture/03-Concepts/oo-controls-dependency-direction-through-polymorphism|ООП дає контроль над напрямком залежностей через поліморфізм]]

## Пов'язані розділи

- [[01-Sources/books/clean-architecture/02-Chapters/ch-05-object-oriented-programming|Розділ 5. Об'єктно-орієнтоване програмування]]
