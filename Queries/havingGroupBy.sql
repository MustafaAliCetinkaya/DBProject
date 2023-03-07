/* group by: divides the rows into groups
  having: used for filtering groups that do not satisfy a specific condition */

  select JOB_ID from EMPLOYEES group by JOB_ID;
  select JOB_ID, count (*) from EMPLOYEES group by JOB_ID;
  select JOB_ID, count (*) from EMPLOYEES group by JOB_ID order by count(JOB_ID) desc ;

select JOB_ID, max(SALARY) from EMPLOYEES group by JOB_ID;
select JOB_ID, max(SALARY) from EMPLOYEES group by JOB_ID order by max(SALARY) desc ;

select JOB_ID, min(SALARY) from EMPLOYEES group by JOB_ID;
select JOB_ID, min(SALARY) from EMPLOYEES group by JOB_ID order by min(SALARY) desc ;

select JOB_ID, avg(SALARY) from EMPLOYEES group by JOB_ID;
select JOB_ID, avg(SALARY) from EMPLOYEES group by JOB_ID order by avg(SALARY) desc ;

select JOB_ID from EMPLOYEES group by JOB_ID having max(SALARY)<5000;
select JOB_ID, count (*) from EMPLOYEES group by JOB_ID having max(SALARY)>5000;
select JOB_ID, count (*) from EMPLOYEES group by JOB_ID having avg(SALARY)>10000 order by count(JOB_ID) desc ;

/*--get me unique job_ids
select distinct job_id from employees;
-- get me average salary for IT_PROG
SELECT AVG(salary)
FROM employees
WHERE job_id = 'AC_ACCOUNT';
-- get me average salary for each job_id
select job_id,avg(salary)
from employees
group by job_id;
--get me job_ids where their avg salary is more than 5k
select job_id,avg(salary),count(*),sum(salary)
from employees
group by job_id
having avg(salary) >5000;
--get me job_ids where their avg salary is more than 5k
select job_id,avg(salary),count(*),sum(salary)
from employees
where salary >5000
group by job_id;*/
