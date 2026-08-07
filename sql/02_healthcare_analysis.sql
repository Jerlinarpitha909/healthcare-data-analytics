USE healthcare_analytics;

-- ============================================================
-- HEALTHCARE DATA ANALYTICS
-- 02 - HEALTHCARE BUSINESS ANALYSIS
-- ============================================================


-- 1. Average billing amount by medical condition

SELECT
    `Medical Condition`,
    COUNT(*) AS patient_count,
    ROUND(AVG(`Billing Amount`), 2) AS average_billing
FROM healthcare_data
GROUP BY `Medical Condition`
ORDER BY average_billing DESC;


-- 2. Average billing amount by admission type

SELECT
    `Admission Type`,
    COUNT(*) AS patient_count,
    ROUND(AVG(`Billing Amount`), 2) AS average_billing
FROM healthcare_data
GROUP BY `Admission Type`
ORDER BY average_billing DESC;


-- 3. Billing and patient volume by insurance provider

SELECT
    `Insurance Provider`,
    COUNT(*) AS patient_count,
    ROUND(AVG(`Billing Amount`), 2) AS average_billing,
    ROUND(SUM(`Billing Amount`), 2) AS total_billing
FROM healthcare_data
GROUP BY `Insurance Provider`
ORDER BY total_billing DESC;


-- 4. Medical condition and admission type analysis

SELECT
    `Medical Condition`,
    `Admission Type`,
    COUNT(*) AS patient_count,
    ROUND(AVG(`Billing Amount`), 2) AS average_billing
FROM healthcare_data
GROUP BY
    `Medical Condition`,
    `Admission Type`
ORDER BY average_billing DESC;


-- 5. Average length of stay by medical condition

SELECT
    `Medical Condition`,
    COUNT(*) AS patient_count,
    ROUND(
        AVG(DATEDIFF(`Discharge Date`, `Date of Admission`)),
        2
    ) AS avg_length_of_stay
FROM healthcare_data
GROUP BY `Medical Condition`
ORDER BY avg_length_of_stay DESC;


-- 6. Combined healthcare KPIs by medical condition

SELECT
    `Medical Condition`,
    COUNT(*) AS patient_count,
    ROUND(AVG(`Billing Amount`), 2) AS avg_billing,
    ROUND(
        AVG(DATEDIFF(`Discharge Date`, `Date of Admission`)),
        2
    ) AS avg_length_of_stay
FROM healthcare_data
GROUP BY `Medical Condition`
ORDER BY avg_billing DESC;


-- 7. Patient volume and average billing by admission type

SELECT
    `Admission Type`,
    COUNT(*) AS patient_count,
    ROUND(AVG(`Billing Amount`), 2) AS avg_billing
FROM healthcare_data
GROUP BY `Admission Type`
ORDER BY patient_count DESC;


-- 8. Medication distribution

SELECT
    Medication,
    COUNT(*) AS patient_count
FROM healthcare_data
GROUP BY Medication
ORDER BY patient_count DESC;


-- 9. Test results by medical condition

SELECT
    `Medical Condition`,
    `Test Results`,
    COUNT(*) AS patient_count
FROM healthcare_data
GROUP BY
    `Medical Condition`,
    `Test Results`
ORDER BY
    `Medical Condition`,
    patient_count DESC;
