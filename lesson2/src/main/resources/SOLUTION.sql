-- Insert new Students with names “John”, “Chris”, “Carl”
--     for grade “1”, then with names “Oliver”, “James”, “Lucas”
--     and “Henry” for grade “2” and with names “Jacob”
--     and “Logan” for grade “3”. Insert more students for 4
--         and 5 grade.
insert into student(id,name, birthday, groupnumber)
values (1,'John', '2003-5-30',1),(2,'Chris', '2002-04-20',1),
       (3,'Carl', '2003-10-1',1), (4,'Oliver', '2002-2-10',2)
     ,(5,'James', '2002-11-22',2),(6,'Lucas', '2002-4-8',2),
      (7,'Henry', '2002-4-8',2)
     ,(8,'Jacob', '2003-7-11',3),(9,'Logan', '2002-9-9',3),
    (10,'Jessa', '2002-11-11',4),(11,'Lana', '2002-6-19',4)
     ,(12, 'Jim', '2003-1-11',5),(13,'Mia', '2002-12-30',5);
-- Art and music for 1 grade;
-- Geography and history for 2 grade;
-- PE and math for 3 grade;
-- Science and IT for 4 grade.
-- Insert 2 subjects for 5 grade.
insert into subject(id,name, description, grade)
values
    (1,'Art','You are doing art',1),(2,'Music','You are doing music',1),
    (3,'Geography','You are researching world',2),(4,'History','You are learning history',2),
    (5,'PE','Doing physical exercise',3), (6,'Math','Working with numbers',3),
    (7,'Science','Exploring some science',4),(8,'IT','Information technologies',4),
    (9,'Architecture','Exploring buildings',5),(10,'SQL','Exploring SQL database language',5);
insert into paymenttype(id,name)
-- Insert “DAILY”, “WEEKLY”, ”MONTHLY” Payment Types.
values
    (1,'DAILY'),(2,'WEEKLY'),(3,'MONTHLY');

-- Payment is referenced to student
--     with name “John” and “Weekly” payment type;
-- Payment is referenced to student
--     with name “Oliver” and “Monthly” payment type;
-- Payment is referenced to student
--     with name “Henry” and “Weekly” payment type
-- Payment is referenced to student
--         with name “James” and “Daily” payment type.
insert into payment(type_id, amount, student_id,payment_date)
values (2,150,1,'2023-1-12'),(3,600,4,'2022-12-27'),
       (2,1800,14,'2023-05-20'), (1,20,5,'2023-06-27');
-- 8 for Chris by Art;
-- 5 for Oliver by History;
-- 9 for James by Geography;
-- 4 for Jacob by Math;
-- 9 for Logan by PE.
-- Insert more Masks for students
insert into mark(student_id,subject_id,mark)
values
    ((SELECT ID FROM STUDENT WHERE NAME LIKE 'Chris'),(SELECT ID FROM SUBJECT WHERE NAME LIKE 'Art' ),8)
     , ((SELECT ID FROM STUDENT WHERE NAME LIKE 'Oliver'),(SELECT ID FROM SUBJECT WHERE NAME LIKE 'History' ),5),
    ((SELECT ID FROM STUDENT WHERE NAME LIKE 'James'),(SELECT ID FROM SUBJECT WHERE NAME LIKE 'Geography' ),9),
    ((SELECT ID FROM STUDENT WHERE NAME LIKE 'Jacob'),(SELECT ID FROM SUBJECT WHERE NAME LIKE 'Math' ), 4),
    ((SELECT ID FROM STUDENT WHERE NAME LIKE 'Logan'),(SELECT ID FROM SUBJECT WHERE NAME LIKE 'PE' ),9),
       (12,5,10);
