use Uganda;
go

create Table PYSIABudgetPerformance
(
	ProgrammeID int,
	YearID int,
	SectorID int,
	IndicatorID int,
	ActorID int,
	BudgetPoints float,
	Budget decimal(18,8),
	Performance decimal(18,8),
	WeightedPerformance as convert(decimal(18,8), Budget * Performance),
	constraint PK_PYSIABudgetPerformance primary key (ProgrammeID, YearID, SectorID,  IndicatorID, ActorID),
	constraint FK_PYSIABudgetPerformance_PYSIA foreign key (ProgrammeID, YearID, SectorID, IndicatorID, ActorID) references PYSIA (ProgrammeID, YearID, SectorID, IndicatorID, ActorID)
);
go

insert PYSIABudgetPerformance (ProgrammeID, YearID, SectorID, IndicatorID, ActorID)
select
	PYSIA.ProgrammeID,
	PYSIA.YearID,
	PYSIA.SectorID,
	PYSIA.IndicatorID,
	PYSIA.ActorID
from
	PYSIA
order by
	PYSIA.ProgrammeID,
	PYSIA.YearID,
	PYSIA.SectorID,
	PYSIA.IndicatorID,
	PYSIA.ActorID;

-- Select RNIDs.
declare @T table (ProgrammeID int, YearID int, SectorID int, IndicatorID int, ActorID int, RNID int);
insert @T (ProgrammeID, YearID, SectorID, IndicatorID, ActorID, RNID)
select
	PYSIA.ProgrammeID,
	PYSIA.YearID,
	PYSIA.SectorID,
	PYSIA.IndicatorID,
	PYSIA.ActorID,
	next value for sRN over (order by PYSIA.ProgrammeID, PYSIA.YearID, PYSIA.SectorID, PYSIA.IndicatorID, PYSIA.ActorID)
from
	PYSIA
order by
	PYSIA.ProgrammeID,
	PYSIA.YearID,
	PYSIA.SectorID,
	PYSIA.IndicatorID,
	PYSIA.ActorID;
	
-- Use RandomNumbers for BudgetPoints.
update PYSIABudgetPerformance
set
	PYSIABudgetPerformance.BudgetPoints = RN.RN_010_090
from
	PYSIABudgetPerformance
	join @T T on 
		PYSIABudgetPerformance.ProgrammeID = T.ProgrammeID and 
		PYSIABudgetPerformance.YearID = T.YearID and
		PYSIABudgetPerformance.SectorID = T.SectorID and
		PYSIABudgetPerformance.IndicatorID = T.IndicatorID and
		PYSIABudgetPerformance.ActorID = T.ActorID
	join RN on T.RNID = RN.RNID;

-- Allocate Budget.
update PYSIABudgetPerformance
set
	PYSIABudgetPerformance.Budget = t.PYSIABudget
from
	PYSIABudgetPerformance join
	(
		select
			b.ProgrammeID,
			b.YearID,
			b.SectorID,
			b.IndicatorID,
			b.ActorID,
			a.budget * (b.BudgetPoints / (sum(b.BudgetPoints) over(partition by b.ProgrammeID, b.YearID, b.SectorID))) [PYSIABudget]
		from  
			PYSBudget a
			join PYSIABudgetPerformance b on 
				a.ProgrammeID = b.ProgrammeID and
				a.YearID = b.YearID and
				a.SectorID = b.SectorID
	) t on
		PYSIABudgetPerformance.ProgrammeID = t.ProgrammeID and
		PYSIABudgetPerformance.YearID = t.YearID and
		PYSIABudgetPerformance.SectorID = t.SectorID and
		PYSIABudgetPerformance.IndicatorID = t.IndicatorID and
		PYSIABudgetPerformance.ActorID = t.ActorID;

-- Allocate Performance.
update PYSIABudgetPerformance
set
	PYSIABudgetPerformance.Performance = PYIPerformance.Performance
from
	PYSIABudgetPerformance join
	PYIPerformance on 
		PYSIABudgetPerformance.ProgrammeID = PYIPerformance.ProgrammeID and 
		PYSIABudgetPerformance.YearID = PYIPerformance.YearID and 
		PYSIABudgetPerformance.IndicatorID = PYIPerformance.IndicatorID;

--select * from PYSIABudgetPerformance;

select '6.1'
go