select * from EMPLOYEES where SALARY<5000;
select * from EMPLOYEES where SALARY<5000 and MANAGER_ID=114;

select * from LOCATIONS where LOCATION_ID between 1800 and 2000;
select * from EMPLOYEES where SALARY between 3000 and 5000;
select * from EMPLOYEES where SALARY>= 3000 and SALARY<=4000;

/*"in" == only brings the given statements/range*/
select * from EMPLOYEES where DEPARTMENT_ID in (30);
select * from EMPLOYEES where DEPARTMENT_ID in (30,60);
select * from EMPLOYEES where DEPARTMENT_ID in (60,100);

select * from COUNTRIES where REGION_ID in (1,2);
select * from COUNTRIES where REGION_ID not in (1,2);
select * from COUNTRIES where COUNTRY_ID='AR';
select * from COUNTRIES where COUNTRY_NAME='Italy';
select * from COUNTRIES where COUNTRY_ID in ('AR','CA');
select * from COUNTRIES where COUNTRY_ID not in ('AR','CA');
select * from COUNTRIES where COUNTRY_ID between 'AR' and 'KW';

/*-- I want to see firstname lastname phone number of david(s)
select first_name,last_name,phone_number
from employees
where first_name = 'David' and last_name = 'Lee';
--get me all information who is making more than 7000 salary
select * from employees
where salary > 7000;
--get me email of who is making less than 4000
select email, salary from employees
where salary < 4000;
--get me all info who is working as IT_PROG or SA_REP
select * from employees
where job_id = 'IT_PROG' or job_id = 'SA_REP';
--get me first_name,last_name salary who is making more than 5000 and less than
10000
select first_name,last_name,salary
from employees
where salary >= 5000 and salary <=10000;
select first_name,last_name,salary
from employees
where salary between 5000 and 10000;
--get me all info where emp_id 130 to 170
select *
from employees
where employee_id between 130 and 170;
--get me all info where employee_id 135 176 154 129
select *
from employees
where employee_id = 135 or employee_id = 176 or employee_id = 154 or  employee_id =
129;
select *
from employees
where employee_id in(135,176,154,129);
--get me city of where country_id IT,US,UK
select city,country_id
from locations
where country_id in('IT','US','UK');*/