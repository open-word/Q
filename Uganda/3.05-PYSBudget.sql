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

update PYSBudget set Budget =  10 where ProgrammeID = 1 and YearID = 1 and SectorID = 1;
update PYSBudget set Budget =  100 where ProgrammeID = 1 and YearID = 1 and SectorID = 2;
update PYSBudget set Budget =  1000 where ProgrammeID = 1 and YearID = 2 and SectorID = 1;
update PYSBudget set Budget =  10000 where ProgrammeID = 1 and YearID = 2 and SectorID = 2;
update PYSBudget set Budget =  100000 where ProgrammeID = 2 and YearID = 1 and SectorID = 1;
update PYSBudget set Budget =  1000000 where ProgrammeID = 2 and YearID = 1 and SectorID = 2;
update PYSBudget set Budget =  10000000 where ProgrammeID = 2 and YearID = 2 and SectorID = 1;
update PYSBudget set Budget =  100000000 where ProgrammeID = 2 and YearID = 2 and SectorID = 2;

--select * from PYSBudget;

select '3.05'
go