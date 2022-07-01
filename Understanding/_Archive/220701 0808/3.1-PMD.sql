use Understanding;
go

create table PMD
(
	ProgrammeID nvarchar(25),
	MinistryID nvarchar(25),
	DistrictID nvarchar(25),
	constraint PK_PMD primary key (ProgrammeID, MinistryID, DistrictID),
	constraint FK_PMD_PM foreign key (ProgrammeID, MinistryID) references PM (ProgrammeID, MinistryID)
);
go

insert PMD (ProgrammeID, MinistryID, DistrictID)
select
	*
from
	PM
	cross join D;

--select * from PMD;

select '3.1'
go