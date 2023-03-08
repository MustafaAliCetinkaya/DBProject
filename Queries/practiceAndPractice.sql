select JOB_ID, count(*), sum(SALARY), avg(SALARY)
from EMPLOYEES
group by JOB_ID order by avg(SALARY) desc;

select JOB_ID, count(*),avg(SALARY)
from EMPLOYEES
group by JOB_ID
having avg(SALARY)>6000
order by avg(SALARY) desc;