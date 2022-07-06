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

-- Select RandomNumbers for Performance.
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

--select * from PYIPerformance;

select '3.02'
go