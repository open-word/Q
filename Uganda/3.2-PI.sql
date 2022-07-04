use Uganda;
go

create Table PI
(
	ProgrammeID int,
	IndicatorID int,
	constraint PK_PI primary key (ProgrammeID, IndicatorID),
	constraint FK_PI_P foreign key (ProgrammeID) references P (ProgrammeID),
	constraint FK_PP_I foreign key (IndicatorID) references I (IndicatorID)
);
go

insert PI (ProgrammeID, IndicatorID)
select
	P.ProgrammeID,
	I.IndicatorID
from
	P
	join I on P.Reference = substring(I.Reference,1,2)
order by
	P.ProgrammeID,
	I.IndicatorID;

--select * from PI;

select '3.2'
go