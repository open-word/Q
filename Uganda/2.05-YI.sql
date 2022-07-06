use Uganda;
go

create Table YI
(
	YearID int,
	IndicatorID int,
	constraint PK_YI primary key (YearID, IndicatorID),
	constraint FK_YI_Y foreign key (YearID) references Y (YearID),
	constraint FK_YI_I foreign key (IndicatorID) references I (IndicatorID)
);
go

insert YI (YearID, IndicatorID)
select
	Y.YearID,
	I.IndicatorID
from
	Y
	cross join I
order by
	Y.YearID,
	I.IndicatorID;

--select * from YI;

select '2.05'
go