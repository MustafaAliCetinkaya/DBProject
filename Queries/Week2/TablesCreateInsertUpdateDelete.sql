create table NewCustomer (
                          FirstName varchar(20) not null ,
                          LastName varchar(20) not null,
                          City varchar(20) not null,
                          Country varchar(20) not null,
                          Phone varchar(15) not null,
                          Address_id INTEGER
);

INSERT INTO NewCustomer (FirstName, LastName, City, Country, Phone, Address_id)
VALUES ('Craig', 'Smith', 'New York', 'USA', '1-01-993 7800',1);


INSERT INTO NewCustomer (FirstName, LastName, City, Country, Phone, Address_id)
VALUES ('Ali', 'Can', 'New Jersey', 'USA', '1-01-993 9900',12);


INSERT INTO NewCustomer (FirstName, LastName, City, Country, Phone)
VALUES ('Pella', 'Kar', 'Paris', 'France', '1-01-993 1100');

select * from NewCustomer;

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


INSERT INTO Supplier (CompanyName, CompanyID, ContactName,
                      City, Country, Phone)
VALUES ('Alican Huis', 98765, 'Groot Hroat',
        'Viana', 'Austria', '5324869706');

select  * from Supplier;

update SUPPLIER set CompanyName='Cydeo Corp' where CompanyID=1234;
update SUPPLIER set City='Bregenz' where ContactName='Groot Hroat';

delete from Supplier where CompanyName='Cydeo Corp';
