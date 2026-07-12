use CSE_3B_422

-- Part – A:

-- 1. Display the Highest, Lowest Salary and Label the columns Maximum, Minimum respectively.
SELECT
    MAX(salary) AS Maximum, 
    MIN(salary) AS Minimum
FROM EMPLOYEE;


-- 2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal, respectively.
SELECT
    SUM(salary) AS TOTAL_SAL, 
    AVG(salary) AS AVERAGE_SAL
FROM EMPLOYEE;


-- 3. Find total number of employees of EMPLOYEE table.
SELECT 
    COUNT(EID) AS COUNT_EMPLOYEE
FROM EMPLOYEE;


-- 4. Find highest salary from Rajkot city.
SELECT 
    MAX(SALARY) 
FROM EMPLOYEE
WHERE CITY = 'RAJKOT';


-- 5. Give maximum salary from IT department.
SELECT 
    MAX(SALARY) 
FROM EMPLOYEE
WHERE DEPARTMENT = 'IT';


-- 6. Count employee department is HR.
SELECT 
    COUNT(DEPARTMENT)
FROM EMPLOYEE
WHERE DEPARTMENT = 'HR';


-- 7. Display average salary of Admin department.
SELECT 
    AVG(salary)
FROM EMPLOYEE
WHERE DEPARTMENT = 'ADMIN';


-- 8. Display total salary of HR department.
SELECT 
    SUM(SALARY)
FROM EMPLOYEE
WHERE DEPARTMENT = 'HR';


-- 9. Count total number of cities of employee without duplication.
SELECT 
    COUNT(DISTINCT CITY)
FROM EMPLOYEE;


-- 10. Count unique departments.
SELECT 
    COUNT(DISTINCT DEPARTMENT)
FROM EMPLOYEE;


-- 11. Display minimum salary of employee who belongs to Ahmedabad.
SELECT
    MIN(SALARY)
FROM EMPLOYEE
WHERE CITY = 'AHMEDABAD';


-- 12. Find city wise highest salary.
SELECT
    CITY,
    MAX(DISTINCT SALARY)
FROM EMPLOYEE
GROUP BY CITY;


-- 13. Find department wise lowest salary.
SELECT
    DEPARTMENT,
    MIN(DISTINCT SALARY)
FROM EMPLOYEE
GROUP BY DEPARTMENT;


-- 14. Display minimum salary in each city.
SELECT
    CITY,
    MIN(DISTINCT SALARY)
FROM EMPLOYEE
GROUP BY CITY;


-- 15. Display average salary of employees from Surat.
SELECT
    AVG(SALARY)
FROM EMPLOYEE
WHERE CITY = 'RAJKOT';


-- 16. Display total salary of female employees.
SELECT 
    SUM(SALARY)
FROM EMPLOYEE
WHERE GENDER = 'FEMALE';


-- 17. Count number of male employees.
SELECT 
    COUNT(EID)
FROM EMPLOYEE
WHERE GENDER = 'MALE';


-- 18. Display city with the total number of employees belonging to each city.
SELECT 
    CITY,
    COUNT(EID)
FROM EMPLOYEE
GROUP BY CITY ;


-- 19. Count number of employees in each city where gender is MALE.
SELECT 
    CITY,
    COUNT(DISTINCT EID)
FROM EMPLOYEE
WHERE GENDER = 'MALE'
GROUP BY CITY;


-- 20. Display maximum salary in each department where city is not Ahmedabad.
SELECT
    DEPARTMENT,
    MAX(DISTINCT SALARY)
FROM EMPLOYEE
WHERE CITY != 'AHMEDABAD'
GROUP BY DEPARTMENT;


-- Part – B:


-- 21. Display minimum salary in each city where gender is FEMALE.
SELECT 
    CITY,
    MIN(SALARY)
 FROM EMPLOYEE
    WHERE GENDER = 'FEMALE'
    GROUP BY CITY;


-- 22. Give total salary of each department of EMPLOYEE table.
SELECT
    DEPARTMENT,
    SUM(DISTINCT SALARY)
FROM EMPLOYEE
GROUP BY DEPARTMENT;


-- 23. Give average salary of each department of EMPLOYEE table without displaying the respective
-- department name.
SELECT
-- DEPARTMENT,
    AVG(DISTINCT SALARY)
FROM EMPLOYEE
GROUP BY DEPARTMENT;


-- 24. Count the number of employees for each department in every city.
SELECT 
CITY,
    DEPARTMENT,
    COUNT(EID)
FROM EMPLOYEE
GROUP BY CITY , DEPARTMENT;


-- 25. Calculate the total salary distributed to male and female employees.
SELECT 
    GENDER, 
    SUM(SALARY) AS Total_Salary
FROM EMPLOYEE
GROUP BY GENDER;


-- Part – C:
-- 26. Give city wise maximum and minimum salary of female employees.
SELECT 
    CITY, 
    MAX(SALARY) AS Maximum_Salary, 
    MIN(SALARY) AS Minimum_Salary
FROM EMPLOYEE
WHERE GENDER = 'FEMALE'
GROUP BY CITY;


-- 27. Calculate department, city, and gender wise average salary.
SELECT 
    DEPARTMENT, 
    CITY, 
    GENDER, 
    AVG(SALARY) AS Average_Salary
FROM EMPLOYEE
GROUP BY DEPARTMENT, CITY, GENDER;


-- 28. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
SELECT 
    (MAX(SALARY) - MIN(SALARY)) AS DIFFERENCE
FROM EMPLOYEE;


-- 29. Display sum of salaries of department wise where department name consist 5 letter.
SELECT 
    DEPARTMENT, 
    SUM(SALARY) AS Total_Salary
FROM EMPLOYEE
WHERE LEN(DEPARTMENT) = 5
GROUP BY DEPARTMENT;


-- 30. Find the Maximum sa lary department & city wise in which city name starts with ‘R’.
SELECT 
    DEPARTMENT, 
    CITY, 
    MAX(SALARY) AS Maximum_Salary
FROM EMPLOYEE
WHERE CITY LIKE 'R%'
GROUP BY DEPARTMENT, CITY;