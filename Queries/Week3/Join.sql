select  * from CUSTOMER;
select  * from ADDRESS;

--instead of only "join", we can also use  "inner join". Inner means intersection

select * from CUSTOMER join ADDRESS
on CUSTOMER.ADDRESS_ID=ADDRESS.ADDRESS_ID;

select CUSTOMER.CUSTOMER_ID, CUSTOMER.FIRST_NAME, CUSTOMER.LAST_NAME, ADDRESS.ADDRESS, ADDRESS.PHONE
from CUSTOMER join ADDRESS
on CUSTOMER.ADDRESS_ID=ADDRESS.ADDRESS_ID;
--We can use alias for customer--> c / address --> a
select c.CUSTOMER_ID, c.FIRST_NAME, c.LAST_NAME, a.ADDRESS, a.PHONE
from CUSTOMER c join ADDRESS a
on c.ADDRESS_ID=a.ADDRESS_ID;

select c.CUSTOMER_ID, c.FIRST_NAME, c.LAST_NAME, a.ADDRESS, a.PHONE
from CUSTOMER c left join ADDRESS a
on c.ADDRESS_ID=a.ADDRESS_ID;

select c.CUSTOMER_ID, c.FIRST_NAME, c.LAST_NAME, a.ADDRESS, a.PHONE
from CUSTOMER c right join ADDRESS a
on c.ADDRESS_ID=a.ADDRESS_ID;

select c.CUSTOMER_ID, c.FIRST_NAME, c.LAST_NAME, a.ADDRESS, a.PHONE
from CUSTOMER c full join ADDRESS a
on c.ADDRESS_ID=a.ADDRESS_ID;

select * from employees;
select LAST_NAME, FIRST_NAME, DEPARTMENT_ID from EMPLOYEES where LAST_NAME='Grant';
select  DEPARTMENT_NAME, DEPARTMENT_ID from DEPARTMENTS where DEPARTMENT_ID=null;
select * from departments;

select first_name,last_name,department_name
from employees e join departments d
                           on e.department_id = d.department_id;
--Difference is Kimberly Grant
select first_name,last_name,department_name
from employees e left join departments d
                           on e.department_id = d.department_id;

select first_name,last_name,department_name
from employees e right join departments d
                           on e.department_id = d.department_id;