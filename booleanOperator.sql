

  --boolean clauses  (comparing clauses )
 --where, =,>,<  AND , OR,  NOT ,!= this are boolean clauses 

create table userlogin (
userid integer primary key ,
username varchar (20) not null,
useremail varchar (50) ,
password varchar (50)not null);

insert into userlogin values (01,'abcomg  ','omgawade@gmail.com','pass@omg');
insert into userlogin values (02,'abcshyam ', ' shyamgawade@gmail.com', 'pass@shyam');
insert into userlogin values (03,'abcram ',' rampawar@gmail.com','pass@ram');

select * from userlogin 
-- display user id greater than 2 
where userid >2 


-- displya id match username and password 
select userid from userlogin 
where username='abcomg'
and password ='pass@omg'



--  skip row 1
select userid from userlogin 
where not username='abcomg'
or password ='pass@omg'

