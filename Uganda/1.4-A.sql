use Uganda;
go

create table A
(
	ActorID int,
	Name nvarchar(250),
	Acronym nvarchar(25),
	Reference nvarchar(10),
	ReferenceName as Reference + '-' + Name,
	SectorID int,
	constraint PK_A primary key (ActorID)
);
go

insert A (ActorID, Name, Acronym, Reference, SectorID) values
 ( 1,'Actor 1.1',	'A1.1', '1.1', 1),
 ( 2,'Actor 1.2',	'A1.2', '1.2', 1),
 ( 3,'Actor 2.1',	'A2.1', '2.1', 2),
 ( 4,'Actor 2.2',	'A2.2', '2.2', 2);

--select * from A;

select '1.4'
go