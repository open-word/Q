use Uganda;
go

create Table PYIASBudgetPerformance
(
	ProgrammeID int,
	YearID int,
	IndicatorID int,
	ActorID int,
	SectorID int,
	BudgetPoints float,
	Budget decimal(18,8),
	Performance decimal(18,8),
	WeightedPerformance as convert(decimal(18,8), Budget * Performance),
	constraint PK_PYIASBudgetPerformance primary key (ProgrammeID, YearID, IndicatorID, ActorID, SectorID),
	constraint FK_PYIASBudgetPerformance_PYIAS foreign key (ProgrammeID, YearID, IndicatorID, ActorID, SectorID) references PYIAS (ProgrammeID, YearID, IndicatorID, ActorID, SectorID)
);
go

insert PYIASBudgetPerformance (ProgrammeID, YearID, IndicatorID, ActorID, SectorID)
select
	PYIAS.ProgrammeID,
	PYIAS.YearID,
	PYIAS.IndicatorID,
	PYIAS.ActorID,
	PYIAS.SectorID
from
	PYIAS
order by
	PYIAS.ProgrammeID,
	PYIAS.YearID,
	PYIAS.IndicatorID,
	PYIAS.ActorID,
	PYIAS.SectorID;

-- Select RNIDs.
declare @T table (ProgrammeID int, YearID int, IndicatorID int, ActorID int, SectorID int, RNID int);
insert @T (ProgrammeID, YearID, IndicatorID, ActorID, SectorID, RNID)
select
	PYIAS.ProgrammeID,
	PYIAS.YearID,
	PYIAS.IndicatorID,
	PYIAS.ActorID,
	PYIAS.SectorID,
	next value for sRN over (order by PYIAS.ProgrammeID, PYIAS.YearID, PYIAS.IndicatorID, PYIAS.ActorID)
from
	PYIAS
order by
	PYIAS.ProgrammeID,
	PYIAS.YearID,
	PYIAS.IndicatorID;

-- Use RandomNumbers for BudgetPoints.
update PYIASBudgetPerformance
set
	PYIASBudgetPerformance.BudgetPoints = RN.RN_010_090
from
	PYIASBudgetPerformance
	join @T T on 
		PYIASBudgetPerformance.ProgrammeID = T.ProgrammeID and 
		PYIASBudgetPerformance.YearID = T.YearID and
		PYIASBudgetPerformance.IndicatorID = T.IndicatorID and
		PYIASBudgetPerformance.ActorID = T.ActorID and
		PYIASBudgetPerformance.SectorID = T.SectorID
	join RN on T.RNID = RN.RNID;

-- Allocate Budget.
update PYIASBudgetPerformance
set
	PYIASBudgetPerformance.Budget = t.PYIASBudget
from
	PYIASBudgetPerformance join
	(
		select
			a.ProgrammeID,
			a.YearID,
			a.IndicatorID,
			a.ActorID,
			a.SectorID,
			sum(a.BudgetPoints) over(partition by a.ProgrammeID, a.YearID, a.IndicatorID, a.ActorID, a.SectorID) 
			/
			sum(BudgetPoints) over(partition by b.ProgrammeID, b.YearID, b.SectorID) 
			* 
			b.Budget [PYIASBudget]
		from  
			PYIASBudgetPerformance a
			join PYSBudget b on 
				a.ProgrammeID = b.ProgrammeID and
				a.YearID = b.YearID and
				a.SectorID = b.SectorID
	) t on
		PYIASBudgetPerformance.ProgrammeID = t.ProgrammeID and
		PYIASBudgetPerformance.YearID = t.YearID and
		PYIASBudgetPerformance.IndicatorID = t.IndicatorID and
		PYIASBudgetPerformance.ActorID = t.ActorID and
		PYIASBudgetPerformance.SectorID = t.SectorID;

-- Allocate Performance.
update PYIASBudgetPerformance
set
	PYIASBudgetPerformance.Performance = PYIPerformance.Performance
from
	PYIASBudgetPerformance join
	PYIPerformance on 
		PYIASBudgetPerformance.ProgrammeID = PYIPerformance.ProgrammeID and 
		PYIASBudgetPerformance.YearID = PYIPerformance.YearID and 
		PYIASBudgetPerformance.IndicatorID = PYIPerformance.IndicatorID;

--select * from PYIASBudgetPerformance;

select '6.1'
go