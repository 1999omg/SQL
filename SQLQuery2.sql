create table Employee(
empid int not null, 
empname varchar (12),
empemail varchar (20),
empsallery int not null,

)

alter table Employee add constraint pk_empid primary key (empid)
alter table Employee add constraint un_empname unique (empname)
alter table Employee add constraint un_empemail unique (empemail)
alter table Employee add constraint ch_empsallery check (empsallery>100)



select *from Employee 

insert into Employee (empid,empname,empemail,empsallery)values (1,'mr ram','ram@gamil.com',120000)
insert into Employee (empid ,empname, empemail,empsallery )values (2,'mr raghav','raghav@gmail.com',20000)
insert into Employee(empid , empname,empemail,empsallery)values (3,'mr shyam ','shyam@gmail.com',30000)
insert into Employee(empid , empname,empemail,empsallery)values (4,'mr om ','om@gmail.com',30000)

update Employee set empsallery =12000 where empid=2
update Employee set empsallery =20000 where empsallery=12000



delete from Employee where empid =3



select * from Employee where empid>4