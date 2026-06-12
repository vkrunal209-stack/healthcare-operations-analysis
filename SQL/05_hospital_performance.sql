-- Top Hospitals by Patients

SELECT Hospital,
       COUNT(*) AS patients
FROM healthcare_dataset
GROUP BY Hospital
ORDER BY patients DESC
LIMIT 10;
-- Top Hospitals by Revenue

SELECT Hospital,
       ROUND(SUM(`Billing Amount`),2) AS revenue
FROM healthcare_dataset
GROUP BY Hospital
ORDER BY revenue DESC
LIMIT 10;
-- Top Doctors by Patients

SELECT Doctor,
       COUNT(*) AS patients
FROM healthcare_dataset
GROUP BY Doctor
ORDER BY patients DESC
LIMIT 10; 