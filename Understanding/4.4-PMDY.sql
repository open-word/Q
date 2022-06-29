use Understanding;
go

create Table PMDY
(
	ProgrammeID nvarchar(25),
	MinistryID nvarchar(25),
	DistrictID nvarchar(25),
	YearID int,
	constraint PK_PMDY primary key (ProgrammeID, MinistryID, DistrictID, YearID),
	constraint FK_PMDY_PMD foreign key (ProgrammeID, MinistryID, DistrictID) references PMD (ProgrammeID, MinistryID, DistrictID),
	constraint FK_PMDY_Y foreign key (YearID) references Y (YearID)
);
go

insert
	PMDY
select
	*
from
	PMD
	cross join Y;

--select * from PMDY order by ProgrammeID, MinistryID, DistrictID, YearID;

select '4.4'
go