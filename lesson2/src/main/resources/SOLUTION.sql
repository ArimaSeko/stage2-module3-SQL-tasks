-- Insert new Students with names “John”, “Chris”, “Carl” for grade “1”, then with names
-- “Oliver”, “James”, “Lucas” and “Henry” for grade “2” and with names “Jacob” and “Logan” for grade “3”. Insert more students for 4 and 5 grade.
INSERT INTO student (name, birthday, groupnumber)
VALUES ('John', '2008-01-01', 1),
       ('Chris', '2008-02-02', 1),
       ('Carl', '2008-03-03', 1),
       ('Oliver', '2009-01-01', 2),
       ('James', '2009-02-02', 2),
       ('Lucas', '2009-03-03', 2),
       ('Henry', '2009-04-04', 2),
       ('Jacob', '2010-01-01', 3),
       ('Logan', '2010-02-02', 3);
-- Insert new Subjects:

-- Art and music for 1 grade;
-- Geography and history for 2 grade;
-- PE and math for 3 grade;
-- Science and IT for 4 grade.
-- Insert 2 subjects for 5 grade.
INSERT INTO subject (name, description, grade) VALUES
                                                   ('Art', 'The study of creating beautiful and meaningful objects', 1),
                                                   ('Music', 'The study of sound and its production, performance, and appreciation', 1);

INSERT INTO subject (name, description, grade) VALUES ('Geography', 'The study of the Earth', 2),
                                                      ('History', 'The study of past events', 2);

INSERT INTO subject (name, description, grade) VALUES
                                                   ('PE', 'The study of physical fitness and exercise', 3),
                                                   ('Math', 'The study of numbers and their operations', 3);

INSERT INTO subject (name, description, grade) VALUES
                                                   ('Science', 'The study of the natural world', 4),
                                                   ('IT', 'The study of information technology', 4);

INSERT INTO subject (name, description, grade) VALUES
                                                   ('Literature', 'The study of written works', 5),
                                                   ('Foreign Language', 'The study of a language other than one''s native language', 5);

INSERT INTO paymenttype (name)
VALUES ('DAILY'),
       ('WEEKLY'),
       ('MONTHLY');
--
INSERT INTO payment (type_id, amount, payment_date, student_id) VALUES (
                                                                           (SELECT id FROM paymenttype WHERE name = 'WEEKLY'),
                                                                           100.00,
                                                                           '2023-06-28 05:15:15',
                                                                           (SELECT id FROM student WHERE name = 'John')
                                                                       ),
                                                                       (
                                                                           (SELECT id FROM paymenttype WHERE name = 'MONTHLY'),
                                                                           200.00,
                                                                           '2023-06-01 05:15:15',
                                                                           (SELECT id FROM student WHERE name = 'Oliver')
                                                                       ),
                                                                       (
                                                                           (SELECT id FROM paymenttype WHERE name = 'WEEKLY'),
                                                                           50.00,
                                                                           '2023-06-24 05:15:15',
                                                                           (SELECT id FROM student WHERE name = 'Henry')
                                                                       ),
                                                                       (
                                                                           (SELECT id FROM paymenttype WHERE name = 'DAILY'),
                                                                           10.00,
                                                                           '2023-06-28 05:15:15',
                                                                           (SELECT id FROM student WHERE name = 'James')
                                                                       );
INSERT INTO mark (student_id, subject_id, mark) VALUES (
                                                           (SELECT id FROM student WHERE name = 'Chris'),
                                                           (SELECT id FROM subject WHERE name = 'Art'),
                                                           8
                                                       ),
                                                       (
                                                           (SELECT id FROM student WHERE name = 'Oliver'),
                                                           (SELECT id FROM subject WHERE name = 'History'),
                                                           5
                                                       ),
                                                       (
                                                           (SELECT id FROM student WHERE name = 'James'),
                                                           (SELECT id FROM subject WHERE name = 'Geography'),
                                                           9),
                                                       (
                                                           (SELECT id FROM student WHERE name = 'Jacob'),
                                                           (SELECT id FROM subject WHERE name = 'Math'),
                                                           4
                                                       ),
                                                       (
                                                           (SELECT id FROM student WHERE name = 'Logan'),
                                                           (SELECT id FROM subject WHERE name = 'PE'),
                                                           9
                                                       );