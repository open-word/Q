use Understanding;
go

create Table PAY
(
	ProgrammeID nvarchar(25),
	ActorID nvarchar(25),
	YearID int,
	constraint PK_PAY primary key (ProgrammeID, ActorID, YearID),
	constraint FK_PAY_PA foreign key (ProgrammeID, ActorID) references PA (ProgrammeID, ActorID),
	constraint FK_PAY_Y foreign key (YearID) references Y (YearID)
);
go

insert
	PAY
select
	*
from
	PA
	cross join Y;

--select * from PAY order by ProgrammeID, ActorID, YearID;

select '4.3'
go