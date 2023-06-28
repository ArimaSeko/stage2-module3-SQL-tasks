
create table Student(
                        id bigint  PRIMARY KEY,
                        name varchar(100),
                        birthday date,
                        student_group int
);
create table Subject(
                        id bigint  PRIMARY KEY,
                        name varchar,
                        description varchar,
                        grade int
);
create table PaymentType(
                            id bigint PRIMARY KEY,
                            name varchar(100)
);
create table Payment(
                        id bigint PRIMARY KEY,
                        type_id bigint,
                        amount decimal,
                        student_id bigint,
                        payment_date datetime,
                        foreign key (type_id) references PaymentType(id),
                        foreign key (student_id) references Student(id)
);
create table Mark(
                     id bigint PRIMARY KEY,
                     student_id bigint,
                     subject_id bigint,
                     mark int,
                     foreign key (subject_id) references Subject(id),
                     foreign key (student_id)  references Student(id)
)







