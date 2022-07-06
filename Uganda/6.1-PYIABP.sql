use Uganda;
go

create Table PYIA
(
	ProgrammeID int,
	YearID int,
	IndicatorID int,
	ActorID int,
	BudgetPoints float,
	Budget decimal(18,8),
	Performance decimal(18,8),
	WeightedPerformance as convert(decimal(18,8), Budget * Performance),
	constraint PK_PYIA primary key (ProgrammeID, YearID, IndicatorID, ActorID),
	constraint FK_PYIA_PYI foreign key (ProgrammeID, YearID, IndicatorID) references PYI (ProgrammeID, YearID, IndicatorID),
	constraint FK_PYIA_PA foreign key (ProgrammeID, ActorID) references PA (ProgrammeID, ActorID)
);
go

insert PYIA (ProgrammeID, YearID, IndicatorID, ActorID)
select
	PYIA.ProgrammeID,
	PYIA.YearID,
	PYIA.IndicatorID,
	PYIA.ActorID
from
	PYIA
order by
	PYIA.ProgrammeID,
	PYIA.YearID,
	PYIA.IndicatorID,
	PYIA.ActorID;

-- Allocate BudgetPoints.
update PYIA set BudgetPoints = 1;

-- Allocate the budget.
update PYIA
set
	PYIA.Budget = t.PYSIABudget
from
	PYIA join
	(
		select
			PYSB.ProgrammeID,
			PYSB.YearID,
			PYSB.SectorID,
			PYIA.IndicatorID,
			PYIA.ActorID,
			sum(BudgetPoints) over(partition by PYSB.ProgrammeID, PYSB.YearID, PYSB.SectorID, PYIA.IndicatorID, PYIA.ActorID) 
			/
			sum(BudgetPoints) over(partition by PYSB.ProgrammeID, PYSB.YearID, PYSB.SectorID) 
			* 
			PYSB.Budget [PYSIABudget]
		from  
			PYSB
			join PYIA on 
				PYSB.ProgrammeID = PYIA.ProgrammeID and 
				PYSB.YearID = PYIA.YearID
			join A on 
				PYIA.ActorID = A.ActorID and 
				PYSB.SectorID = A.SectorID
	) t on 
	PYIA.ProgrammeID = t.ProgrammeID and
	PYIA.YearID = t.YearID and
	PYIA.IndicatorID = t.IndicatorID and
	PYIA.ActorID = t.ActorID;

--select * from PYIA;

select '5.1'
go

--select 
--	PYIA.ProgrammeID,
--	PYIA.YearID,
--	A.SectorID,
--	PYIA.IndicatorID,
--	PYIA.ActorID,
--	PYIA.BudgetPoints,
--	PYIA.Budget,
--	PYIA.Performance,
--	PYIA.WeightedPerformance
--from 
--	PYIA join A on PYIA.ActorID = A.ActorID
--order by
--	PYIA.ProgrammeID,
--	PYIA.YearID,
--	A.SectorID,
--	PYIA.IndicatorID,
--	PYIA.ActorID;