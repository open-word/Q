use Uganda;
go

create Table PYIPerformance
(
	ProgrammeID int,
	YearID int,
	IndicatorID int,
	Performance decimal(18,8),
	constraint PK_PYIPerformance primary key (ProgrammeID, YearID, IndicatorID),
	constraint FK_PYIPerformance_PYI foreign key (ProgrammeID, YearID, IndicatorID) references PYI (ProgrammeID, YearID, IndicatorID),
);
go

-- Select random numbers for Performance.
declare @T table (ProgrammeID int, YearID int, IndicatorID int, RNID int);
insert @T (ProgrammeID, YearID, IndicatorID, RNID)
select
	PYI.ProgrammeID,
	PYI.YearID,
	PYI.IndicatorID,
	next value for sRN over (order by PYI.ProgrammeID, PYI.YearID, PYI.IndicatorID)
from
	PYI
order by
	PYI.ProgrammeID,
	PYI.YearID,
	PYI.IndicatorID;

-- Insert Performance.
insert PYIPerformance (ProgrammeID, YearID, IndicatorID, Performance)
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
	PYIPerformance
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

--select * from PYIPerformance;

select '3.02'
go