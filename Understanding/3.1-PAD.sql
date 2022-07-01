use Understanding;
go

create table PAD
(
	ProgrammeID nvarchar(25),
	ActorID nvarchar(25),
	DistrictID nvarchar(25),
	constraint PK_PAD primary key (ProgrammeID, ActorID, DistrictID),
	constraint FK_PAD_PA foreign key (ProgrammeID, ActorID) references PA (ProgrammeID, ActorID)
);
go

insert PAD (ProgrammeID, ActorID, DistrictID)
select
	*
from
	PA
	cross join D;

--select * from PAD;

select '3.1'
go