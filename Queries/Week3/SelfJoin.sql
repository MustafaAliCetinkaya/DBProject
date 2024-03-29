--self: joins the table itself (employee manager intersection)
select EMPLOYEE_ID, FIRST_NAME, LAST_NAME, MANAGER_ID from EMPLOYEES;

select e1.EMPLOYEE_ID,e1.FIRST_NAME, e1.LAST_NAME, e1.MANAGER_ID, e2.FIRST_NAME||' '|| e2.LAST_NAME as ManagerFullName
    from EMPLOYEES e1 join EMPLOYEES e2 on e1.MANAGER_ID=e2.EMPLOYEE_ID;

select e2.FIRST_NAME||' '|| e2.LAST_NAME as ManagerFullName
    from EMPLOYEES e1 join EMPLOYEES e2 on e1.MANAGER_ID=e2.EMPLOYEE_ID
group by e2.FIRST_NAME||' '|| e2.LAST_NAME;

select e2.FIRST_NAME||' '|| e2.LAST_NAME as ManagerFullName, count(*)
    from EMPLOYEES e1 join EMPLOYEES e2 on e1.MANAGER_ID=e2.EMPLOYEE_ID
group by e2.FIRST_NAME||' '|| e2.LAST_NAME order by count(*)desc ;

--get me all employees firstname, lastname and their managers first and lastname
select employee_id,first_name,last_name,manager_id from employees;

select
    e1.employee_id,e1.first_name,e1.last_name,e1.manager_id,e2.employee_id,e2.FIRST_NAME
    e,e2.last_name
from employees e1 left join employees e2
                            on e1.manager_id = e2.employee_id
order by e1.employee_id;
