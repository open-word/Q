use Uganda;
go

create Table PIA
(
	ProgrammeID int,
	IndicatorID int,
	ActorID int,
	constraint PK_PIA primary key (ProgrammeID, IndicatorID, ActorID),
	constraint FK_PIA_PI foreign key (ProgrammeID, IndicatorID) references PI (ProgrammeID, IndicatorID),
	constraint FK_PIA_PA foreign key (ProgrammeID, ActorID) references PA (ProgrammeID, ActorID),
	constraint FK_PIA_IA foreign key (IndicatorID, ActorID) references IA (IndicatorID, ActorID)
);
go

insert PIA (ProgrammeID, IndicatorID, ActorID)
select
	PI.ProgrammeID,
	PI.IndicatorID,
	PA.ActorID
from
	PI
	join PA on PI.ProgrammeID = PA.ProgrammeID 
	join IA on PI.IndicatorID = IA.IndicatorID and PA.ActorID = IA.ActorID
order by
	PI.ProgrammeID,
	PI.IndicatorID,
	PA.ActorID;

--select * from PIA;

select '3.06'
go