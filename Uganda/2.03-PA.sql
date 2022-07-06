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

insert PA (ProgrammeID, ActorID) values
	(1,1),
	(1,2),
	(1,3),
	(1,4),
	(2,1),
	(2,2),
	(2,3),
	(2,4),
	(3,5),
	(3,6),
	(4,7),
	(4,8);

--select * from PA;

select '2.03'
go