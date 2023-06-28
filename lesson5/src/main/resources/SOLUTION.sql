SELECT * FROM payment WHERE amount >=500;
SELECT * FROM STUDENT WHERE YEAR(CURDATE())- YEAR(BIRTHDAY)>20;
SELECT * FROM student where groupnumber = 10 and YEAR(CURDATE()) - YEAR(BIRTHDAY)<20;
SELECT * FROM student WHERE Name like 'Mike%' OR groupnumber in (4,5,6);
SELECT * FROM payment WHERE TIMESTAMPDIFF(MONTH, payment_date, CURDATE()) < 8;
SELECT * FROM student WHERE Name like 'A%';
SELECT * FROM student WHERE (Name like 'Roxi%' and groupnumber =4) OR  (Name like 'Tallie%' and groupnumber =9);
-- Select all Payments with amount more or equal 500
-- Select students older than 20
-- Select students from the same group (10) but younger than 20
-- Select Students with Name ‘Mike’ or from the group 4, 5, 6
-- Select Payments dated conducted in past 8 months
-- Select all students whose name starts with ‘A’
-- Select students with name = Roxi and group= 4 or name Tallie and group = 9
