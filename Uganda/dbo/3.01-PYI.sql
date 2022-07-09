use Uganda;
go

create Table PYI
(
	ProgrammeID int,
	YearID int,
	IndicatorID int
	constraint PK_PYI primary key (ProgrammeID, YearID, IndicatorID),
	constraint FK_PYI_PY foreign key (ProgrammeID, YearID) references PY (ProgrammeID, YearID),
	constraint FK_PYI_PI foreign key (ProgrammeID, IndicatorID) references PI (ProgrammeID, IndicatorID),
);
go

insert PYI (ProgrammeID, YearID, IndicatorID)
select
	PY.ProgrammeID,
	PY.YearID,
	PI.IndicatorID
from
	PY
	join PI on PY.ProgrammeID = PI.ProgrammeID
order by
	PY.ProgrammeID,
	PY.YearID,
	PI.IndicatorID;

--select * from PYI;

select '3.01'
go