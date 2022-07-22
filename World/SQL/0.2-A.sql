use World;
go

create table A
(
	AreaCode nchar(3),
	Name nvarchar(92),
	Type nvarchar(19),
	constraint PK_A primary key (AreaCode),
	constraint UQ_A_Name unique (Name)
);
go

insert A(AreaCode, Name)
select
	format(cte.geoAreaCode,'D3'),
	convert(nvarchar(92),cte.geoAreaName)
from
	openrowset (bulk 'C:\github.com\open-word\Q\World\JSON\GeoArea_List.json', single_clob) as j
	cross apply openjson(BulkColumn)
with
	(
		geoAreaCode int,
		geoAreaName nvarchar(max)
	) as cte
where
	geoAreaCode <= 999
order by
	geoAreaCode;

--select * from A;

select '0.2'
go

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