ALTER TABLE student
ADD CONSTRAINT birthday_not CHECK (birthday is not null);

ALTER TABLE mark
    ADD CONSTRAINT markCheck CHECK (mark >= 1 AND mark <= 10),
    ADD CONSTRAINT studnotnull CHECK (student_id is not null),
    ADD CONSTRAINT studnotnull CHECK (subject_id is not null);

ALTER TABLE subject
    ADD CONSTRAINT gradeCheck CHECK (grade >= 1 AND grade <= 5);

ALTER TABLE paymenttype
    ADD CONSTRAINT unique_name UNIQUE (name);


ALTER TABLE payment
    ADD CONSTRAINT type_id_not CHECK (type_id is not null),
    ADD CONSTRAINT amount_not CHECK (amount is not null),
    ADD CONSTRAINT payment_date_not CHECK (payment_date is not null);

