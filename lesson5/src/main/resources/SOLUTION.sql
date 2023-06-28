select * from payment where amount >=500;
SELECT * FROM student
WHERE TIMESTAMPDIFF(YEAR, birthday, CURDATE()) > 20;
select * from student
where groupnumber = 10
and IMESTAMPDIFF(YEAR, birthday, CURDATE()) < 20;
select * from student
where name like '%Mike%' or groupnumber in (4,5,6);
SELECT * FROM payment
WHERE TIMESTAMPDIFF(MONTH, payment_date, CURDATE()) < 8;
select * from student where name like 'A%';
select * from student
where (name like 'Roxi%' and groupnumber =4)
or  (name like 'Tallie%' and groupnumber =9);

