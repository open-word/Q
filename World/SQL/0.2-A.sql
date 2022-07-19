use World;
go
drop table if exists A;
go
create table A
(
	AreaID int identity,
	Code int,
	Name nvarchar(92)
	constraint PK_A primary key (AreaID),
	constraint UQ_A_Code unique (Code),
	constraint UQ_A_Name unique (Name)
);
go

insert A(Code, Name)
select
	cte.geoAreaCode [Code],
	convert(nvarchar(92),cte.geoAreaName) [Name]
from
	openrowset (bulk 'C:\github.com\open-word\Q\World\JSON\GeoArea_List.json', single_clob) as j
	cross apply openjson(BulkColumn)
with
	(
		geoAreaCode int,
		geoAreaName nvarchar(max)
	) as cte
order by
	cte.geoAreaCode;

--select * from A;

--select '1.1'
--go

--https://unstats.un.org/SDGAPI/v1/sdg/GeoArea/List?allreleases=false

--select
--	BulkColumn
--from
--	openrowset (bulk 'C:\github.com\open-word\Q\World\JSON\GeoArea_List.json', single_clob) as j;

--select
--	value
--from
--	openrowset (bulk 'C:\github.com\open-word\Q\World\JSON\GeoArea_List.json', single_clob) as j
--	cross apply openjson(BulkColumn);