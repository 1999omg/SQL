CREATE TABLE Meals(

MealName VARCHAR(100)
)

CREATE TABLE Drinks(
DrinkName VARCHAR(100)

)

INSERT INTO Drinks
VALUES('Orange Juice'), ('Tea'), ('Cofee')
INSERT INTO Meals
VALUES('Omlet'), ('Fried Egg'), ('Sausage')
SELECT *
FROM Meals;
SELECT *
FROM Drinks



SELECT * FROM Meals 
CROSS JOIN Drinks


create table product (
cloth varchar (100))

create table colour (
rang varchar (100)
)

create table size (

psize varchar (100)
)

select * from product 
INSERT INTO product
VALUES('t shirt'), ('jeans'), ('shirt')

INSERT INTO colour
VALUES('red'), ('blue'), ('white')

INSERT INTO size
VALUES('M'), ('L'), ('XL')


SELECT * FROM product 
CROSS JOIN colour