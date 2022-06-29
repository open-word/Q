use Understanding;
go

create Table PMDYR
(
	ProgrammeID nvarchar(25),
	MinistryID nvarchar(25),
	DistrictID nvarchar(25),
	YearID int,
	IndicatorID nchar(5),
	IndicatorPoints float,
	Budget decimal(18,4),
	Performance decimal(18,4),
	WeightedPerformance as convert(decimal(18,4), Budget * Performance),
	constraint PK_PMDYR primary key (ProgrammeID, MinistryID, DistrictID, YearID, IndicatorID),
	constraint FK_PMDYR_PMDY foreign key (ProgrammeID, MinistryID, DistrictID, YearID) references PMDY (ProgrammeID, MinistryID, DistrictID, YearID),
	constraint FK_PMDYR_PMYR foreign key (ProgrammeID, MinistryID, YearID, IndicatorID) references PMYR (ProgrammeID, MinistryID, YearID, IndicatorID)
);
go

insert
	PMDYR (ProgrammeID, MinistryID, DistrictID, YearID, IndicatorID, IndicatorPoints, Performance)
select
	PMD.ProgrammeID,
	PMD.MinistryID,
	PMD.DistrictID,
	PMYR.YearID,
	PMYR.IndicatorID,
	PMYR.IndicatorPoints,
	PMYR.Performance -- Performance is constant for a given Programme, Indicator and Year.
from
	PMD
	join PMYR on PMD.ProgrammeID = PMYR.ProgrammeID and PMD.MinistryID = PMYR.MinistryID;

-- Allocate the PMDY budget using the IndicatorPoints.
update
	PMDYR
set 
	PMDYR.Budget = PMDYR2.Share * PMDYB.Budget
from 
	PMDYR join 
	(
		select 
			PMDYR.ProgrammeID,
			PMDYR.MinistryID,
			PMDYR.DistrictID,
			PMDYR.YearID, 
			PMDYR.IndicatorID,
			(PMDYR.IndicatorPoints/sum(PMDYR.IndicatorPoints) over (partition by ProgrammeID, MinistryID, DistrictID, YearID)) [Share]
		from PMDYR
	) PMDYR2 
		on PMDYR.ProgrammeID = PMDYR2.ProgrammeID 
		and PMDYR.MinistryID = PMDYR2.MinistryID
		and PMDYR.DistrictID = PMDYR2.DistrictID
		and PMDYR.YearID = PMDYR2.YearID
		and PMDYR.IndicatorID = PMDYR2.IndicatorID
	join PMDYB 
		on PMDYR.ProgrammeID = PMDYB.ProgrammeID 
		and PMDYR.YearID = PMDYB.YearID
		and PMDYR.MinistryID = PMDYB.MinistryID
		and PMDYR.DistrictID = PMDYB.DistrictID;

--select * from PMDYR;

select '6.5'
go