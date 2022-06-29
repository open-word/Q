use Understanding;
go

create Table PMYR
(
	ProgrammeID nvarchar(25),
	MinistryID nvarchar(25),
	YearID int,
	IndicatorID nchar(5),
	IndicatorPoints float,
	Budget decimal(18,4),
	Performance decimal(18,4),
	WeightedPerformance as convert(decimal(18,4), Budget * Performance),
	constraint PK_PMYR primary key (ProgrammeID, MinistryID, YearID, IndicatorID),
	constraint FK_PMYR_PMY foreign key (ProgrammeID, MinistryID, YearID) references PMY (ProgrammeID, MinistryID, YearID),
	constraint FK_PMYR_PYR foreign key (ProgrammeID, YearID, IndicatorID) references PYR (ProgrammeID, YearID, IndicatorID)
);
go

insert
	PMYR (ProgrammeID, MinistryID, YearID, IndicatorID, IndicatorPoints, Performance)
select
	PM.ProgrammeID,
	PM.MinistryID,
	PYR.YearID,
	PYR.IndicatorID,
	PYR.IndicatorPoints,
	PYR.Performance -- Performance is constant for a given Programme, Year, Indicator.
from
	PM
	join PYR on PM.ProgrammeID = PYR.ProgrammeID;

-- Allocate the PMY budget using the IndicatorPoints.
update
	PMYR
set 
	PMYR.Budget = PMYR2.Share * PMYB.Budget
from 
	PMYR join 
	(
		select 
			PMYR.ProgrammeID,
			PMYR.MinistryID,
			PMYR.YearID, 
			PMYR.IndicatorID,
			(PMYR.IndicatorPoints/sum(PMYR.IndicatorPoints) over (partition by ProgrammeID, MinistryID, YearID)) [Share]
		from PMYR
	) PMYR2 
		on PMYR.ProgrammeID = PMYR2.ProgrammeID
		and PMYR.MinistryID = PMYR2.MinistryID		
		and PMYR.YearID = PMYR2.YearID
		and PMYR.IndicatorID = PMYR2.IndicatorID
	join PMYB 
		on PMYR.ProgrammeID = PMYB.ProgrammeID
		and PMYR.MinistryID = PMYB.MinistryID
		and PMYR.YearID = PMYB.YearID;

--select * from PMYR;

select '6.4'
go