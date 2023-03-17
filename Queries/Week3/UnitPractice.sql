CREATE TABLE Worker (
                        WORKER_ID INTEGER NOT NULL PRIMARY KEY,
                        FIRST_NAME CHAR(25),
                        LAST_NAME CHAR(25),
                        SALARY INTEGER,
                        JOINING_DATE CHAR(25),
                        DEPARTMENT CHAR(25)
);

INSERT INTO Worker
(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
    (001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR');

INSERT INTO Worker
(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES (002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin');

INSERT INTO Worker VALUES (003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR');
INSERT INTO Worker VALUES(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin');
INSERT INTO Worker VALUES(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin');
INSERT INTO Worker VALUES(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account');
INSERT INTO Worker VALUES(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account');
INSERT INTO Worker VALUES(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');

select * from Worker;
Select FIRST_NAME AS WORKER_NAME from Worker;
Select upper(FIRST_NAME) from Worker;

Select distinct DEPARTMENT from Worker;
Select DEPARTMENT, count(*)from Worker
group by DEPARTMENT;

Select substr(FIRST_NAME,1,3) from Worker;

Select * from Worker order by FIRST_NAME asc,DEPARTMENT desc;



