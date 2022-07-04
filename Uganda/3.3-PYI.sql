use Uganda;
go

create Table PYI
(
	ProgrammeID int,
	YearID int,
	IndicatorID int,
	PYIBudgetPoints float,
	Budget decimal(18,8),
	Performance decimal(18,8),
	WeightedPerformance as convert(decimal(18,8), Budget * Performance),
	constraint PK_PYI primary key (ProgrammeID, YearID, IndicatorID),
	constraint FK_PYI_PY foreign key (ProgrammeID, YearID) references PY (ProgrammeID, YearID),
	constraint FK_PYI_PI foreign key (ProgrammeID, IndicatorID) references PI (ProgrammeID, IndicatorID)
);
go

-- Create a stub with random numbers.
declare @T table (ProgrammeID int, YearID int, IndicatorID int, RNID int);
insert @T (ProgrammeID, YearID, IndicatorID, RNID)
select
	PY.ProgrammeID,
	PY.YearID,
	PI.IndicatorID,
	next value for sRN over (order by PY.ProgrammeID, PY.YearID, PI.IndicatorID)
from
	PY
	join PI on PY.ProgrammeID = PI.ProgrammeID
order by
	PY.ProgrammeID,
	PY.YearID,
	PI.IndicatorID;

-- Simulate PYIBudgetPoints and Performance.
insert PYI (ProgrammeID, YearID, IndicatorID, PYIBudgetPoints, Performance)
select
	T.ProgrammeID,
	T.YearID,
	T.IndicatorID,
	RN.RN_010_090,
	RN.RN_075_125
from
	@T T
	join RN on T.RNID = RN.RNID
order by
	T.ProgrammeID,
	T.YearID,
	T.IndicatorID;

update 
	PYI 
set 
	PYIBudgetPoints = 1,
	Performance = case
					when ProgrammeID = 1 and YearID = 1 and IndicatorID = 1 then 0.60
					when ProgrammeID = 1 and YearID = 1 and IndicatorID = 2 then 1.30
					when ProgrammeID = 1 and YearID = 2 and IndicatorID = 1 then 0.90
					when ProgrammeID = 1 and YearID = 2 and IndicatorID = 2 then 1.20
					when ProgrammeID = 2 and YearID = 1 and IndicatorID = 3 then 0.70
					when ProgrammeID = 2 and YearID = 1 and IndicatorID = 4 then 1.20
					when ProgrammeID = 2 and YearID = 2 and IndicatorID = 3 then 1.30
					when ProgrammeID = 2 and YearID = 2 and IndicatorID = 4 then 1.10
				end;

-- Distribute the PY budget to each of its PYIs per the PYIBudgetPoints.
update 
	PYI
set 
	PYI.Budget = PYI2.PYIBudget
from 
	PYI join 
	(
		select 
			PYI.ProgrammeID,
			PYI.YearID, 
			PYI.IndicatorID,
			PY.Budget * (PYI.PYIBudgetPoints/sum(PYI.PYIBudgetPoints) over (partition by PYI.ProgrammeID, PYI.YearID)) [PYIBudget]
		from PYI
		join PY on PYI.ProgrammeID = PY.ProgrammeID and PYI.YearID = PY.YearID
	) PYI2 
		on PYI.ProgrammeID = PYI2.ProgrammeID 
		and PYI.YearID = PYI2.YearID
		and PYI.IndicatorID = PYI2.IndicatorID;

--select * from PYI;

select '3.3'
go