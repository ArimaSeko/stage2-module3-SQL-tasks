alter table student
alter column birthday date not null;
alter table Mark
alter column student_id set not null;
alter table Mark
alter column subject_id set not null;
alter table Mark
add constraint markConstraint check (mark>1 and mark<10);
alter table Subject
    add constraint subconst check(grade>1 and grade<5);
alter table PaymentType
    add constraint paynamecons unique(name);
alter table Payment
    alter column type_id set not null;
alter table Payment
    alter column amount set not null;
alter table Payment
    alter column payment_date set not null;
