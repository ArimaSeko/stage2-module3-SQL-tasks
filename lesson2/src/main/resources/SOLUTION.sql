INSERT INTO student (name, birthday, groupnumber) VALUES
                                                      ("John", '2005-01-01', 1),
                                                      ("Chris", '2005-02-02', 1),
                                                      ("Carl", '2005-03-03', 1),
                                                      ("Oliver", '2006-04-04', 2),
                                                      ("James", '2006-05-05', 2),
                                                      ("Lucas", '2006-06-06', 2),
                                                      ("Henry", '2006-07-07', 2),
                                                      ("Jacob", '2007-08-08', 3),
                                                      ("Logan", '2007-09-09', 3);

INSERT INTO subject (name, description, grade) VALUES
                                                   ("Art", 'A class where students learn about different art forms', 1),
                                                   ("Music", 'A class where students learn about different musical instruments and how to play them', 1),
                                                   ("Geography", 'A class where students learn about different countries and cultures', 2),
                                                   ("History", 'A class where students learn about important events in history', 2),
                                                   ("PE", 'A class where students learn about different physical activities', 3),
                                                   ("Math", 'A class where students learn about different mathematical concepts', 3),
                                                   ("Science", 'A class where students learn about different scientific concepts', 4),
                                                   ("IT", 'A class where students learn about computers and technology', 4);

INSERT INTO paymenttype (name) VALUES
                                   ('DAILY'),
                                   ('WEEKLY'),
                                   ('MONTHLY');

INSERT INTO payment (type_id, amount, payment_date, student_id) VALUES
                                                                    (2, 50, '2017-11-02 22:02:31', 1),
                                                                    (3, 100, '2016-10-05 12:55:34', 2),
                                                                    (2, 25, '2017-11-02 22:02:31', 3),
                                                                    (1, 10, '2016-10-05 12:55:34', 4);

INSERT INTO mark (student_id, subject_id, mark) VALUES
                                                    (2, 1, 8),
                                                    (3, 2, 5),
                                                    (4, 3, 9),
                                                    (5, 4, 4),
                                                    (6, 5, 9);