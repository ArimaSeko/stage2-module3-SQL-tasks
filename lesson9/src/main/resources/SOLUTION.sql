-- Select all Students from Table Students having average mark more than 8
-- Select students (id and name) who have minimum mark more than 7
-- Select all students(id and name) who paid more than 2 times during 2019
SELECT * FROM STUDENT WHERE ID IN (
    SELECT STUDENT_ID FROM MARK  GROUP BY ID HAVING AVG(MARK) >8
);
SELECT STUDENT.ID, STUDENT.NAME FROM STUDENT WHERE ID IN (
    SELECT STUDENT_ID FROM MARK  GROUP BY ID HAVING MIN(MARK) >7
);
SELECT STUDENT.ID, STUDENT.NAME FROM STUDENT
    INNER JOIN PAYMENT ON STUDENT.ID = PAYMENT.STUDENT_ID GROUP BY STUDENT.NAME HAVING COUNT(STUDENT.NAME)>2;
