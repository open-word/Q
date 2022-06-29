use Understanding;
go

create table D
(
	DistrictID nvarchar(25),
	constraint PK_D primary key (DistrictID)
);
go

insert D (DistrictID) values
	('District 01'),
	('District 02');

--select * from D;

select '1.3'
go