use Uganda;
go

create Table PADYR
(
	ProgrammeID nvarchar(25),
	ActorID nvarchar(25),
	DistrictID nvarchar(25),
	YearID int,
	IndicatorID nchar(5),
	IndicatorPoints float,
	Budget decimal(18,4),
	Performance decimal(18,4),
	WeightedPerformance as convert(decimal(18,4), Budget * Performance),
	constraint PK_PADYR primary key (ProgrammeID, ActorID, DistrictID, YearID, IndicatorID),
	constraint FK_PADYR_PADY foreign key (ProgrammeID, ActorID, DistrictID, YearID) references PADY (ProgrammeID, ActorID, DistrictID, YearID),
	constraint FK_PADYR_PAYR foreign key (ProgrammeID, ActorID, YearID, IndicatorID) references PAYR (ProgrammeID, ActorID, YearID, IndicatorID)
);
go

insert
	PADYR (ProgrammeID, ActorID, DistrictID, YearID, IndicatorID, IndicatorPoints, Performance)
select
	PAD.ProgrammeID,
	PAD.ActorID,
	PAD.DistrictID,
	PAYR.YearID,
	PAYR.IndicatorID,
	PAYR.IndicatorPoints,
	PAYR.Performance -- Performance is constant for a given Programme, Indicator and Year.
from
	PAD
	join PAYR on PAD.ProgrammeID = PAYR.ProgrammeID and PAD.ActorID = PAYR.ActorID;

-- Allocate the PADY budget using the IndicatorPoints.
update
	PADYR
set 
	PADYR.Budget = PADYR2.Share * PADYB.Budget
from 
	PADYR join 
	(
		select 
			PADYR.ProgrammeID,
			PADYR.ActorID,
			PADYR.DistrictID,
			PADYR.YearID, 
			PADYR.IndicatorID,
			(PADYR.IndicatorPoints/sum(PADYR.IndicatorPoints) over (partition by ProgrammeID, ActorID, DistrictID, YearID)) [Share]
		from PADYR
	) PADYR2 
		on PADYR.ProgrammeID = PADYR2.ProgrammeID 
		and PADYR.ActorID = PADYR2.ActorID
		and PADYR.DistrictID = PADYR2.DistrictID
		and PADYR.YearID = PADYR2.YearID
		and PADYR.IndicatorID = PADYR2.IndicatorID
	join PADYB 
		on PADYR.ProgrammeID = PADYB.ProgrammeID 
		and PADYR.YearID = PADYB.YearID
		and PADYR.ActorID = PADYB.ActorID
		and PADYR.DistrictID = PADYB.DistrictID;

--select * from PADYR;

select '6.5'
go