-- Gender Distribution

SELECT Gender,
       COUNT(*) AS patients
FROM healthcare_dataset
GROUP BY Gender;

-- Average Age

SELECT ROUND(AVG(Age),2) AS avg_age
FROM healthcare_dataset; 

-- Age Group Analysis

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