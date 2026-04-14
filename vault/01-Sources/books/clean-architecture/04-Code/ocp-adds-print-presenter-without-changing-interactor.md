---
type: code
source_type: "books"
source_slug: "clean-architecture"
source_title: "Clean Architecture"
title: "OCP додає print presenter без зміни interactor"
aliases:
  - "OCP adds print presenter without changing interactor"
  - "Add print presentation as an extension"
tags:
  - source-note
  - code
created: 2026-04-14
updated: 2026-04-14
source: "chapter-8-excerpt"
---

# OCP додає print presenter без зміни interactor

## Фрагмент 1: Стабільна policy

```java
public record ReportData(String title, BigDecimal revenue) {}

public interface FinancialReportPresenter {
    void present(ReportData data);
}

public final class FinancialReportInteractor {
    private final FinancialDataGateway gateway;
    private final FinancialReportPresenter presenter;

    public FinancialReportInteractor(
        FinancialDataGateway gateway,
        FinancialReportPresenter presenter
    ) {
        this.gateway = gateway;
        this.presenter = presenter;
    }

    public void generateReport() {
        ReportData data = gateway.fetchReportData();
        presenter.present(data);
    }
}
```

^clean-architecture-ch08-code-ocp-stable-policy

## Фрагмент 2: Нове розширення

```java
public final class WebReportPresenter implements FinancialReportPresenter {
    public void present(ReportData data) {
        renderHtml(data);
    }
}

public final class PrintReportPresenter implements FinancialReportPresenter {
    public void present(ReportData data) {
        renderPdf(data);
    }
}
```

^clean-architecture-ch08-code-ocp-new-presenter

## Пояснення

`FinancialReportInteractor` знає лише про контракт `FinancialReportPresenter`, тому новий канал виводу додається як новий клас, а не як нова `if/else`-гілка всередині policy. Саме це і показує архітектурний сенс `OCP`: бізнес-ядро лишається стабільним, а поведінка розширюється на периферії.

У цьому прикладі `PrintReportPresenter` не "вламується" в interactor. Він просто підлаштовується під уже наявний контракт. Завдяки цьому додавання `PDF` або друку не змушує редагувати алгоритм побудови звіту.

## Ризики або smells

- Якщо interactor починає сам вирішувати `if (format == PDF)`, то presentation-логіка знову протікає в policy і `OCP` ламається.
- Якщо контракт presenter-а містить web- або print-специфічні типи, він перестає бути стабільною межею для розширення.
- Якщо новий спосіб виводу вимагає змін у `ReportData` лише через форматування, варто перевірити, чи не починає view диктувати форму даних use case-у.

## Пов'язані концепти

- [[02-Concepts/open-closed-protects-high-level-policy|OCP захищає high-level policy через ієрархію залежностей]]
- [[02-Concepts/dependency-inversion|Інверсія залежностей]]

## Пов'язані source notes

- [[01-Sources/books/clean-architecture/02-Chapters/ch-08-open-closed-principle|Розділ 8. Принцип відкритості-закритості]]
