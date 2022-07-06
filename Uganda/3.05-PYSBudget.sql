use Uganda;
go

create Table PYSBudget
(
	ProgrammeID int,
	YearID int,
	SectorID int,
	Budget decimal(18,8)
	constraint PK_PYSBudget primary key (ProgrammeID, YearID, SectorID),
	constraint FK_PYSBudget_PYS foreign key (ProgrammeID, YearID, SectorID) references PYS (ProgrammeID, YearID, SectorID)
);
go

insert PYSBudget (ProgrammeID, YearID, SectorID)
select
	PYS.ProgrammeID,
	PYS.YearID,
	PYS.SectorID
from
	PYS
order by
	PYS.ProgrammeID,
	PYS.YearID,
	PYS.SectorID;

update PYSBudget set Budget =  ProgrammeID * SectorID * YearID * 1000;


--select * from PYSBudget;

select '3.05'
go