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

/*select * from employees;
-- reads all column from employees table
select * from departments;
-- reads all column from departments table
select first_name from employees;
--get only firstname from employees table
--display city names
select city from locations;
--get me first_name,last_name and salary
select first_name,last_name,salary from employees;
--get me street address and postal code
SELECT street_address, postal_code
FROM locations;
select distinct first_name from employees;
--remove duplicates*/
