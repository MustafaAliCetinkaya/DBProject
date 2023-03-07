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

