select
    FIRST_NAME
from EMPLOYEES
where FIRST_NAME like 'Al%';

select
    LAST_NAME
from EMPLOYEES
where LAST_NAME not like 'A%';

select *
from employees
where first_name like '__z__';

select *
from employees
where first_name like '_a%';

select *
from employees
where first_name like '_a%' and SALARY>5000;

select min(salary) from employees;
select max(salary) from employees;
select avg(salary) from employees;
select sum(salary) from employees;


/*-- get me all info who is working as IT _PROG or SA_REP
select * from employees
where job_id in('IT_PROG','SA_REP');
--how many employee are working as IT_PROG or SA_REP
select count(*) from employees
where job_id in('IT_PROG','SA_REP');
--how many employees making more than 8000
select count(*) from employees
where salary >8000;
-- how many unique first names we have ?
select count(distinct first_name) from employees;
-- get me all employees information based on who is making more salary to low
salary
select * from employees
order by salary asc;
--desc 9-0 Z-A
--asc 0-9 a-Z
--get me all emp info order by alphabetical based on firstname
select *
from employees
order by first_name;
--NOTE: default order type is asc if you dont specify after column name
-- get me all employees whose first name starts with C
select *
from employees
where first_name like 'C%';
--get me 5 letter first names where the middle char is z;
select *
from employees
where first_name like '__z__';
--get me first name where second char is u;
select *
from employees
where first_name like '_u%';
select * from employees;
--find me minimum salary
select min(salary) from employees;
--find me max salary
select max(salary) from employees;
--find me avg salary
select avg(salary) from employees;
--round
select round(avg(salary),2) from employees;
select sum(salary) from employees;*/