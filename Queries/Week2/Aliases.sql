--Aliases: used to give temporary name (nickname, codename) to tables and columns

-- For column: we use as keyword. For table: enter a space then name

select first_name||' '||last_name as "FULL NAME" from employees;
select lower(email||'@gmail.com') as "Email Addresses" from employees;

--Table aliases
select * from employees;
select * from employees, job_history;
select e.email, j.job_id from employees e, job_history j;

