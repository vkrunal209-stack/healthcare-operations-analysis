-- Gender Distribution

SELECT Gender,
       COUNT(*) AS patients
FROM healthcare_dataset
GROUP BY Gender;

-- Average Age

SELECT ROUND(AVG(Age),2) AS avg_age
FROM healthcare_dataset; 