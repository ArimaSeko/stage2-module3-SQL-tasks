-- Select all columns from Subject where average mark for that subject is more than average mark for all subjects
-- Select all students who paid for school less than average paid amount for all students
SELECT * FROM SUBJECT INNER JOIN MARK ON  SUBJECT.ID = MARK.SUBJECT_ID GROUP BY SUBJECT.ID, MARK.ID HAVING AVG(MARK.MARK) >(SELECT AVG(MARK) FROM MARK);
SELECT * FROM STUDENT  INNER JOIN PAYMENT ON  STUDENT.ID = PAYMENT.STUDENT_ID GROUP BY STUDENT.ID, PAYMENT.ID HAVING AVG(PAYMENT.AMOUNT) >(SELECT AVG(AMOUNT) FROM PAYMENT);

