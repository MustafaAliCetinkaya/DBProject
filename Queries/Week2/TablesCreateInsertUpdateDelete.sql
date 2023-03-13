create table Customer (
                          FirstName varchar(20) not null ,
                          LastName varchar(20) not null,
                          City varchar(20) not null,
                          Country varchar(20) not null,
                          Phone varchar(15) not null
);

INSERT INTO Customer (FirstName, LastName, City, Country, Phone)
VALUES ('Craig', 'Smith', 'New York', 'USA', '1-01-993 7800');


INSERT INTO Customer (FirstName, LastName, City, Country, Phone)
VALUES ('Ali', 'Can', 'New Jersey', 'USA', '1-01-993 9900');


INSERT INTO Customer (FirstName, LastName, City, Country, Phone)
VALUES ('Pella', 'Kar', 'Paris', 'France', '1-01-993 1100');

select * from Customer;

create table Supplier(
                         CompanyName varchar(20) not null,
                         CompanyID INTEGER PRIMARY KEY,
                         ContactName varchar(20) not null,
                         City varchar(20) not null,
                         Country varchar(20) not null,
                         Phone INTEGER
);

INSERT INTO Supplier (CompanyName, CompanyID, ContactName,
                      City, Country, Phone)
VALUES ('Broodjes Huis', 1234, 'Henk de Groot',
        'Amsterdam', 'Netherlands', '5553828847');

select  * from Supplier;
