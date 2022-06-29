use Understanding;
go

create table D
(
	DistrictID nchar(25),
	constraint PK_D primary key (DistrictID)
);
go

insert D (DistrictID) values
	('District 1'),
	('District 2');

--select * from D;

select '1.3'
go