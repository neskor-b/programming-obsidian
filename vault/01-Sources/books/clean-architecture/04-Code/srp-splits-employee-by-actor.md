---
type: code
source_type: "books"
source_slug: "clean-architecture"
source_title: "Clean Architecture"
title: "SRP розділяє Employee за акторами"
aliases:
  - "SRP splits Employee by actor"
  - "Employee split by actor with facade"
tags:
  - source-note
  - code
created: 2026-04-14
updated: 2026-04-14
source: "chapter-7-excerpt"
---

# SRP розділяє Employee за акторами

## Фрагмент 1: Порушення SRP

```java
public final class Employee {
    private final EmployeeRecord record;

    public Employee(EmployeeRecord record) {
        this.record = record;
    }

    public Money calculatePay() {
        return regularPayHours() * record.hourlyRate();
    }

    public HoursReport reportHours() {
        return new HoursReport(record.id(), regularPayHours(), record.overtimeHours());
    }

    public void save(EmployeeGateway gateway) {
        gateway.save(record);
    }

    private int regularPayHours() {
        return Math.min(record.totalHours(), 40);
    }
}
```

^clean-architecture-ch07-code-employee-violation

## Фрагмент 2: Розділення за акторами

```java
public record EmployeeData(
    String id,
    int totalHours,
    int overtimeHours,
    Money hourlyRate
) {}

public final class PayCalculator {
    public Money calculatePay(EmployeeData data) {
        return regularPayrollHours(data) * data.hourlyRate();
    }

    private int regularPayrollHours(EmployeeData data) {
        return Math.min(data.totalHours(), 40);
    }
}

public final class HourReporter {
    public HoursReport reportHours(EmployeeData data) {
        return new HoursReport(data.id(), regularReportHours(data), data.overtimeHours());
    }

    private int regularReportHours(EmployeeData data) {
        return data.totalHours();
    }
}

public final class EmployeeSaver {
    private final EmployeeGateway gateway;

    public EmployeeSaver(EmployeeGateway gateway) {
        this.gateway = gateway;
    }

    public void saveEmployee(EmployeeData data) {
        gateway.save(data);
    }
}
```

^clean-architecture-ch07-code-employee-split

## Фрагмент 3: Фасад після розділення

```java
public final class EmployeeFacade {
    private final PayCalculator payCalculator;
    private final HourReporter hourReporter;
    private final EmployeeSaver employeeSaver;

    public EmployeeFacade(
        PayCalculator payCalculator,
        HourReporter hourReporter,
        EmployeeSaver employeeSaver
    ) {
        this.payCalculator = payCalculator;
        this.hourReporter = hourReporter;
        this.employeeSaver = employeeSaver;
    }

    public Money calculatePay(EmployeeData data) {
        return payCalculator.calculatePay(data);
    }

    public HoursReport reportHours(EmployeeData data) {
        return hourReporter.reportHours(data);
    }

    public void save(EmployeeData data) {
        employeeSaver.saveEmployee(data);
    }
}
```

^clean-architecture-ch07-code-employee-facade

## Пояснення

Перший фрагмент показує типове порушення `SRP`: один клас виглядає природним через назву `Employee`, але фактично обслуговує трьох різних акторів. Саме тому helper `regularPayHours()` стає небезпечним місцем випадкової спільності: для `payroll` і для `hours report` може знадобитися різна логіка, навіть якщо спочатку формула виглядає однаково.

Другий фрагмент розводить поведінку за акторами. `PayCalculator`, `HourReporter` і `EmployeeSaver` читають одні й ті самі дані, але не знають один про одного і можуть змінюватися незалежно. Це не "забагато класів", а нормальна ціна за те, що зміна для `CFO` не протікає в `HR` чи `DBA`-сценарій.

Третій фрагмент повертає ergonomic API через `Facade`. Клієнтський код усе ще може працювати з одним входом, але модульна межа вже проведена правильно: фасад лише делегує, а не змішує різні причини для зміни в одному алгоритмічному тілі.

## Ризики або smells

- Якщо клас названий за доменною сутністю і через це в нього "природно" стікаються `pay`, `reporting` і `persistence`, це сильний сигнал хибної cohesion.
- Якщо одна helper-функція використовується кількома actor-specific методами, треба перевіряти не лише технічну подібність, а й бізнесовий сенс формули.
- Якщо після розділення фасад починає знову містити помітну бізнес-логіку, він поступово повертає систему до старого порушення `SRP`.

## Пов'язані концепти

- [[02-Concepts/single-responsibility-means-one-actor|SRP означає одного актора, а не одну дію]]
- [[02-Concepts/solid-organizes-modules-for-change|SOLID організовує модулі для змінюваності]]
- [[02-Concepts/architecture-governs-cost-of-change|Архітектура визначає вартість змін]]

## Пов'язані source notes

- [[01-Sources/books/clean-architecture/02-Chapters/ch-07-single-responsibility-principle|Розділ 7. Принцип єдиної відповідальності]]
- [[01-Sources/books/clean-architecture/02-Chapters/ch-p3-design-principles|Принципи дизайну (SOLID)]]
