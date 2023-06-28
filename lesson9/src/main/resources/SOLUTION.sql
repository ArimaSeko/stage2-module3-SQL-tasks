-- Select all Students from Table Students having average mark more than 8
SELECT student.id, student.name FROM student INNER JOIN mark ON student.id = mark.student_id GROUP BY student.id HAVING AVG(mark.mark) > 8;

-- Select students (id and name) who have minimum mark more than 7
SELECT student.id, student.name FROM student INNER JOIN mark ON student.id = mark.student_id GROUP BY student.id HAVING MIN(mark.mark) > 7;

-- Select all students(id and name) who paid more than 2 times during 2019
SELECT student.id, student.name FROM student INNER JOIN payment ON student.id = payment.student_id WHERE YEAR(payment.payment_date) = 2019 GROUP BY student.id HAVING COUNT(payment.id) > 2;
