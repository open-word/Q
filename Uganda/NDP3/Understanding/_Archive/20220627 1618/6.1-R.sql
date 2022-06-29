use Understanding;
go

drop table R;

create table R
(
	ResultID nchar(5),
	constraint PK_R primary key (ResultID)
);

insert R (ResultID) values
	('01.01'),
	('01.02'),
	('02.01'),
	('02.02');

--select * from R;

select '6.1'
go