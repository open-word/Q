use Uganda;
go

create Table PYI
(
	ProgrammeID int,
	YearID int,
	IndicatorID int,
	Performance decimal(18,8),
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

-- Simulate Performance.
insert PYI (ProgrammeID, YearID, IndicatorID, Performance)
select
	T.ProgrammeID,
	T.YearID,
	T.IndicatorID,
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

--select * from PYI;

select '5.1'
go