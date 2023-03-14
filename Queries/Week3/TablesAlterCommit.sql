select * from departments;

alter table departments add HEADQUARTER varchar(20);
alter table departments rename column HEADQUARTER to DEPARTMENT_HQ;

update DEPARTMENTS set DEPARTMENT_HQ='Virginia' where DEPARTMENT_ID=10;
update DEPARTMENTS set DEPARTMENT_HQ='Georgia' where DEPARTMENT_ID=20;
update DEPARTMENTS set DEPARTMENT_HQ='New York' where DEPARTMENT_ID=30;
update DEPARTMENTS set DEPARTMENT_HQ='Washington' where DEPARTMENT_ID=40;

commit;

alter table DEPARTMENTS drop column DEPARTMENT_HQ;

commit work;

create table Teachers(
                         SchoolName varchar(20) not null,
                         SchoolID INTEGER PRIMARY KEY,
                         City varchar(20) not null,
                         Country varchar(20) not null,
                         Branch varchar(20) not null,
                         Phone INTEGER

);

INSERT INTO Teachers (SchoolName, SchoolID,
                      City, Country, Branch, Phone)
VALUES ('Anna Freud', 1234, 'Virginia',
        'USA', 'Math', '5553828847');

INSERT INTO Teachers (SchoolName, SchoolID,
                      City, Country, Branch, Phone)
VALUES ('Cydeo', 9834, 'Georgia',
        'USA', 'Science', '9753828847');

select * from Teachers;

commit ;

alter table Teachers rename to MontessoriTeachers;
select * from MONTESSORITEACHERS;

alter table MONTESSORITEACHERS add TeacherName varchar(20);
update MONTESSORITEACHERS set TeacherName='Ömer' where BRANCH='Math';
update MONTESSORITEACHERS set TeacherName='Aysun' where BRANCH='Science';

alter table MONTESSORITEACHERS add TeacherLastName varchar(20);
alter table MontessoriTeachers drop column TeacherLastName;

commit ;



