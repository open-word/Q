use World;
go

create table A
(
	ACode nchar(3),
	AName nvarchar(92),
	AType nvarchar(19),
	APoints decimal(18,8) default 1,
	constraint PK_A primary key (ACode),
	constraint UQ_A_AName unique (AName)
);
go

insert A(ACode, AName)
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