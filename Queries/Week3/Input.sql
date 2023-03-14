select  * from CUSTOMER;
select  * from ADDRESS;

select * from CUSTOMER inner join ADDRESS
on CUSTOMER.ADDRESS_ID=ADDRESS.ADDRESS_ID;

select CUSTOMER.CUSTOMER_ID, CUSTOMER.FIRST_NAME, CUSTOMER.LAST_NAME, ADDRESS.ADDRESS, ADDRESS.PHONE
from CUSTOMER inner join ADDRESS
on CUSTOMER.ADDRESS_ID=ADDRESS.ADDRESS_ID;

select * from employees;
select * from departments;
select first_name,last_name,department_name
from employees e left join departments d
                           on e.department_id = d.department_id;