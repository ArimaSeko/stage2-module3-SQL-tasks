-- Delete all students with grade more or equals than 4 and all relationships with this student
DELETE student, mark, payment FROM student INNER JOIN mark ON student.id = mark.student_id INNER JOIN payment ON student.id = payment.student_id WHERE student.grade >= 4;

-- Delete students who have at least one mark less than 4
DELETE student FROM student INNER JOIN mark ON student.id = mark.student_id WHERE mark.mark < 4;

-- Delete “Daily” payment type and all relationships with this type
DELETE paymenttype, payment FROM paymenttype INNER JOIN payment ON paymenttype.id = payment.type_id WHERE paymenttype.name = 'Daily';

-- Delete All marks less than 7
DELETE mark FROM mark WHERE mark < 7;
