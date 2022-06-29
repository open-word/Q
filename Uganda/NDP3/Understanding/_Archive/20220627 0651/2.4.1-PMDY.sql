use Understanding;
go

create Table PMDY
(
	ProgrammeID nchar(25),
	MinistryID nchar(25),
	DistrictID nchar(25),
	YearID int,
	Budget decimal(18,4),
	constraint PK_PMDY primary key (ProgrammeID, MinistryID, DistrictID, YearID),
	constraint FK_PMDY_PMD foreign key (ProgrammeID, MinistryID, DistrictID) references PMD (ProgrammeID, MinistryID, DistrictID),
	constraint FK_PMDY_Y foreign key (YearID) references Y (YearID)
);
go

insert
	PMDY
select
	PMD.ProgrammeID,
	PMD.MinistryID,
	PMD.DistrictID,
	Y.YearID,
	NULL
from
	PMD,Y;

--Allocate the budget
update
	PMDY
set
	PMDY.Budget = PMY.Budget * PMDYS.Share
from
	PMY 
	join PMDY on PMY.ProgrammeID = PMDY.ProgrammeID and PMY.MinistryID = PMDY.MinistryID and PMY.YearID = PMDY.YearID
	join PMDYS on PMDY.ProgrammeID = PMDYS.ProgrammeID and PMDY.MinistryID = PMDYS.MinistryID and PMDY.DistrictID = PMDYS.DistrictID and PMDY.YearID = PMDYS.YearID;

--select * from PMDY order by ProgrammeID, MinistryID, DistrictID, YearID;

select '2.4.1'
go