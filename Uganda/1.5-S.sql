use Uganda;
go

create Table S
(
	SectorID int,
	Name nvarchar(7),
	Reference nvarchar(10),
	ReferenceName as Reference + '-' + Name,
	constraint PK_S primary key (SectorID)
);
go

insert S (SectorID, Name, Reference) values
	(1,'Public','01'),
	(2,'Private','02');

--select * from S;

select '1.5'
go