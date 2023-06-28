SELECT * FROM payment WHERE type_id IN (SELECT id FROM paymenttype WHERE name = 'MONTHLY');
SELECT * FROM mark WHERE SUBJECT_ID = (SELECT ID FROM SUBJECT WHERE NAME LIKE 'Art');
SELECT * FROM student WHERE ID IN (SELECT STUDENT_ID FROM PAYMENT WHERE TYPE_ID = (SELECT ID FROM PAYMENTTYPE WHERE NAME LIKE 'WEEKLY'));
SELECT * FROM student where ID in (SELECT STUDENT_ID FROM MARK WHERE SUBJECT_ID = (SELECT ID FROM SUBJECT WHERE NAME LIKE 'Math'));
-- Select Payments with “MONTHLY” type;
-- Select all marks by Art
-- Select all students who have “WEEKLY” payments;
-- Select all students who has marks by Math.