use Understanding;
go

create table PM
(
	ProgrammeID nchar(25),
	MinistryID nchar(25),
	constraint PK_PM primary key (ProgrammeID, MinistryID),
	constraint FK_PM_P foreign key (ProgrammeID) references P (ProgrammeID),
	constraint FK_PM_M foreign key (MinistryID) references M (MinistryID)
);
go

insert PM (ProgrammeID, MinistryID) values
	('Programme 1','Ministry 1'),
	('Programme 1','Ministry 2'),
	('Programme 2','Ministry 1'),
	('Programme 2','Ministry 2');

--select * from PM;

select '1.4'
go