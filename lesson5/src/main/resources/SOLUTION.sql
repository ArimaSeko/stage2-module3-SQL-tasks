SELECT * FROM payment WHERE amount >=500;
SELECT * FROM student
 WHERE TIMESTAMPDIFF(YEAR, birthday, CURDATE()) > 20;
SELECT * FROM student
 where groupnumber = 10
and TIMESTAMPDIFF(YEAR, birthday, CURDATE()) < 20;
SELECT * FROM student
 WHERE Name like '%Mike%' OR groupnumber in (4,5,6);
SELECT * FROM payment
 WHERE TIMESTAMPDIFF(MONTH, payment_date, CURDATE()) < 8;
SELECT * FROM student WHERE Name like 'A%';
SELECT * FROM student
 WHERE (Name like 'Roxi%' and groupnumber =4)
 OR  (Name like 'Tallie%' and groupnumber =9);

