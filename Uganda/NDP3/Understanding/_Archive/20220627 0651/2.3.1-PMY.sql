use Understanding;
go

create Table PMY
(
	ProgrammeID nchar(25),
	MinistryID nchar(25),
	YearID int,
	Budget decimal(18,4),
	constraint PK_PMY primary key (ProgrammeID, MinistryID, YearID),
	constraint FK_PMY_PM foreign key (ProgrammeID, MinistryID) references PM (ProgrammeID, MinistryID),
	constraint FK_PMY_Y foreign key (YearID) references Y (YearID)
);
go

insert
	PMY
select
	PM.ProgrammeID,
	PM.MinistryID,
	Y.YearID,
	NULL
from
	PM,Y;

--Allocate the budget
update
	PMY
set
	PMY.Budget = PY.Budget * PMYS.Share
from
	PY 
	join PMY on PY.ProgrammeID = PMY.ProgrammeID and PY.YearID = PMY.YearID
	join PMYS on PMY.ProgrammeID = PMYS.ProgrammeID and PMY.MinistryID = PMYS.MinistryID and PMY.YearID = PMYS.YearID;

--select * from PMY order by ProgrammeID, MinistryID, YearID;

select '2.3.1'
go