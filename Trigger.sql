select* from employeeD;

create trigger tremployeeinsert
on employeeD for insert
as begin
declare @eid int
select @eid=empid from inserted
insert into EmpLog values('New record with id '+cast(@eid as varchar(10))
+' added at '+cast(getdate() as varchar(30)))
end

insert into Employee values(15,'test3','test3@gmail.com',22,'India',3,23000,5)
delete from Employee where empid=13


create trigger tr_employee_delete
on Employee for delete
as begin
declare @eid int
select @eid=empid from deleted
insert into EmpLog values('Existing record with id '+cast(@eid as varchar(10))
+' removed  at '+cast(getdate() as varchar(30)))
end

create trigger tr_employee_update
on Employee for update
as begin
select * from deleted --old data
select * from inserted -- new record
end

update Employee set empname='Parth', age=25,salary=27000 where empid=13

