use World;
go

create table I
(
	IndicatorCode nvarchar(8),
	Description nvarchar(441),
	Tier nvarchar(1),
	Uri nvarchar(25),
	TargetCode nvarchar(5),
	constraint PK_I primary key (IndicatorCode),
	--constraint UQ_I_Description unique (Description), -- Some indicators repeat (Description repeats, Code does not repeat).
	constraint UQ_I_Uri unique (Uri),
	constraint FK_I_T foreign key (TargetCode) references T (TargetCode)
);
go

insert I (IndicatorCode, Description, Tier, Uri, TargetCode)
select
	dbo.PadCode(cte.code),
	cte.Description,
	cte.Tier,
	cte.Uri,
	dbo.PadCode(cte.Target)
from
	openrowset (bulk 'C:\github.com\open-word\Q\World\JSON\Indicator_List.json', single_clob) as j
	cross apply openjson(BulkColumn)
with
	(
		code nvarchar(max),
		description nvarchar(max),
		tier nvarchar(max),
		uri nvarchar(max),
		target nvarchar(max)
	) as cte
order by
	dbo.PadCode(cte.code);

--select * from I;

select '1.4'
go

--https://unstats.un.org/SDGAPI/v1/sdg/Series/List?allreleases=false

--select
--	BulkColumn
--from
--	openrowset (bulk 'C:\github.com\open-word\Q\World\JSON\Indicator_List.json', single_clob) as j;

--select
--	value
--from
--	openrowset (bulk 'C:\github.com\open-word\Q\World\JSON\Indicator_List.json', single_clob) as j
--	cross apply openjson(BulkColumn);

-- Some indicators repeat (Description repeats, Code does not repeat).
--select * from I where Description in (select Description from I group by Description having count(1) > 1);