use Understanding;
go

create table PA
(
	ProgrammeID nvarchar(25),
	ActorID nvarchar(25),
	constraint PK_PA primary key (ProgrammeID, ActorID),
	constraint FK_PA_P foreign key (ProgrammeID) references P (ProgrammeID),
	constraint FK_PA_A foreign key (ActorID) references A (ActorID)
);
go

insert PA (ProgrammeID, ActorID)
select
	*
from
	P
	cross join A;

--select * from PA;

select '2.1'
go