use World;
go

create table I
(
	ICode nvarchar(8),
	IDescription nvarchar(441),
	ITier nvarchar(1),
	IUri nvarchar(25),
	IPoints decimal(18,8) default 1,
	TCode nvarchar(5),
	constraint PK_I primary key (ICode),
	--constraint UQ_I_IDescription unique (IDescription), -- Some indicators repeat (Description repeats, Code does not repeat).
	constraint UQ_I_IUri unique (IUri),
	constraint FK_I_T foreign key (TCode) references T (TCode)
);
go

insert I (ICode, IDescription, ITier, IUri, TCode)
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