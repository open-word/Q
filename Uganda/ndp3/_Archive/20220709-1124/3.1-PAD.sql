use Uganda;
go

create table PAD
(
	ProgrammeID int,
	ActorID int,
	DistrictID int,
	constraint PK_PAD primary key (ProgrammeID, ActorID, DistrictID),
	constraint FK_PAD_PA foreign key (ProgrammeID, ActorID) references PA (ProgrammeID, ActorID)
);
go

insert PAD (ProgrammeID, ActorID, DistrictID)
select
	PA.ProgrammeID,
	PA.ActorID,
	D.DistrictID
from
	PA
	cross join D;

--select * from PAD;

select '3.1'
go