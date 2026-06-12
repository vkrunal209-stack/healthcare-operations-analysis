# Healthcare Operations Analysis

## Project Overview

This project analyzes healthcare patient data using SQL to uncover insights related to patient demographics, hospital revenue, admission patterns, hospital performance, and medical conditions.

The goal of this project is to demonstrate SQL skills commonly used by Data Analysts, including aggregations, conditional logic, date functions, window functions, and Common Table Expressions (CTEs).

---

## Tools Used

- MySQL
- VS Code
- GitHub

---

## Dataset Information

Dataset: Healthcare Dataset

- Total Records: 5,915
- Multiple Hospitals
- Multiple Doctors
- Multiple Admission Types
- Multiple Medical Conditions

---

## Project Structure

```text
sql/
├── 01_data_exploration.sql
├── 02_demographics.sql
├── 03_revenue_analysis.sql
├── 04_admission_analysis.sql
├── 05_hospital_performance.sql
└── 06_window_functions.sql
```

---

## SQL Concepts Used

- SELECT
- WHERE
- GROUP BY
- ORDER BY
- COUNT()
- SUM()
- AVG()
- CASE WHEN
- DATEDIFF()
- Window Functions
- RANK()
- DENSE_RANK()
- ROW_NUMBER()
- Common Table Expressions (CTEs)

---

## Analysis Performed

### 1. Data Exploration

- Total patient records
- Distinct hospitals
- Distinct doctors
- Distinct medical conditions

### 2. Demographic Analysis

- Gender distribution
- Average patient age
- Age group analysis using CASE WHEN

### 3. Revenue Analysis

- Total revenue generated
- Revenue by medical condition
- Revenue contribution percentage
- Ranking conditions by revenue

### 4. Admission Analysis

- Admission type distribution
- Revenue by admission type
- Average billing amount by admission type
- Billing category analysis
- Average length of stay

### 5. Hospital Performance

- Top hospitals by patient volume
- Top hospitals by revenue
- Top doctors by patient count

### 6. Window Function Analysis

- Revenue ranking using RANK()
- Revenue ranking using DENSE_RANK()
- Highest billing patient per medical condition using ROW_NUMBER()

---

## Key Findings

### Revenue by Medical Condition

| Medical Condition | Revenue |
|------------------|----------:|
| Cancer | $26.20M |
| Arthritis | $25.56M |
| Hypertension | $25.33M |
| Asthma | $25.29M |
| Diabetes | $24.53M |
| Obesity | $24.49M |

- Cancer generated the highest overall revenue.
- Obesity generated the lowest revenue among the six conditions.

### Admission Analysis

| Admission Type | Admissions |
|---------------|-----------:|
| Elective | 1997 |
| Emergency | 1979 |
| Urgent | 1939 |

- Elective admissions were the most common.
- Admission volume was evenly distributed across all admission types.

### Billing Category Analysis

| Category | Patients |
|----------|---------:|
| High Cost | 2443 |
| Medium Cost | 2377 |
| Low Cost | 1095 |

- High-cost treatments represented the largest patient segment.

### Length of Stay

- Average patient stay: **15.45 days**

### Hospital Performance

- Johnson PLC recorded the highest patient volume.
- Johnson PLC also generated the highest hospital revenue.

---

## Sample SQL Query

```sql
SELECT
    CASE
        WHEN Age < 30 THEN 'Young'
        WHEN Age BETWEEN 30 AND 60 THEN 'Middle Age'
        ELSE 'Senior'
    END AS age_group,
    COUNT(*) AS patients
FROM healthcare_dataset
GROUP BY age_group
ORDER BY patients DESC;
```

---

## Author

KRUNALKUMAR

SQL Portfolio Project created using MySQL, VS Code, and GitHub.