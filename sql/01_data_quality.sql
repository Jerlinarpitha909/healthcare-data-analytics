USE healthcare_analytics;

-- ============================================================
-- HEALTHCARE DATA ANALYTICS
-- 01 - DATA QUALITY CHECKS
-- ============================================================

-- 1. Verify total number of records
SELECT COUNT(*) AS total_records
FROM healthcare_data;


-- 2. Check for missing values
SELECT
    SUM(Name IS NULL OR Name = '') AS missing_name,
    SUM(Age IS NULL) AS missing_age,
    SUM(Gender IS NULL OR Gender = '') AS missing_gender,
    SUM(`Blood Type` IS NULL OR `Blood Type` = '') AS missing_blood_type,
    SUM(`Medical Condition` IS NULL OR `Medical Condition` = '') AS missing_medical_condition,
    SUM(`Date of Admission` IS NULL) AS missing_admission_date,
    SUM(Doctor IS NULL OR Doctor = '') AS missing_doctor,
    SUM(Hospital IS NULL OR Hospital = '') AS missing_hospital,
    SUM(`Insurance Provider` IS NULL OR `Insurance Provider` = '') AS missing_insurance,
    SUM(`Billing Amount` IS NULL) AS missing_billing_amount,
    SUM(`Room Number` IS NULL) AS missing_room_number,
    SUM(`Admission Type` IS NULL OR `Admission Type` = '') AS missing_admission_type,
    SUM(`Discharge Date` IS NULL) AS missing_discharge_date,
    SUM(Medication IS NULL OR Medication = '') AS missing_medication,
    SUM(`Test Results` IS NULL OR `Test Results` = '') AS missing_test_results
FROM healthcare_data;


-- 3. Check for duplicate records
SELECT
    COUNT(*) AS total_records,
    COUNT(DISTINCT CONCAT_WS('|',
        Name,
        Age,
        Gender,
        `Blood Type`,
        `Medical Condition`,
        `Date of Admission`,
        Doctor,
        Hospital,
        `Insurance Provider`,
        `Billing Amount`,
        `Room Number`,
        `Admission Type`,
        `Discharge Date`,
        Medication,
        `Test Results`
    )) AS unique_records
FROM healthcare_data;


-- 4. Validate Gender categories
SELECT
    Gender,
    COUNT(*) AS record_count
FROM healthcare_data
GROUP BY Gender
ORDER BY record_count DESC;


-- 5. Validate Blood Type categories
SELECT
    `Blood Type`,
    COUNT(*) AS record_count
FROM healthcare_data
GROUP BY `Blood Type`
ORDER BY record_count DESC;


-- 6. Validate Medical Condition categories
SELECT
    `Medical Condition`,
    COUNT(*) AS record_count
FROM healthcare_data
GROUP BY `Medical Condition`
ORDER BY record_count DESC;


-- 7. Validate Admission Type categories
SELECT
    `Admission Type`,
    COUNT(*) AS record_count
FROM healthcare_data
GROUP BY `Admission Type`
ORDER BY record_count DESC;
