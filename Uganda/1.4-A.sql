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
 ( 1,'Actor 1',	'A1', '1'),
 ( 2,'Actor 2',	'A2', '2'),
 ( 3,'Actor 3',	'A3', '3'),
 ( 4,'Actor 4',	'A4', '4'),
 ( 5,'Actor 5',	'A5', '5'),
 ( 6,'Actor 6',	'A6', '6'),
 ( 7,'Actor 7',	'A7', '7'),
 ( 8,'Actor 8',	'A8', '8')

--select * from A;

select '1.4'
go