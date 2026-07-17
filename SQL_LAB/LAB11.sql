USE CSE_3B_422

-- Part – A:

-- 1. Write a query to display the current date & time. Label the column Today_Date.
SELECT GETDATE() AS Today_Date;

-- 2. Write a query to find new date after 365 day with reference to today.
SELECT DATEADD(day, 365, GETDATE()) AS Future_Date;

-- 3. Display the current date in a format that appears as May 5 1994 12:00AM
SELECT CONVERT(VARCHAR, GETDATE(), 100) AS currentDATE;

-- 4. Display the current date in a format that appears as 03 Jan 1995
SELECT CONVERT(VARCHAR, GETDATE(), 106) AS currentDATE;

-- 5. Display the current date in a format that appears as Jan 04, 96
SELECT CONCAT(LEFT(DATENAME(month, GETDATE()), 3), ' ', 
       RIGHT('0' + CAST(DAY(GETDATE()) AS VARCHAR), 2), ', ', 
       RIGHT(YEAR(GETDATE()), 2)) AS currentDATE;

-- 6. Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09.
SELECT DATEDIFF(month, '2008-12-31', '2009-03-31');

-- 7. Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30.
SELECT DATEDIFF(hour, '2012-01-25 07:00', '2012-01-26 10:30');

-- 8. Write a query to extract Day, Month, Year from given date 12-May-16.
SELECT DAY('2016-05-12') AS Day, MONTH('2016-05-12') AS Month, YEAR('2016-05-12') AS Year;

-- 9. Write a query that adds 5 years to current date.
SELECT DATEADD(year, 5, GETDATE());

-- 10. Write a query to subtract 2 months from current date.
SELECT DATEADD(month, -2, GETDATE());

-- 11. Extract month from current date using datename () and datepart () function.
SELECT DATENAME(month, GETDATE()) AS M_Name, DATEPART(month, GETDATE()) AS M_Part;

-- 12. Write a query to find out last date of current month.
SELECT EOMONTH(GETDATE());

-- 13. Calculate your age in years and months.
DECLARE @DOB DATE = '2007-11-14';
SELECT DATEDIFF(year, @DOB, GETDATE()) as year
SELECT DATEDIFF(month, @DOB, GETDATE()) as month;

-- Part – B: Perform following queries on DEPOSIT table.

-- 14. Display all records where account date is in the year 2025.
SELECT * FROM DEPOSIT WHERE YEAR(ADATE) = 2025;

-- 15. Display all records where account date is in the month of March.
SELECT * FROM DEPOSIT WHERE MONTH(ADATE) = 3;

-- 16. Display records where account date is after ‘01-Jan-2025’.
SELECT * FROM DEPOSIT WHERE ADATE > '2025-01-01';

-- 17. Display records where account date is before ‘01-Jan-2025’.
SELECT * FROM DEPOSIT WHERE ADATE < '2025-01-01';

-- 18. Display records where day of account date is 1.
SELECT * FROM DEPOSIT WHERE DAY(ADATE) = 1;

-- 19. Display records where month of account date is greater than 6.
SELECT * FROM DEPOSIT WHERE MONTH(ADATE) > 6;

-- 20. Display records where year of account date is 2026.
SELECT * FROM DEPOSIT WHERE YEAR(ADATE) = 2026;

-- 21. Display number of accounts opened in each year.
SELECT YEAR(ADATE) AS Account_Year, COUNT(*) AS Total_Accounts FROM DEPOSIT GROUP BY YEAR(ADATE);

-- 22. Display number of accounts opened in each month.
SELECT MONTH(ADATE) AS Account_Month, COUNT(*) AS Total_Accounts FROM DEPOSIT GROUP BY MONTH(ADATE);

-- 23. Display maximum amount deposited in each year.
SELECT YEAR(ADATE) AS Account_Year, MAX(AMOUNT) AS Max_Deposit FROM DEPOSIT GROUP BY YEAR(ADATE);

-- Part – C:
-- 24. Display minimum amount deposited in each month
SELECT MONTH(ADATE) AS Account_Month, MIN(AMOUNT) AS Min_Deposit FROM DEPOSIT GROUP BY MONTH(ADATE);

-- 25. Display total amount deposited in each year:
SELECT YEAR(ADATE) AS Account_Year, SUM(AMOUNT) AS Total_Deposit FROM DEPOSIT GROUP BY YEAR(ADATE);

-- 26. Display records where account date is between ‘01-Mar-2025’ and ‘31-Dec-2025’:
SELECT * FROM DEPOSIT WHERE ADATE BETWEEN '2025-03-01' AND '2025-12-31';

-- 27. Display records where account date is in the current year:
SELECT * FROM DEPOSIT WHERE YEAR(ADATE) = YEAR(GETDATE());

-- 28. Display difference in days between today’s date and account date:
SELECT ADATE, DATEDIFF(day, ADATE, GETDATE()) AS Days_Difference FROM DEPOSIT;

