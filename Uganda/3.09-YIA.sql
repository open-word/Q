use Uganda;
go

create Table YIA
(
	YearID int,
	IndicatorID int,
	ActorID int,
	constraint PK_YIA primary key (YearID, IndicatorID, ActorID),
	constraint FK_YIA_YI foreign key (YearID, IndicatorID) references YI (YearID, IndicatorID),
	constraint FK_YIA_YA foreign key (YearID, ActorID) references YA (YearID, ActorID),
	constraint FK_YIA_IA foreign key (IndicatorID, ActorID) references IA (IndicatorID, ActorID)
);
go

insert YIA (YearID, IndicatorID, ActorID)
select
	YI.YearID,
	YI.IndicatorID,
	YA.ActorID
from
	YI
	join YA on YI.YearID = YA.YearID 
	join IA on YI.IndicatorID = IA.IndicatorID and YA.ActorID = IA.ActorID
order by
	YI.YearID,
	YI.IndicatorID,
	YA.ActorID;

--select * from YIA;

select '3.09'
go