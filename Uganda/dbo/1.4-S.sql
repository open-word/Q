use Uganda;
go

create Table S
(
	SectorID int,
	Name nvarchar(7),
	ShortName nvarchar(3),
	Reference as format(SectorID,'D2'),
	ReferenceName as format(SectorID,'D2') + ' - ' + Name,
	ReferenceShortName as format(SectorID,'D2') + ' - ' + ShortName,
	constraint PK_S primary key (SectorID),
	constraint UQ_S_Name unique (Name),
	constraint UQ_S_ShortName unique (ShortName)
);
go

insert S (SectorID, Name, ShortName) values
(1,	'Public',	'Pbl'),
(2,	'Private',	'Prv');

--select * from S;

select '1.4'
go