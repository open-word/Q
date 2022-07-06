use Uganda;
go

create Table PIS
(
	ProgrammeID int,
	IndicatorID int,
	SectorID int,
	constraint PK_PIS primary key (ProgrammeID, IndicatorID, SectorID),
	constraint FK_PIS_PI foreign key (ProgrammeID, IndicatorID) references PI (ProgrammeID, IndicatorID),
	constraint FK_PIS_PS foreign key (ProgrammeID, SectorID) references PS (ProgrammeID, SectorID),
	constraint FK_PIS_IS foreign key (IndicatorID, SectorID) references [IS] (IndicatorID, SectorID)
);
go

insert PIS (ProgrammeID, IndicatorID, SectorID)
select
	PI.ProgrammeID,
	PI.IndicatorID,
	PS.SectorID
from
	PI
	join PS on PI.ProgrammeID = PS.ProgrammeID 
	join [IS] on PI.IndicatorID = [IS].IndicatorID and PS.SectorID = [IS].SectorID
order by
	PI.ProgrammeID,
	PI.IndicatorID,
	PS.SectorID;

--select * from PIS;

select '3.07'
go