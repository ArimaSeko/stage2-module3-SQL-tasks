SELECT * FROM payment WHERE amount >=500;
SELECT * FROM STUDENT WHERE YEAR(CURDATE())- YEAR(BIRTHDAY)>20;
SELECT * FROM student where groupnumber = 10 and YEAR(CURDATE()) - YEAR(BIRTHDAY)<20;
SELECT * FROM student WHERE Name like 'Mike%' OR groupnumber in (4,5,6);
select * from payment where payment_date >= (SELECT DATEADD(month, -8, '2022-08-25') AS DateAdd);
SELECT * FROM student WHERE Name like 'A%';
SELECT * FROM student WHERE (Name like 'Roxi%' and groupnumber =4) OR  (Name like 'Tallie%' and groupnumber =9);

