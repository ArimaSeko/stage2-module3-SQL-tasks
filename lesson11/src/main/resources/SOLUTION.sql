-- Update table Subject. Update grade 5 for subject name ‘End of Suburbia: Oil Depletion and the Collapse of the American Dream’
-- Update table Student. Update groupNumber 8 for student ‘Tremaine Worvill’
-- Update table Payment. Update Amount to 500 and student_id to 2 in case payment_date > 2021-01-01 and type 2
-- Update table Mark. Update Mark = 2 for subject_id 315
UPDATE SUBJECT SET NAME  = 'End of Suburbia: Oil Depletion and the Collapse of the American Dream' WHERE GRADE =5;

UPDATE STUDENT SET GROUPNUMBER = 8 WHERE NAME = 'Tremaine Worvill';

UPDATE PAYMENT SET AMOUNT = 500 AND STUDENT_ID =2 WHERE PAYMENT_DATE = '2021-01-01' AND TYPE_ID=2;

UPDATE MARK SET MARK =2 WHERE SUBJECT_ID = 315;
