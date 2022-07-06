use Uganda;
go

create Table IA
(
	IndicatorID int,
	ActorID int,
	constraint PK_IA primary key (IndicatorID, ActorID),
	constraint FK_IA_I foreign key (IndicatorID) references I (IndicatorID),
	constraint FK_IA_A foreign key (ActorID) references A (ActorID)
);
go

insert IA (IndicatorID, ActorID)
select
	PI.IndicatorID,
	PA.ActorID
from 
	PA
	join PI on PA.ProgrammeID = PI.ProgrammeID
order by
	PI.IndicatorID,
	PA.ActorID;

--select * from IA;

select '2.08'
go