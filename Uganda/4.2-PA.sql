use Uganda;
go

create Table PA
(
	ProgrammeID int,
	ActorID int,
	constraint PK_PA primary key (ProgrammeID, ActorID),
	constraint FK_PA_P foreign key (ProgrammeID) references P (ProgrammeID),
	constraint FK_PA_A foreign key (ActorID) references A (ActorID)
);
go

insert PA (ProgrammeID, ActorID)
select
	P.ProgrammeID,
	A.ActorID
from
	P
	cross join A
order by
	P.ProgrammeID,
	A.ActorID;

--select * from PA;

select '4.2'
go