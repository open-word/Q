use Uganda;
go

create table A
(
	ActorID int,
	Name nvarchar(250),
	Acronym nvarchar(25),
	Reference nvarchar(10),
	ReferenceName as Reference + '-' + Name,
	constraint PK_A primary key (ActorID)
);
go

insert A (ActorID, Name, Acronym, Reference) values
 ( 1,'Actor 01',	'A01', '01'),
 ( 2,'Actor 02',	'A02', '02');

--select * from A;

select '4.1'
go