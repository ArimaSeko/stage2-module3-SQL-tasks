SELECT s.* FROM subject s JOIN (SELECT subject_id, AVG(mark) AS average_mark FROM mark GROUP BY subject_id) m ON s.id = m.subject_id WHERE m.average_mark > (SELECT AVG(mark) FROM mark);
SELECT s.* FROM student s JOIN (SELECT student_id, AVG(amount) AS average_paid_amount FROM payment GROUP BY student_id ) p ON s.id = p.student_id WHERE p.average_paid_amount < ( SELECT AVG(amount) FROM payment);
