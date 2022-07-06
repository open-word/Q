use Uganda;
go

create Table PYA
(
	ProgrammeID int,
	YearID int,
	ActorID int
	constraint PK_PYA primary key (ProgrammeID, YearID, ActorID),
	constraint FK_PYA_PY foreign key (ProgrammeID, YearID) references PY (ProgrammeID, YearID),
	constraint FK_PYA_PA foreign key (ProgrammeID, ActorID) references PA (ProgrammeID, ActorID),
	constraint FK_PYA_YA foreign key (YearID, ActorID) references YA (YearID, ActorID),
);
go

insert PYA (ProgrammeID, YearID, ActorID)
select
	PY.ProgrammeID,
	PY.YearID,
	PA.ActorID
from
	PY
	join PA on PY.ProgrammeID = PA.ProgrammeID
	join YA on PY.YearID = YA.YearID and PA.ActorID = YA.ActorID
order by
	PY.ProgrammeID,
	PY.YearID,
	PA.ActorID;

--select * from PYA;

select '3.03'
go