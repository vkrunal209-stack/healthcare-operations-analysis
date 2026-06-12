-- Healthcare Operations Analysis

-- Total Patients

SELECT COUNT(*) AS total_patients
FROM healthcare_dataset;

-- Distinct Medical Conditions

SELECT COUNT(DISTINCT `Medical Condition`) AS conditions_count
FROM healthcare_dataset;

-- Distinct Hospitals

SELECT COUNT(DISTINCT Hospital) AS hospitals_count
FROM healthcare_dataset;

-- Distinct Doctors

SELECT COUNT(DISTINCT Doctor) AS doctors_count
FROM healthcare_dataset;  