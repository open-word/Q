use Uganda;
go

create Table PYIA
(
	ProgrammeID int,
	YearID int,
	IndicatorID int,
	ActorID int,
	PYIABudgetPoints float,
	Budget decimal(18,8),
	Performance decimal(18,8),
	WeightedPerformance as convert(decimal(18,8), Budget * Performance),
	constraint PK_PYIA primary key (ProgrammeID, YearID, IndicatorID, ActorID),
	constraint FK_PYIA_PYI foreign key (ProgrammeID, YearID, IndicatorID) references PYI (ProgrammeID, YearID, IndicatorID),
	constraint FK_PYIA_PA foreign key (ProgrammeID, ActorID) references PA (ProgrammeID, ActorID)
);
go

-- Create a stub with random numbers.
declare @T table (ProgrammeID int, YearID int, IndicatorID int, ActorID int, RNID int);
insert @T (ProgrammeID, YearID, IndicatorID, ActorID, RNID)
select
	PYI.ProgrammeID,
	PYI.YearID,
	PYI.IndicatorID,
	PA.ActorID,
	next value for sRN over (order by PYI.ProgrammeID, PYI.YearID, PYI.IndicatorID, PA.ActorID)
from
	PYI
	join PA on PYI.ProgrammeID = PA.ProgrammeID
order by
	PYI.ProgrammeID,
	PYI.YearID,
	PYI.IndicatorID,
	PA.ActorID;

-- Simulate PYIABudgetPoints and copy Performance from PYI.
insert PYIA (ProgrammeID, YearID, IndicatorID, ActorID, PYIABudgetPoints, Performance)
select
	T.ProgrammeID,
	T.YearID,
	T.IndicatorID,
	T.ActorID,
	RN.RN_010_090,
	PYI.Performance -- copy performance from PYI.
from
	@T T
	join RN on T.RNID = RN.RNID
	join PYI on T.ProgrammeID = PYI.ProgrammeID and T.YearID = PYI.YearID and T.IndicatorID = PYI.IndicatorID
order by
	T.ProgrammeID,
	T.YearID,
	T.IndicatorID,
	T.ActorID;

update 
	PYIA
set 
	PYIABudgetPoints = 1;

-- Distribute the PYI budget to each of its PYIAs per the PYIABudgetPoints.
update 
	PYIA
set 
	PYIA.Budget = PYIA2.PYIABudget
from 
	PYIA join 
	(
		select 
			PYIA.ProgrammeID,
			PYIA.YearID, 
			PYIA.IndicatorID,
			PYIA.ActorID,
			PYI.Budget * (PYIA.PYIABudgetPoints/sum(PYIA.PYIABudgetPoints) over (partition by PYIA.ProgrammeID, PYIA.YearID, PYIA.IndicatorID )) [PYIABudget]
		from PYIA
		join PYI on PYIA.ProgrammeID = PYI.ProgrammeID and PYIA.YearID = PYI.YearID and PYIA.IndicatorID = PYI.IndicatorID
	) PYIA2 
		on PYIA.ProgrammeID = PYIA2.ProgrammeID 
		and PYIA.YearID = PYIA2.YearID
		and PYIA.IndicatorID = PYIA2.IndicatorID
		and PYIA.ActorID = PYIA2.ActorID;

--select * from PYIA;

select '5.3'
go