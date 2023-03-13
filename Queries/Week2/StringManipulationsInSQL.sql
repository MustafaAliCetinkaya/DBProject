/*Test Functions are only used  for the display options, does not modify the table */

select * from employees;
select email from employees;
/*Concatenation operator --> || */
select email||'@gmail.com' from employees;
select first_name||' '||last_name from employees;