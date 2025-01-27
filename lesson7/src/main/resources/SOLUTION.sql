SELECT MARK FROM MARK WHERE MARK >6 ORDER BY MARK DESC;
SELECT * FROM PAYMENT WHERE AMOUNT < 300 ORDER BY AMOUNT ASC;
SELECT * FROM PAYMENTTYPE ORDER BY NAME ASC;
SELECT * FROM STUDENT ORDER BY NAME DESC;
SELECT * FROM STUDENT WHERE ID IN (SELECT STUDENT_ID FROM PAYMENT WHERE AMOUNT>1000) ORDER BY BIRTHDAY ASC;
-- Select marks which is more than 6 and filter in descending order;
-- Select payments which is less than 300 and filter in ascending order;
-- Select payment types filtered alphabetically;
-- Select students filtered in reverse alphabetical order;
-- Select students who have at least one payment more than 1000 and filter them by birthday date ASC.