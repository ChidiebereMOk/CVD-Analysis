CREATE DATABASE cardiovasculardb;
USE cardiovasculardb;
-- Converting age column to years
UPDATE cardio_train 
SET age = floor(age/365);

-- Converting weight column to pounds
UPDATE cardio_train 
SET weight = floor(weight*2.20462);

-- Converting height column to inches
UPDATE cardio_train 
SET height = floor(height/2.54);

-- Converting gender column to 'Male' and 'Female'
ALTER TABLE cardio_train
CHANGE gender gender VARCHAR(10);

UPDATE cardio_train
SET gender = 'Male' 
WHERE gender = 2;

UPDATE cardio_train
SET gender = 'Female' 
WHERE gender = '1';

-- Converting cholesterol column from 1, 2 and 3 to Normal, Above Normal and Well Above Normal
ALTER TABLE cardio_train
CHANGE cholesterol cholesterol VARCHAR(50);

UPDATE cardio_train
SET cholesterol = 'Normal'
WHERE cholesterol = '1';

UPDATE cardio_train
SET cholesterol = 'Above Normal'
WHERE cholesterol = '2';

UPDATE cardio_train
SET cholesterol = 'Well Above Normal'
WHERE cholesterol = '3';

-- Converting alcohol intake column from 0 and 1 to 'Yes' and 'No'
ALTER TABLE cardio_train
CHANGE alco alco VARCHAR(10);

UPDATE cardio_train
SET alco = 'Yes'
WHERE alco = '1';

UPDATE cardio_train
SET alco = 'No'
WHERE alco = '0';

-- Converting physical activity column from 0 and 1 to 'Yes' and 'No'
ALTER TABLE cardio_train
CHANGE active active VARCHAR(10);

UPDATE cardio_train
SET active = 'Yes'
WHERE active = '1';

UPDATE cardio_train
SET active = 'No'
WHERE active = '0';

-- Converting smoking column from 0 and 1 to 'Yes' and 'No'
ALTER TABLE cardio_train
CHANGE smoke smoke VARCHAR(10);

UPDATE cardio_train
SET smoke = 'Yes'
WHERE smoke = '1';

UPDATE cardio_train
SET smoke = 'No'
WHERE smoke = '0';

-- Converting presence of cardiovascular disease column from 0 and 1 to 'Yes' and 'No'
ALTER TABLE cardio_train
CHANGE cardio cardio varchar(10);

UPDATE cardio_train
SET cardio = 'Yes'
WHERE cardio = '1';

UPDATE cardio_train
SET cardio = 'No'
WHERE cardio = '0';

-- Converting glucose column from 1, 2 and 3 to Normal, Above Normal and Well Above Normal
ALTER TABLE cardio_train
CHANGE gluc gluc VARCHAR(50);

UPDATE cardio_train
SET gluc = 'Normal'
WHERE gluc = '1';

UPDATE cardio_train
SET gluc = 'Above Normal'
WHERE gluc = '2';

UPDATE cardio_train
SET gluc = 'Well Above Normal'
WHERE gluc = '3';

