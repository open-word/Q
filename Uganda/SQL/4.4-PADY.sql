use Uganda;
go

create Table PADY
(
	ProgrammeID int,
	ActorID int,
	DistrictID int,
	YearID int,
	constraint PK_PADY primary key (ProgrammeID, ActorID, DistrictID, YearID),
	constraint FK_PADY_PAD foreign key (ProgrammeID, ActorID, DistrictID) references PAD (ProgrammeID, ActorID, DistrictID),
	constraint FK_PADY_Y foreign key (YearID) references Y (YearID)
);
go

insert
	PADY
select
	PAD.ProgrammeID,
	PAD.ActorID,
	PAD.DistrictID,
	Y.YearID
from
	PAD
	cross join Y;

--select * from PADY order by ProgrammeID, ActorID, DistrictID, YearID;

select '4.4'
go