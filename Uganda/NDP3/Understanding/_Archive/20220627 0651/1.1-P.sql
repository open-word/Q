use Understanding;
go

create table P
(
	ProgrammeID nchar(25),
	constraint PK_P primary key (ProgrammeID)
);
go

insert P (ProgrammeID) values
	('Programme 1'),
	('Programme 2');

--select * from PM;

select '1.1'
go