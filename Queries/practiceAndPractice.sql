select JOB_ID, count(*), sum(SALARY), avg(SALARY)
from EMPLOYEES
group by JOB_ID order by avg(SALARY) desc;