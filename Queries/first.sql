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
