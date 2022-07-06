use Uganda;
go
drop table if exists [AS];
create Table [AS]
(
	ActorID int,
	SectorID int,
	constraint PK_AS primary key (ActorID, SectorID),
	constraint FK_AS_A foreign key (ActorID) references A (ActorID),
	constraint FK_AS_S foreign key (SectorID) references S (SectorID)
);
go

insert [AS] (ActorID, SectorID) values
	(1,1),
	(2,1),
	(3,2),
	(4,2);

--select * from AS;

select '2.10'
go