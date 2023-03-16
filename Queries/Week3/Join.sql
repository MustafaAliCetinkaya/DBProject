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
select  LAST_NAME, FIRST_NAME, DEPARTMENT_ID from EMPLOYEES where DEPARTMENT_ID is null;

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

select first_name,last_name,department_name
from employees e full join departments d
                           on e.department_id = d.department_id;

--left outer join with where: returns the non matching records from left table
select c.CUSTOMER_ID, c.FIRST_NAME, c.LAST_NAME, a.ADDRESS, a.PHONE
    from CUSTOMER c left join ADDRESS a on c.ADDRESS_ID=a.ADDRESS_ID
where c.ADDRESS_ID is null;

--right outer join with where: returns the non matching records from right table
select c.CUSTOMER_ID, c.FIRST_NAME, c.LAST_NAME, a.ADDRESS, a.PHONE
    from CUSTOMER c right join ADDRESS a on c.ADDRESS_ID=a.ADDRESS_ID
where c.ADDRESS_ID is null;

select c.CUSTOMER_ID, c.FIRST_NAME, c.LAST_NAME, a.ADDRESS, a.PHONE
    from CUSTOMER c right join ADDRESS a on c.ADDRESS_ID=a.ADDRESS_ID
where c.ADDRESS_ID is null or a.ADDRESS_ID is null;

--full join with where: displays the non matching records from left and right table
select * from CUSTOMER c full join ADDRESS a on c.ADDRESS_ID=a.ADDRESS_ID
where c.ADDRESS_ID is null or a.ADDRESS_ID is null;

--get me firstname,lastname and department name, city,country_name for all employees;
select  * from LOCATIONS;
select  * from COUNTRIES;
select  * from DEPARTMENTS;
select first_name , last_name , department_name, city,country_name
from employees e join departments d
                      on e.department_id = d.department_id
                 join locations L
                      on d.location_id = l.location_id
                 join countries C
                      on c.country_id = l.country_id;