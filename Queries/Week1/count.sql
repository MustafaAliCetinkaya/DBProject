/*usually count is used with condition*/
select count(*) from EMPLOYEES;


select COUNTRY_NAME from COUNTRIES;
select count(COUNTRY_NAME) from COUNTRIES where COUNTRY_NAME like 'I%';
select count(COUNTRY_NAME) from COUNTRIES where COUNTRY_NAME like '%a%';
select count(COUNTRY_NAME) from COUNTRIES where COUNTRY_NAME like 'A%' and COUNTRY_NAME like '%a';

select  count(*) from EMPLOYEES where MANAGER_ID=100;
select count(*) from EMPLOYEES where SALARY<10000;

select min(LOCATION_ID) from DEPARTMENTS;
select * from DEPARTMENTS where LOCATION_ID=( select min(LOCATION_ID) from DEPARTMENTS );
select * from DEPARTMENTS where LOCATION_ID=1400;

select max(LOCATION_ID) from DEPARTMENTS;
select * from DEPARTMENTS where LOCATION_ID=( select max(LOCATION_ID) from DEPARTMENTS );
select * from DEPARTMENTS where LOCATION_ID=2700;

select min(salary) from employees;
select max(salary) from employees;
select avg(salary) from employees;
select round(avg(salary),2) from employees;
select sum(salary) from employees;
