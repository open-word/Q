use Uganda;
go

create Table PY
(
	ProgrammeID int,
	YearID int,
	constraint PK_PY primary key (ProgrammeID, YearID),
	constraint FK_PY_P foreign key (ProgrammeID) references P (ProgrammeID),
	constraint FK_PY_Y foreign key (YearID) references Y (YearID)
);
go

insert PY (ProgrammeID, YearID)
select
	P.ProgrammeID,
	Y.YearID
from
	P
	cross join Y;

--select * from PY;

select '4.2'
go