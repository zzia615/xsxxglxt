create database xsxxglxt
go

use xsxxglxt
go

create table Admin
(
name nvarchar(12) not null,
pwd nvarchar(12) not null,
constraint pk_admin primary key(name)
)
go

insert into Admin(name,pwd) values('admin','123456')
go

create table info
(
ID nvarchar(8) not null,
Name nvarchar(12) not null,
age int not null,
constraint pk_info primary key(ID)
)
go

insert into info(ID,Name,age) values('20170001','王浩',20)
insert into info(ID,Name,age) values('20170002','张仁',20)
insert into info(ID,Name,age) values('20170003','武新',20)
insert into info(ID,Name,age) values('20170004','司马风',20)
insert into info(ID,Name,age) values('20170005','欧阳春',20)
insert into info(ID,Name,age) values('20170006','胡军',20)
go


