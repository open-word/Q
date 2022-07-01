use Uganda;
go

create table YI
(
	YearID int,
	IndicatorID int,
	IndicatorPoints float,
	constraint PK_YI primary key (YearID, IndicatorID),
	constraint FK_YI_Y foreign key (YearID) references Y (YearID),
	constraint FK_YI_I foreign key (IndicatorID) references I (IndicatorID)
);
go

insert
	YI
select
	Y.YearID,
	I.IndicatorID,
	I.IndicatorPoints
from
	Y
	cross join I;

-- select * from YI;

select '6.2'
go