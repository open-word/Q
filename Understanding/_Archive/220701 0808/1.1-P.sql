use Understanding;
go

create table P
(
	ProgrammeID nvarchar(25),
	constraint PK_P primary key (ProgrammeID)
);
go

insert P (ProgrammeID) values
	('Programme 01'),
	('Programme 02');

--select * from PM;

select '1.1'
go