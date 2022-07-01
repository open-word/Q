use Understanding;
go

create table M
(
	MinistryID nvarchar(25),
	constraint PK_M primary key (MinistryID)
);
go

insert M (MinistryID) values
	('Ministry 01'),
	('Ministry 02');

--select * from M;

select '1.2'
go