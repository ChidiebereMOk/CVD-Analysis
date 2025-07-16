USE cardiovasculardb;

-- Counting total number of patients within the dataset
SELECT
	COUNT(*) AS total_patients
FROM cardio_train;
-- Calculating gender breakdown
SELECT
    (
    SELECT COUNT(*)
    FROM cardio_train
    WHERE gender = 'Male') AS Male_Patients,
    (
    SELECT COUNT(*)
    FROM cardio_train
    WHERE gender = 'Female') AS Female_Patients
FROM cardio_train
LIMIT 1;

-- Average Age
SELECT
	AVG(age)
AS average_age
FROM cardio_train;

-- Average Height (in inches)
SELECT
	AVG(height) AS average_height
FROM cardio_train;

-- Calculating BMI
SELECT
	id AS Patient_ID, 
    ROUND(weight/POWER(height,2))*703 AS BMI
FROM cardio_train;

-- Patients with and without cardiovascular disease
SELECT
	(
    SELECT COUNT(*)
    FROM cardio_train
    WHERE cardio = 'Yes') AS positive_for_cvd,
    (
    SELECT COUNT(*)
    FROM cardio_train
    WHERE cardio = 'No') AS negative_for_cvd
FROM cardio_train
LIMIT 1;

-- Analysis of empirical patient data
-- Patients with and without cardiovascular disease grouped by cholesterol levels
SELECT
    COUNT(CASE WHEN cholesterol = 'Normal' AND cardio = 'Yes' THEN 1 END) AS positive_cvd_normal_cholesterol,
    COUNT(CASE WHEN cholesterol = 'Above Normal' AND cardio = 'Yes' THEN 1 END) AS positive_cvd_above_normal_cholesterol,
    COUNT(CASE WHEN cholesterol = 'Well Above Normal' AND cardio = 'Yes' THEN 1 END) AS positive_cvd_well_above_normal_cholesterol,
    COUNT(CASE WHEN cholesterol = 'Normal' AND cardio = 'No' THEN 1 END) AS negative_cvd_normal_cholesterol,
    COUNT(CASE WHEN cholesterol = 'Above Normal' AND cardio = 'No' THEN 1 END) AS negative_cvd_above_normal_cholesterol,
    COUNT(CASE WHEN cholesterol = 'Well Above Normal' AND cardio = 'No' THEN 1 END) AS negative_cvd_well_above_normal_cholesterol
FROM cardio_train;

-- Patients with and without cardiovascular disease grouped by glucose levels
SELECT
    COUNT(CASE WHEN gluc = 'Normal' AND cardio = 'Yes' THEN 1 END) AS positive_cvd_normal_cholesterol,
    COUNT(CASE WHEN gluc = 'Above Normal' AND cardio = 'Yes' THEN 1 END) AS positive_cvd_above_normal_cholesterol,
    COUNT(CASE WHEN gluc = 'Well Above Normal' AND cardio = 'Yes' THEN 1 END) AS positive_cvd_well_above_normal_cholesterol,
    COUNT(CASE WHEN gluc = 'Normal' AND cardio = 'No' THEN 1 END) AS negative_cvd_normal_cholesterol,
    COUNT(CASE WHEN gluc = 'Above Normal' AND cardio = 'No' THEN 1 END) AS negative_cvd_above_normal_cholesterol,
    COUNT(CASE WHEN gluc = 'Well Above Normal' AND cardio = 'No' THEN 1 END) AS negative_cvd_well_above_normal_cholesterol
FROM cardio_train;


-- Analysis of behavioral data
SELECT
	COUNT(CASE WHEN cardio = 'Yes' AND smoke = 'No' AND alco = 'No' AND active = 'Yes' THEN 1 END) as positive_cvd_no_risk_factors,
    COUNT(CASE WHEN cardio = 'Yes' AND smoke = 'No' AND alco = 'No' AND active = 'No' THEN 1 END) as positive_cvd_inactive,
    COUNT(CASE WHEN cardio = 'Yes' AND smoke = 'No' AND alco = 'Yes' AND active = 'Yes' THEN 1 END) as positive_cvd_drinks,
    COUNT(CASE WHEN cardio = 'Yes' AND smoke = 'Yes' AND alco = 'No' AND active = 'Yes' THEN 1 END) as positive_cvd_smokes,
    COUNT(CASE WHEN cardio = 'Yes' AND smoke = 'Yes' AND alco = 'No' AND active = 'No' THEN 1 END) as positive_cvd_smokes_inactive,
    COUNT(CASE WHEN cardio = 'Yes' AND smoke = 'No' AND alco = 'Yes' AND active = 'No' THEN 1 END) as positive_cvd_drinks_inactive,
    COUNT(CASE WHEN cardio = 'Yes' AND smoke = 'Yes' AND alco = 'Yes' AND active = 'Yes' THEN 1 END) as positive_cvd_smokes_drinks,
    COUNT(CASE WHEN cardio = 'Yes' AND smoke = 'Yes' AND alco = 'Yes' AND active = 'No' THEN 1 END) as positive_cvd_smokes_drinks_inactive
FROM cardio_train;

SELECT
	COUNT(CASE WHEN cardio = 'No' AND smoke = 'No' AND alco = 'No' AND active = 'Yes' THEN 1 END) as negative_cvd_no_risk_factors,
    COUNT(CASE WHEN cardio = 'No' AND smoke = 'No' AND alco = 'No' AND active = 'No' THEN 1 END) as negative_cvd_inactive,
    COUNT(CASE WHEN cardio = 'No' AND smoke = 'No' AND alco = 'Yes' AND active = 'Yes' THEN 1 END) as negative_cvd_drinks,
    COUNT(CASE WHEN cardio = 'No' AND smoke = 'Yes' AND alco = 'No' AND active = 'Yes' THEN 1 END) as negative_cvd_smokes,
    COUNT(CASE WHEN cardio = 'No' AND smoke = 'Yes' AND alco = 'No' AND active = 'No' THEN 1 END) as negative_cvd_smokes_inactive,
    COUNT(CASE WHEN cardio = 'No' AND smoke = 'No' AND alco = 'Yes' AND active = 'No' THEN 1 END) as negative_cvd_drinks_inactive,
    COUNT(CASE WHEN cardio = 'No' AND smoke = 'Yes' AND alco = 'Yes' AND active = 'Yes' THEN 1 END) as negative_cvd_smokes_drinks,
    COUNT(CASE WHEN cardio = 'No' AND smoke = 'Yes' AND alco = 'Yes' AND active = 'No' THEN 1 END) as negative_cvd_smokes_drinks_inactive
FROM cardio_train;