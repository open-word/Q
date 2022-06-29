use Understanding;
go

create table M
(
	MinistryID nchar(25),
	constraint PK_M primary key (MinistryID)
);
go

insert M (MinistryID) values
	('Ministry 1'),
	('Ministry 2');

--select * from M;

select '1.2'
go