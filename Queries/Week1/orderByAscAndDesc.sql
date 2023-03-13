/*ASC==Used for sorting ascending order, upper or lowercase does not matter, by default sorts by ascending */
/*DESC==Used for sorting descending order, upper or lowercase does not matter
  order statement needs to be at the very and after the condition*/

select *
from COUNTRIES
order by REGION_ID;

select *
from EMPLOYEES
order by SALARY;

select * from EMPLOYEES where SALARY>= 3000 and SALARY<=4000 order by SALARY;/*By default asc*/
select * from EMPLOYEES where SALARY>= 3000 and SALARY<=4000 order by SALARY desc;

select * from EMPLOYEES where SALARY not in (3000,4000,5000) order by SALARY desc;


