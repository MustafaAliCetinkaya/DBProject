create table Developers(

                           Id_Number Integer primary key,

                           Names varchar(30),

                           Salary Integer

);

create table Testers(

                        Id_Number Integer primary key,

                        Names varchar(30),

                        Salary Integer

);



insert all

    into developers values (1, 'Nurullah', 155000)

into developers values (2, 'Safwan', 142000)

into developers values (3, 'Erhan', 850000)

into developers values (4, 'Seyfo', 120000)

into testers values (1, 'Seyfo', 110000)

into testers values(2, 'Hakan', 105000)

into testers values (3, 'Ibrohim', 100000)

insert into developers values (13, 'Mike', 155000);
insert into developers values (24, 'John', 142000);
insert into developers values (35, 'Steven', 850000);
insert into developers values (46, 'Maria', 120000);
insert into testers values (18, 'Steven', 110000);
insert into testers values(29, 'Adam', 105000);
insert into testers values (30, 'Lex', 100000);
commit work;

select * from dual;
select * from Testers;
select * from Developers;

select * from Developers
    union
select * from Testers;

select Names from  Testers
union       --removes the duplicated rows, ascending order by default
select Names from  Developers;

select Names from  Testers
union all
select Names from  Developers;

select Names from  Testers
minus       --returns the un-matching names from first list. Lİke A/B in sets
select Names from  Developers;

select Names from  Testers
intersect       --returns the matching names from two list. Lİke in sets
select Names from  Developers;

--how to find duplicate names in employees table
select first_name,count(*)
from employees
group by first_name
having count(*) >1;

commit work;