alter table student
alter column birthday date not null;

alter table Mark
alter column student_id set not null;

alter table Mark
alter column subject_id set not null;

alter table Mark
add constraint markConstraint check (mark>0 and mark<11);

alter table Subject
    add constraint subconst check(grade>0 and grade<6);

alter table PaymentType
    add constraint paynamecons unique(name);

alter table Payment
    alter column type_id set not null;
alter table Payment
    alter column amount set not null;
alter table Payment
    alter column payment_date set not null;

select * from student;
select * from student limit 50;
select name from student;
select distinct Amount from Payment;