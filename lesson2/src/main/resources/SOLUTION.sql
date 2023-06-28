insert into student(name, birthday, groupnumber)
values ('John', '2003-5-30',1),('Chris', '2002-04-20',1),
       ('Carl', '2003-10-1',1), ('Oliver', '2002-2-10',2)
     ,('James', '2002-11-22',2),('Lucas', '2002-4-8',2)
     ,('Jacob', '2003-7-11',3),('Logan', '2002-9-9',3),
('Jessa', '2002-11-11',4),('Lana', '2002-6-19',4)
     ,('Jim', '2003-1-11',5),('Mia', '2002-12-30',5);
insert into subject(name, description, grade)
values
    ('Art','You are doing art',1),('Music','You are doing music',1),
    ('Geography','You are researching world',2),('History','You are learning history',2),
    ('PE','Doing physical exercise',3), ('Math','Working with numbers',3),
    ('Science','Exploring some science',4),('IT','Information technologies',4),
    ('Architecture','Exploring buildings',5),('SQL','Exploring SQL database language',5);
insert into paymenttype(name)
values
    ('MONTHLY'),('WEEKLY'),('DAILY');
insert into payment(type_id, amount, student_id,payment_date)
values (2,150,1,'2023-1-12'),(3,600,4,'2022-12-27'),
       (2,1800,14,'2023-05-20'), (1,20,5,'2023-06-27');
insert into mark(student_id,subject_id,mark)
values
    (2,1,8), (4,4,5),(5,3,9),(7,6,4),(8,5,9),(12,5,10);
