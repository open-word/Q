use Uganda;
go

create Table PAYR
(
	ProgrammeID nvarchar(25),
	ActorID nvarchar(25),
	YearID int,
	IndicatorID nchar(5),
	IndicatorPoints float,
	Budget decimal(18,4),
	Performance decimal(18,4),
	WeightedPerformance as convert(decimal(18,4), Budget * Performance),
	constraint PK_PAYR primary key (ProgrammeID, ActorID, YearID, IndicatorID),
	constraint FK_PAYR_PAY foreign key (ProgrammeID, ActorID, YearID) references PAY (ProgrammeID, ActorID, YearID),
	constraint FK_PAYR_PYR foreign key (ProgrammeID, YearID, IndicatorID) references PYR (ProgrammeID, YearID, IndicatorID)
);
go

insert
	PAYR (ProgrammeID, ActorID, YearID, IndicatorID, IndicatorPoints, Performance)
select
	PA.ProgrammeID,
	PA.ActorID,
	PYR.YearID,
	PYR.IndicatorID,
	PYR.IndicatorPoints,
	PYR.Performance -- Performance is constant for a given Programme, Year, Indicator.
from
	PA
	join PYR on PA.ProgrammeID = PYR.ProgrammeID;

-- Allocate the PAY budget using the IndicatorPoints.
update
	PAYR
set 
	PAYR.Budget = PAYR2.Share * PAYB.Budget
from 
	PAYR join 
	(
		select 
			PAYR.ProgrammeID,
			PAYR.ActorID,
			PAYR.YearID, 
			PAYR.IndicatorID,
			(PAYR.IndicatorPoints/sum(PAYR.IndicatorPoints) over (partition by ProgrammeID, ActorID, YearID)) [Share]
		from PAYR
	) PAYR2 
		on PAYR.ProgrammeID = PAYR2.ProgrammeID
		and PAYR.ActorID = PAYR2.ActorID		
		and PAYR.YearID = PAYR2.YearID
		and PAYR.IndicatorID = PAYR2.IndicatorID
	join PAYB 
		on PAYR.ProgrammeID = PAYB.ProgrammeID
		and PAYR.ActorID = PAYB.ActorID
		and PAYR.YearID = PAYB.YearID;

--select * from PAYR;

select '6.4'
go