SELECT *
FROM payment
WHERE type_id IN (
    SELECT id
    FROM paymenttype
    WHERE name = 'MONTHLY'
);

SELECT * FROM mark WHERE SUBJECT_ID = (
    SELECT ID FROM SUBJECT WHERE NAME LIKE 'Art'
    );
SELECT * FROM student
WHERE ID IN (SELECT STUDENT_ID FROM PAYMENT WHERE TYPE_ID = 2);
SELECT * FROM student
    where ID in (SELECT STUDENT_ID FROM MARK WHERE NAME LIKE 'Math');
-- Select all students who has marks by Math.
