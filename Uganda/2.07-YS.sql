use Uganda;
go

create Table YS
(
	YearID int,
	SectorID int,
	constraint PK_YS primary key (YearID, SectorID),
	constraint FK_YS_Y foreign key (YearID) references Y (YearID),
	constraint FK_YS_S foreign key (SectorID) references S (SectorID)
);
go

insert YS (YearID, SectorID)
select
	Y.YearID,
	S.SectorID
from 
	Y
	cross join S
order by
	Y.YearID,
	S.SectorID;

--select * from YS;

select '2.07'
go