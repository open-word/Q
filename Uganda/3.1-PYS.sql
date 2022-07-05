use Uganda;
go

create Table PYS
(
	ProgrammeID int,
	YearID int,
	SectorID int,
	constraint PK_PYS primary key (ProgrammeID, YearID, SectorID),
	constraint FK_PYS_P foreign key (ProgrammeID) references P (ProgrammeID),
	constraint FK_PYS_Y foreign key (YearID) references Y (YearID),
	constraint FK_PYS_S foreign key (SectorID) references S (SectorID)
);
go

insert PYS (ProgrammeID, YearID, SectorID)
select
	PY.ProgrammeID,
	PY.YearID,
	S.SectorID
from
	PY
	cross join S
order by
	PY.ProgrammeID,
	PY.YearID,
	S.SectorID;

--select * from PYS;

select '3.1'
go