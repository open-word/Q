use Uganda;
go

create Table PYR
(
	ProgrammeID nvarchar(25),
	YearID int,
	IndicatorID nchar(5),
	IndicatorPoints float,
	Budget decimal(18,4),
	Performance decimal(18,4),
	WeightedPerformance as convert(decimal(18,4), Budget * Performance),
	constraint PK_PYR primary key (ProgrammeID, YearID, IndicatorID),
	constraint FK_PYR_PY foreign key (ProgrammeID, YearID) references PY (ProgrammeID, YearID),
	constraint FK_PYR_YI foreign key (YearID, IndicatorID) references YI (YearID, IndicatorID)
);
go

insert
	PYR (ProgrammeID, YearID, IndicatorID, IndicatorPoints)
select
	*
from
	P
	join YI on P.ProgrammeID like '%'+substring(YI.IndicatorID,1,2)+'%';

-- Allocate the PY budget using the IndicatorPoints.
-- Simulate Performance using RandomNumbers between 0.75 and 1.25.
update 
	PYR
set 
	PYR.Budget = PYR2.Share * PYB.Budget,
	PYR.Performance = RN.RN_075_125
from 
	PYR join 
	(
		select 
			PYR.ProgrammeID,
			PYR.YearID, 
			PYR.IndicatorID,
			(PYR.IndicatorPoints/sum(PYR.IndicatorPoints) over (partition by ProgrammeID, YearID)) [Share],
			400+row_number() over(order by PYR.ProgrammeID, PYR.YearID, PYR.IndicatorID) RNID -- start at 400
		from PYR
	) PYR2 
		on PYR.ProgrammeID = PYR2.ProgrammeID 
		and PYR.YearID = PYR2.YearID
		and PYR.IndicatorID = PYR2.IndicatorID
	join PYB 
		on PYR.ProgrammeID = PYB.ProgrammeID 
		and PYR.YearID = PYB.YearID
	join RN on PYR2.RNID = RN.RNID;

--select * from PYR;

select '6.3'
go