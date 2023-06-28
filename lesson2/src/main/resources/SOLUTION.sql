-- Insert Students
INSERT INTO student (name, groupnumber)
VALUES ('John', 1), ('Chris', 1), ('Carl', 1),
       ('Oliver', 2), ('James', 2), ('Lucas', 2), ('Henry', 2),
       ('Jacob', 3), ('Logan', 3);

-- Insert Subjects
INSERT INTO subject (name, description, grade)
VALUES ('Art and music', 'Art and music for 1 grade', 1),
       ('Geography and history', 'Geography and history for 2 grade', 2),
       ('PE and math', 'PE and math for 3 grade', 3),
       ('Science and IT', 'Science and IT for 4 grade', 4),
       ('Subject 1 for grade 5', 'Description for subject 1 grade 5', 5),
       ('Subject 2 for grade 5', 'Description for subject 2 grade 5', 5);

-- Insert Payment Types
INSERT INTO paymenttype (name) VALUES ('DAILY'), ('WEEKLY'), ('MONTHLY');

-- Insert Payments
INSERT INTO payment (type_id, amount, payment_date, student_id) SELECT pt.id, 100.00, NOW(), s.id FROM student s JOIN paymenttype pt ON pt.name = 'WEEKLY' WHERE s.name = 'John';
INSERT INTO payment (type_id, amount, payment_date, student_id) SELECT pt.id, 500.00, NOW(), s.id FROM student s JOIN paymenttype pt ON pt.name = 'MONTHLY' WHERE s.name = 'Oliver';
INSERT INTO payment (type_id, amount, payment_date, student_id) SELECT pt.id, 100.00, NOW(), s.id FROM student s JOIN paymenttype pt ON pt.name = 'WEEKLY' WHERE s.name = 'Henry';

INSERT INTO payment (type_id, amount, payment_date, student_id) SELECT pt.id, 10.00, NOW(), s.id FROM student s JOIN paymenttype pt ON pt.name = 'DAILY' WHERE s.name = 'James';

-- Insert Marks
INSERT INTO mark (student_id, subject_id, mark) SELECT s.id, sub.id, 8 FROM student s JOIN subject sub ON sub.name = 'Art and music' WHERE s.name = 'Chris';

INSERT INTO mark (student_id, subject_id, mark) SELECT s.id, sub.id, 5 FROM student s JOIN subject sub ON sub.name = 'Geography and history' WHERE s.name = 'Oliver';

INSERT INTO mark (student_id, subject_id, mark) SELECT s.id, sub.id, 9 FROM student s JOIN subject sub ON sub.name = 'Geography and history' WHERE s.name = 'James';

INSERT INTO mark (student_id, subject_id, mark) SELECT s.id, sub.id, 4 FROM student s JOIN subject sub ON sub.name = 'PE and math' WHERE s.name = 'Jacob';

INSERT INTO mark (student_id, subject_id, mark) SELECT s.id, sub.id, 9 FROM student s JOIN subject sub ON sub.name = 'PE and math' WHERE s.name = 'Logan';
