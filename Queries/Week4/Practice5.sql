/*1. find the 3rd maximum salary from the employees table (do not include duplicates)

2. find the 5th maximum salary from the employees table (do not include duplicates)

3. find the 7th maximum salary from the employees table (do not include duplicates)

4. find the 10th maximum salary from the employees table (do not include duplicates)

5. find the 3rd minimum salary from the employees table (do not include duplicates)

6. find the 5th minimum salary from the employees table (do not include duplicates)

7. find the 7th maximum salary from the employees table (do not include duplicates)

8. find the 10th maximum salary from the employees table (do not include duplicates)*/

select min(salary) from (select distinct salary from employees order by salary desc) where rownum < 4;

 select min(salary) from (select distinct salary from employees order by salary desc) where rownum < 6;

 select min(salary) from (select distinct salary from employees order by salary desc) where rownum < 8;

 select min(salary) from (select distinct salary from employees order by salary desc) where rownum < 11;


 select max(salary) from (select distinct salary from employees order by salary asc) where rownum < 4;

 select max(salary) from (select distinct salary from employees order by salary asc) where rownum < 6;

select max(salary) from (select distinct salary from employees order by salary asc) where rownum < 8;

 select max(salary) from (select distinct salary from employees order by salary asc) where rownum < 11;