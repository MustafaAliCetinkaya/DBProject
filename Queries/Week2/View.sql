/*A VIEW in SQL Server is like a virtual table that contains data from
  one or multiple tables.
It does not hold any data and does not exist physically in the database.
  CREATE VIEW tableName AS Type Query Here*/

select first_name||' '||last_name as FULLNAME from employees;

create view EmployeeInfo as select first_name||' '||last_name as FULLNAME from employees;

select * from EmployeeInfo;

select first_name||' '||last_name||' : '||lower(email||'@gmail.com') as "Email Addresses" from employees;
create or replace view EmployeeInfo as select first_name||' '||last_name||' : '||lower(email||'@gmail.com') as "Email Addresses" from employees;

select * from EmployeeInfo;

drop view EmployeeInfo;


