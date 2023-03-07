select * from EMPLOYEES where SALARY<5000;
select * from EMPLOYEES where SALARY<5000 and MANAGER_ID=114;

select * from LOCATIONS where LOCATION_ID between 1800 and 2000;
select * from EMPLOYEES where SALARY between 3000 and 5000;

/*"in" == only brings the given statements/range*/
select * from EMPLOYEES where DEPARTMENT_ID in (30);
select * from EMPLOYEES where DEPARTMENT_ID in (30,60);
select * from EMPLOYEES where DEPARTMENT_ID in (60,100);

select * from COUNTRIES where COUNTRY_NAME in ('BE');