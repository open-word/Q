use Understanding;
go

create table PM
(
	ProgrammeID nvarchar(25),
	MinistryID nvarchar(25),
	constraint PK_PM primary key (ProgrammeID, MinistryID),
	constraint FK_PM_P foreign key (ProgrammeID) references P (ProgrammeID),
	constraint FK_PM_M foreign key (MinistryID) references M (MinistryID)
);
go

insert PM (ProgrammeID, MinistryID)
select
	*
from
	P
	cross join M;

--select * from PM;

select '2.1'
go