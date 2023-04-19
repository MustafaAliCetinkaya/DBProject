select  * from EMPLOYEES;
select  * from EMPLOYEES;
select FIRST_NAME, LAST_NAME from EMPLOYEES;

select * from DEPARTMENTS;
select * from DEPARTMENTS, EMPLOYEES;

/*Call from different tables together */
select EMPLOYEE_ID, DEPARTMENTS.DEPARTMENT_ID from DEPARTMENTS, EMPLOYEES;

/*In order to avoid from duplication we use distinct keyword*/

select distinct SALARY from EMPLOYEES;
select  DISTINCT MAX_SALARY from JOBS;


/*This query will return a table with three columns: FIRST_NAME, HIRE_DATE, and EMPLOYEE_ID, and only the rows where the EMPLOYEE_ID is not equal to 111 will be included in the result set.*/
select FIRST_NAME, HIRE_DATE, EMPLOYEE_ID from EMPLOYEES
where  EMPLOYEE_ID <> 111;
--employee ID of all employees except the one with employee ID 111:

select FIRST_NAME, SALARY from EMPLOYEES
where SALARY >= 5000 and SALARY <= 10000;

select FIRST_NAME, SALARY from EMPLOYEES
where  SALARY between 5000 and 10000;

--display city names
select city from locations;

--get me first_name,last_name and salary
select first_name,last_name,salary from employees;

--get me street address and postal code
SELECT street_address, postal_code
FROM locations;

select distinct first_name from employees;
--remove duplicates

SELECT first_name FROM employees
WHERE first_name LIKE '___';