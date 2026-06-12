-- Admission Type Distribution

SELECT `Admission Type`,
       COUNT(*) AS admissions
FROM healthcare_dataset
GROUP BY `Admission Type`
ORDER BY admissions DESC;

-- Revenue by Admission Type

SELECT `Admission Type`,
       ROUND(SUM(`Billing Amount`),2) AS revenue
FROM healthcare_dataset
GROUP BY `Admission Type`
ORDER BY revenue DESC;

-- Average Billing Amount by Admission Type

SELECT `Admission Type`,
       ROUND(AVG(`Billing Amount`),2) AS avg_bill
FROM healthcare_dataset
GROUP BY `Admission Type`
ORDER BY avg_bill DESC;

-- Billing Amount Categories.
SELECT
    CASE
        WHEN `Billing Amount` < 10000 THEN 'Low Cost'
        WHEN `Billing Amount` < 30000 THEN 'Medium Cost'
        ELSE 'High Cost'
    END AS bill_category,
    COUNT(*) AS patients
FROM healthcare_dataset
GROUP BY bill_category
ORDER BY patients DESC;
-- Average Length of Stay
SELECT
    ROUND(
        AVG(DATEDIFF(`Discharge Date`, `Date of Admission`)),
        2
    ) AS avg_stay_days
FROM healthcare_dataset;
-- Admissions by Year
SELECT
    YEAR(`Date of Admission`) AS admission_year,
    COUNT(*) AS patients
FROM healthcare_dataset
GROUP BY YEAR(`Date of Admission`)
ORDER BY admission_year; 