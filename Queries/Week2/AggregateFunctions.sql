/*Aggregate means ==> total, sum, whole, amount*/

select * from departments;
select min(location_id) from departments;
select * from departments where location_id=1400;
select * from departments where location_id=1400;
select * from departments where location_id=(select min(location_id) from departments);

select location_id from departments;
select max(location_id) from departments;
select department_name from departments where location_id=(select max(location_id) from departments);

select max(salary) from employees;
select first_name||last_name from employees where salary=24000;
select email from employees where salary=(select max(salary) from employees);

select avg(salary) from employees;
select round ( avg(salary) , 1 ) from employees;
select round ( avg(salary) , 2 ) from employees;
select round ( avg(salary) , 3 ) from employees;

select max(salary)
from employees
where salary <24000;

select max(salary)
from employees
where salary < (select max(salary) from employees);--same with the upper one

select * from employees
where rownum < 11;

--list the employees who is making top 10 salary
--get the first 10 people then order them high to low based on salary
select *
from employees
where rownum < 11
order by salary desc;

--order all employees based on salary high to low then display only first 10 result
select *
from (select * from employees order by salary desc)
where rownum < 11;


select *
from (select * from employees order by salary asc)
where rownum < 11;
