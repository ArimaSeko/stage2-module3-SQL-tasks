-- Select all Students from Table Students having average mark more than 8
-- Select students (id and name) who have minimum mark more than 7
-- Select all students(id and name) who paid more than 2 times during 2019
SELECT * FROM STUDENT WHERE ID IN (
    SELECT STUDENT_ID FROM MARK  GROUP BY ID HAVING AVG(MARK) >8
);
SELECT STUDENT.ID, STUDENT.NAME FROM STUDENT WHERE ID IN (
    SELECT STUDENT_ID FROM MARK  GROUP BY ID HAVING MIN(MARK) >7
);
SELECT s.id, s.name
FROM student s
         INNER JOIN payment p ON s.id = p.student_id
WHERE p.payment_date BETWEEN '2019-01-01' AND '2019-12-31'
GROUP BY s.id
HAVING COUNT(p.id) > 2;
