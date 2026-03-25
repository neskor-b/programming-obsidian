---
type: concept
source_type: "articles"
source_slug: "system-design-handbook-system-design"
source_title: "System Design: The Complete Guide 2026"
scope: "source-local"
sources:
  - "system-design-handbook-system-design"
title: "Нефункціональні вимоги формують архітектуру системи"
aliases:
  - "Non-functional requirements shape system architecture"
tags:
  - source-note
  - concept
created: 2026-03-25
updated: 2026-03-25
source: "requirements-and-framework"
---

# Нефункціональні вимоги формують архітектуру системи

## Визначення

Функціональні вимоги описують, що система повинна вміти, але саме нефункціональні вимоги визначають форму архітектури. Питання про scale, latency, throughput, availability, consistency, cost і security звужують простір рішень і пояснюють, чи потрібні шардінг, реплікація, кеш, черги, окремі сервіси або простіший дизайн.

^sdh-nfr-shape-architecture-definition

## Чому це важливо

Цей концепт захищає команду від архітектури "за звичкою" або "за модою". Коли межі системи, storage model і комунікаційні протоколи вибираються з прив'язкою до конкретних нефункціональних обмежень, дизайн стає не декоративним, а виправданим. Це також робить trade-offs явними й полегшує дискусію з інженерами та стейкхолдерами.

## Ознаки в коді

- Архітектурні рішення супроводжуються явними цілями на кшталт SLO, QPS, data growth або failure assumptions, а не лише загальними словами про "масштабованість".
- Однакові на вигляд фічі можуть реалізовуватись по-різному, якщо в них різні вимоги до консистентності, швидкості чи доступності.
- Під час design review команда обговорює failure modes, latency budgets, consistency model і cost envelope до того, як сперечатися про конкретний стек.

## Джерела

- [[01-Sources/articles/system-design-handbook-system-design/02-Notes/system-design-starts-with-requirements-and-trade-offs#^sdh-system-design-main-idea]]
- [[01-Sources/articles/system-design-handbook-system-design/02-Notes/system-design-starts-with-requirements-and-trade-offs#^sdh-system-design-thesis-requirements]]
- [[01-Sources/articles/system-design-handbook-system-design/02-Notes/system-design-starts-with-requirements-and-trade-offs#^sdh-system-design-thesis-tradeoffs]]

## Пов'язані концепти

- [[02-Concepts/architecture-governs-cost-of-change|Архітектура визначає вартість змін]]
- [[01-Sources/articles/system-design-handbook-system-design/02-Notes/system-design-starts-with-requirements-and-trade-offs|System design починається з вимог і trade-offs]]

## Пов'язаний код

- Окремі code notes для цього концепту ще не створені.

