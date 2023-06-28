SELECT MIN(PAYMENT_DATE) FROM PAYMENT;
SELECT MAX(BIRTHDAY) FROM STUDENT;
SELECT MIN(AMOUNT) FROM PAYMENT WHERE TYPE_ID = (SELECT ID FROM PAYMENTTYPE WHERE NAME LIKE 'WEEKLY');
SELECT AVG(MARK) FROM MARK WHERE SUBJECT_ID = (SELECT ID FROM SUBJECT WHERE NAME LIKE 'Math');
-- Select the youngest student's birthday;
-- Find the earliest made payment's date;
-- Find average mark by Math;
-- Find min amount of payment for payment type “WEEKLY”.