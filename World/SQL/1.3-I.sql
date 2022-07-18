use World;
go
drop table if exists I;
go
create table I
(
	IndicatorID int identity,
	Code nvarchar(7),
	Description nvarchar(441),
	Tier nvarchar(1),
	Uri nvarchar(25),
	TargetCode nvarchar(5),
	constraint PK_I primary key (IndicatorID),
	constraint UQ_I_Code unique (Code),
	--constraint UQ_I_Description unique (Description), -- Some indicators repeat (Description repeats, Code does not repeat).
	constraint UQ_I_Uri unique (Uri),
	constraint FK_I_T foreign key (TargetCode) references T (Code),
	index IX_I_TargetCode (TargetCode)
);
go

insert I (Code, Description, Tier, Uri, TargetCode)
select
	convert(nvarchar(7),cte.Code) [Code],
	convert(nvarchar(441),cte.Description) [Description],
	convert(nvarchar(1),cte.Tier) [Tier],
	convert(nvarchar(25),cte.Uri) [Uri],
	--convert(nvarchar(2),cte.Goal) [Goal],
	convert(nvarchar(5),cte.Target) [TargetCode]
from
	openrowset (bulk 'C:\github.com\open-word\Q\World\JSON\Indicator_List.json', single_clob) as j
	cross apply openjson(BulkColumn)
with
	(
		code nvarchar(max),
		description nvarchar(max),
		tier nvarchar(max),
		uri nvarchar(max),
		--goal nvarchar(max),
		target nvarchar(max)
	) as cte
order by
	cte.Code;

--select * from I;

select '1.3'
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