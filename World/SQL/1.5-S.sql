use World;
go

create table S
(
	SeriesID int identity,
	Code nvarchar(20),
	Description nvarchar(261),
	Uri nvarchar(35),
	Release nvarchar(12),
	Goals nvarchar(15),
	Targets nvarchar(21),
	Indicators nvarchar(27),
	constraint PK_S primary key (SeriesID),
	constraint UQ_S_Code unique (Code),
	constraint UQ_S_Description unique (Description),
	constraint UQ_S_Uri unique (Uri)
);
go

insert S (Code, Description, Uri, Release, Goals, Targets, Indicators)
select
	convert(nvarchar(20),cte.Code) [Code],
	convert(nvarchar(261),cte.Description) [Description],
	convert(nvarchar(35),cte.Uri) [Uri],
	convert(nvarchar(12),cte.Release) [Release],
	replace(replace(replace(cte.Goal,'[',''),'"',''),']','') [Goals],
	replace(replace(replace(cte.Target,'[',''),'"',''),']','') [Targets],
	replace(replace(replace(cte.Indicator,'[',''),'"',''),']','') [Indicators]
from
	openrowset (bulk 'C:\github.com\open-word\Q\World\JSON\Series_List.json', single_clob) as j
	cross apply openjson(BulkColumn)
with
	(
		code nvarchar(max),
		description nvarchar(max),
		uri nvarchar(max),
		release nvarchar(max),
		goal nvarchar(max) as json,
		target nvarchar(max) as json, 
		indicator nvarchar(max) as json		
	) as cte
order by
	cte.Code;

--select * from S;

select '1.5'
go

--https://unstats.un.org/SDGAPI/v1/sdg/Series/List?allreleases=false

--select
--	BulkColumn
--from
--	openrowset (bulk 'C:\github.com\open-word\Q\World\JSON\Series_List.json', single_clob) as j;

--select
--	value
--from
--	openrowset (bulk 'C:\github.com\open-word\Q\World\JSON\Series_List.json', single_clob) as j
--	cross apply openjson(BulkColumn);