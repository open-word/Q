use Uganda;
go

create Table PY
(
	ProgrammeID int,
	YearID int,
	Budget decimal(18,8)
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
	cross join Y
order by
	P.ProgrammeID,
	Y.YearID;

update PY set Budget =  3 where ProgrammeID = 1 and YearID = 1;
update PY set Budget =  7 where ProgrammeID = 1 and YearID = 2;
update PY set Budget = 12 where ProgrammeID = 2 and YearID = 1;
update PY set Budget = 24 where ProgrammeID = 2 and YearID = 2;

--select * from PY;

select '2.2'
go