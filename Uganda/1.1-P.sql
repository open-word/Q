use Uganda;
go

create table P
(
	ProgrammeID int,
	Name nvarchar(250),
	Acronym nvarchar(25),
	TLA nvarchar(3),
	Reference nvarchar(10),
	ReferenceName as Reference + '-' + Name,
	ReferenceTLA as Reference + ' ' + TLA,
	constraint PK_P primary key (ProgrammeID)
);
go

insert P (ProgrammeID, Name, Acronym, TLA, Reference) values
 ( 1,'Programme 01', 'P1',	'P01',	'01'),
 ( 2,'Programme 02', 'P2',	'P02',	'02'),
 ( 3,'Programme 03', 'P3',	'P03',	'03'),
 ( 4,'Programme 04', 'P4',	'P04',	'04');
go

--select * from P;

select '1.1'
go