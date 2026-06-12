-- Total Revenue

SELECT ROUND(SUM(`Billing Amount`),2) AS total_revenue
FROM healthcare_dataset;

-- Revenue by Medical Condition

SELECT `Medical Condition`,
       ROUND(SUM(`Billing Amount`),2) AS revenue
FROM healthcare_dataset
GROUP BY `Medical Condition`
ORDER BY revenue DESC;

-- Revenue Contribution %

SELECT
    `Medical Condition`,
    ROUND(SUM(`Billing Amount`),2) AS revenue,
    ROUND(
        SUM(`Billing Amount`) * 100 /
        SUM(SUM(`Billing Amount`)) OVER(),
        2
    ) AS revenue_pct
FROM healthcare_dataset
GROUP BY `Medical Condition`
ORDER BY revenue DESC; 
-- Ranking Condition by Revenue, 
SELECT
    YEAR(`Date of Admission`) AS admission_year,
    COUNT(*) AS patients
FROM healthcare_dataset
GROUP BY YEAR(`Date of Admission`)
ORDER BY admission_year; 