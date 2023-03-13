create table Customer (
                          FirstName varchar(20) not null ,
                          LastName varchar(20) not null,
                          City varchar(20) not null,
                          Country varchar(20) not null,
                          Phone varchar(15) not null
);

INSERT INTO Customer (FirstName, LastName, City, Country, Phone)
VALUES ('Craig', 'Smith', 'New York', 'USA', '1-01-993 7800');

select * from Customer;
