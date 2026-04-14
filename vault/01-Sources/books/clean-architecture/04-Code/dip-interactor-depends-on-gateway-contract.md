---
type: code
source_type: "books"
source_slug: "clean-architecture"
source_title: "Clean Architecture"
title: "Interactor залежить від gateway-контракту, а не від Postgres"
aliases:
  - "Interactor depends on gateway contract instead of Postgres"
  - "DIP report interactor with gateway port"
tags:
  - source-note
  - code
created: 2026-04-14
updated: 2026-04-14
source: "clean-architecture-synthesis"
---

# Interactor залежить від gateway-контракту, а не від Postgres

## Фрагмент 1: Policy говорить через порт

```java
public interface FinancialDataGateway {
    ReportData fetchReportData();
}

public final class FinancialReportInteractor {
    private final FinancialDataGateway gateway;

    public FinancialReportInteractor(FinancialDataGateway gateway) {
        this.gateway = gateway;
    }

    public ReportData buildReport() {
        return gateway.fetchReportData();
    }
}
```

^clean-architecture-dip-code-policy-port

## Фрагмент 2: Detail підлаштовується під контракт

```java
public final class PostgresFinancialDataGateway implements FinancialDataGateway {
    private final SqlClient sql;

    public PostgresFinancialDataGateway(SqlClient sql) {
        this.sql = sql;
    }

    public ReportData fetchReportData() {
        Row row = sql.querySingle("select title, revenue from reports limit 1");
        return new ReportData(row.getString("title"), row.getMoney("revenue"));
    }
}
```

^clean-architecture-dip-code-detail-adapter

## Фрагмент 3: Тестовий fake без бази даних

```java
public final class InMemoryFinancialDataGateway implements FinancialDataGateway {
    private final ReportData reportData;

    public InMemoryFinancialDataGateway(ReportData reportData) {
        this.reportData = reportData;
    }

    public ReportData fetchReportData() {
        return reportData;
    }
}
```

^clean-architecture-dip-code-test-fake

## Пояснення

`FinancialReportInteractor` імпортує не `SqlClient` і не `PostgresFinancialDataGateway`, а лише `FinancialDataGateway`. Саме це і є `DIP`: high-level policy формулює потрібний контракт, а low-level detail підлаштовується під нього.

Третій фрагмент спеціально показує `fake`. Якщо заміна адаптера не потребує змін у use case, залежності спрямовані правильно. База даних у такій архітектурі стає змінною деталлю, а не центром дизайну.

## Ризики або smells

- Якщо interactor напряму створює `new PostgresFinancialDataGateway(...)`, інверсія залежностей зникає попри наявність інтерфейсу.
- Якщо порт повертає `Row`, `ResultSet` або інший інфраструктурний тип, detail протікає в policy через контракт.
- Якщо тест use case неможливо написати без справжньої бази даних, межа між policy і detail проведена неправильно.

## Пов'язані концепти

- [[02-Concepts/dependency-inversion|Інверсія залежностей]]
- [[02-Concepts/open-closed-protects-high-level-policy|OCP захищає high-level policy через ієрархію залежностей]]
- [[01-Sources/books/clean-architecture/03-Concepts/oo-controls-dependency-direction-through-polymorphism|ООП дає контроль над напрямком залежностей через поліморфізм]]

## Пов'язані source notes

- [[01-Sources/books/clean-architecture/02-Chapters/ch-05-object-oriented-programming|Розділ 5. Об'єктно-орієнтоване програмування]]
- [[01-Sources/books/clean-architecture/02-Chapters/ch-08-open-closed-principle|Розділ 8. Принцип відкритості-закритості]]
