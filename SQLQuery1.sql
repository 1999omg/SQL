create table customer (

custid int not null, 
custname varchar(12)not null, 
custage int ,
country varchar(5)

)

alter table customer add constraint pk_custid primary key (custid)
alter table customer add constraint pk_name unique (custname)
alter table customer add constraint ch_custage check (custage>18)
alter table customer add constrinat df_country default 'india' for country