CREATE TABLE customer
(
customer_id int NOT NULL,
  customer_name varchar(50) NOT NULL,
  country varchar(50),
  city varchar(50),
  zip_code int,
)

create table products (
id int ,
price int ,
prname varchar (50),

)
insert into products values (01,500,'shirt')
insert into products values (02,600,'jeans')
insert into products values (03,700,'formal shirt')
insert into products values (04,800,'coat')
insert into products values (05,900,'shoes')

select * from products



insert into customer values(1,'om','india','jalna' , 431205)
insert into customer values(2,'raghuvir','usa','washingtone' , 431206)
insert into customer values(3,'arun','barline','jalgav' , 431207)
insert into customer values(4,'ashu','uk','london' , 431208)
insert into customer values(5,'divya','japan','tokayo' , 431209)
insert into customer values(6,'sham','barline','pune' , 431201)
insert into customer values(7,'nitin','dubai','abudhabi' , 431212)
insert into customer values(8,'narendra','india','gorakhpur' , 431213)
insert into customer values(9,'aditya','india','ayodhya' , 431214)
insert into customer values(10,'aditi','india','mathura' , 431216)


--1.	Write a statement that will select the City column from the Customers table
 SELECT country FROM Customer;

 --2.	Select all the different values from the Country column in the Customers table.
 SELECT DISTINCT country from customer ;

 --3.	Select all records where the City column has the value "London
 select* from customer where city='london';

 --4.	Use the NOT keyword to select all records where City is NOT "Berlin".
 select * from customer where not  city  = 'berline';

 --5.	Select all records where the CustomerID column has the value 23.
 select * from customer where customer_id=3

 --7.	Select all records where the City column has the value 'Berlin' or 'London'.
 select* from customer where city ='birline' or city ='london' 


 --8.	Select all records from the Customers table, sort the result alphabetically by the column City.
    SELECT * FROM Customer
     ORDER BY Country

	 --9.	Select all records from the Customers table, sort the result reversed alphabetically by the column City.
	SELECT * FROM Customer
    ORDER BY Country DESC;


	--10.	Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City
	SELECT * FROM Customer
    ORDER BY Country, city 

	--11.	Select all records from the Customers where the PostalCode column is empty.
	select *from Customer where zip_code =null 

	--12.	Select all records from the Customers where the PostalCode column is NOT empty.
	SELECT * from  Customer where zip_code IS NOT NULL;

	--13.	Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "Norway".
	UPDATE Customer SET City = 'Oslo' WHERE Country = 'Norway';

	--14.	Delete all the records from the Customers table where the Country value is 'Norway'.
	DELETE from Customer where Country = 'Norway';

	--15.	Use the MIN function to select the record with the smallest value of the Price column.
	SELECT min(Price) from Products;

	--16.	Use an SQL function to select the record with the highest value of the Price column.
	SELECT max(Price) from Products;

	--17.	Use the correct function to return the number of records that have the Price value set to 20
	SELECT count(*) FROM Products WHERE Price = 18;

	--18.	Use an SQL function to calculate the average price of all products.
	SELECT avg(Price) FROM Products;

	--19.	Use an SQL function to calculate the sum of all the Price column values in the Products table
	SELECT sum(Price) FROM Products;

	--20.	Select all records where the value of the City column starts with the letter "a".
	SELECT * from Customers where city LIKE 'a%';

	--21.	Select all records where the value of the City column ends with the letter "a".
	SELECT * from Customers where city LIKE '%a';

	--22.	Select all records where the value of the City column contains the letter "a".
	SELECT * from customers where city LIKE '%a%';

	--23.	Select all records where the value of the City column starts with letter "a" and ends with the letter "b".
	SELECT * from Customers where city LIKE 'a%b';

	--24.	Select all records where the value of the City column does NOT start with the letter "a".
	SELECT * FROM Customers WHERE City NOT LIKE 'a%';


	--25.	Select all records where the second letter of the City is an "a".
	SELECT * from Customers where City LIKE '_a%';

	--26.	Select all records where the first letter of the City is an "a" or a "c" or an "s".
	SELECT * from Customers where City LIKE '[acs]%';

	--27.	Select all records where the first letter of the City starts with anything from an "a" to an "f".
	  SELECT * FROM Customers WHERE City LIKE '[a-f]%';

	  --28.	Select all records where the first letter of the City is NOT an "a" or a "c" or an "f".
	  SELECT * FROM Customers WHERE City LIKE '[!acf]%'

	  --29.	Use the IN operator to select all the records where the Country is either "Norway" or "France".
	  SELECT * FROM customers WHERE country IN ('Norway', 'France')


	  --30.	Use the IN operator to select all the records where Country is NOT "Norway" and NOT "France".
	  SELECT * FROM Customers WHERE country NOT IN ('Norway', 'France');

	  --31.	Use the BETWEEN operator to select all the records where the value of the Price column is between 10 and 20
	  SELECT * FROM Products WHERE Price BETWEEN 10 AND 20;

	  --32.	Use the BETWEEN operator to select all the records where the value of the Price column is NOT between 10 and 20.
	  SELECT * FROM Products WHERE Price NOT BETWEEN 10 AND 20;

	  --33.	Use the BETWEEN operator to select all the records where the value of the ProductName column is alphabetically between 'Geitost' and 'Pavlova'.
	  SELECT * FROM Products WHERE prname BETWEEN 'Geitost' AND 'Pavlova';

	  --34.	When displaying the Customers table, make an ALIAS of the PostalCode column, the column should be called Pno instead.
	  SELECT customer_name, Address, zip_code AS Pno FROM Customers;

	  --35.	When displaying the Customers table, refer to the table as Consumers instead of Customers.
	  SELECT * FROM Customers AS Consumers;

	  --36.	List the number of customers in each country.

	--  36.	List the number of customers in each country.
	
	select Country ,count(customer_id)as 'count'from customer
	group by country 

	
	--38.	Write the correct SQL statement to create a new database called testDB.
        create database testDB 
	--39.	Write the correct SQL statement to delete a database named testDB
	  DROP DATABASE testDB;

	  --40.	Add a column of type DATE called Birthday in Persons table
	  ALTER TABLE Persons ADD Birthday DATE;

	  --41.	Delete the column Birthday from the Persons table
	  ALTER TABLE Persons Birthday;







	select Country ,count(customer_id)as 'count'from customer
	group by country


	select price ,count (id) as 'countpr'from products
	group by price
	having price <avg(price)   



select *FROM customers 
INNER JOIN products 
ON customers.customer_id = products.id ;




select p.prname ,count (c.customer_id)as 'custcount'from customer c
inner join products p on p.id=c.customer_id
group by p.prname

select c.country,count(c.customer_id)as 'cname' from customer c
group by c.country 
having c.country in ('india','usa')
order by count(customer_id)

