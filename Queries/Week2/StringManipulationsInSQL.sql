/*Test Functions are only used  for the display options, does not modify the table */

select * from employees;
select email from employees;

/*Concatenation operator --> || */
select email||'@gmail.com' from employees;
select first_name||' '||last_name from employees;

/*concat (value1,value2)*/
select concat(email,'@gmail.com') from employees;
select concat(first_name,' ') from employees;
select concat(concat(first_name,' '),last_name) from employees;

/*Upper () and Lower () changes values to uppercase and lowercase*/
select lower(first_name) from employees;
select upper(first_name) from employees;
select lower(email||'@gmail.com') as "full_email"
from employees;

/*INITCAP() converts only the initial letter to uppercase */
select initcap(email) from employees;

/*Length(value) counts the letters of the word*/
select length(first_name) from employees;
select first_name, length(first_name) from employees;

/*Replace(ColumnName, OldValue, NewValue)*/
select first_name from employees;
select replace(first_name,'El','Al') from employees;

/*Substr( ColumnName, beginningIndex, endingIndex )*/
select last_name from employees;
select last_name, substr(last_name,0,1) from employees;
select last_name, substr(last_name,0,1),first_name, substr(first_name,0,1)  from employees;
select first_name, last_name, substr(last_name,0,1)|| substr(first_name,0,1)  from employees;

/*trim() deletes the white spaces*/
select last_name from employees;
select concat('         ',last_name) from employees;
select trim(concat('         ',last_name)) from employees;
