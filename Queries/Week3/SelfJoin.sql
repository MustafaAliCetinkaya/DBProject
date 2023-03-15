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