/*Aggregate means ==> total, sum, whole, amount*/

select * from departments;
select min(location_id) from departments;
select * from departments where location_id=1400;
select * from departments where location_id=1400;
select * from departments where location_id=(select min(location_id) from departments);

select location_id from departments;
select max(location_id) from departments;
select department_name from departments where location_id=(select max(location_id) from departments);


