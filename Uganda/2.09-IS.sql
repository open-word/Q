use Uganda;
go

create Table [IS]
(
	IndicatorID int,
	SectorID int,
	constraint PK_IS primary key (IndicatorID, SectorID),
	constraint FK_IS_I foreign key (IndicatorID) references I (IndicatorID),
	constraint FK_IS_S foreign key (SectorID) references S (SectorID)
);
go

insert [IS] (IndicatorID, SectorID)
select
	I.IndicatorID,
	S.SectorID
from 
	I
	cross join S
order by
	I.IndicatorID,
	S.SectorID;

--select * from IS;

select '2.09'
go