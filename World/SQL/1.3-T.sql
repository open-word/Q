use World;
go

create table T
(
	TargetCode nvarchar(5),
	Title nvarchar(564),
	Description nvarchar(564),
	Uri nvarchar(20),
	GoalCode nchar(2),
	constraint PK_T primary key (TargetCode),
	constraint UQ_T_Title unique (Title),
	constraint UQ_T_Description unique (Description),
	constraint UQ_T_Uri unique (Uri),
	constraint FK_T_G foreign key (GoalCode) references G (GoalCode)
);
go

insert T (TargetCode, Title, Description, Uri, GoalCode)
select
	dbo.PadCode(cte.code),
	cte.Title,
	cte.Description,
	cte.Uri,
	dbo.PadCode(cte.goal)
from
	openrowset (bulk 'C:\github.com\open-word\Q\World\JSON\Target_List.json', single_clob) as j
	cross apply openjson(BulkColumn)
with
	(
		code nvarchar(max),
		title nvarchar(max), 
		description nvarchar(max),
		uri nvarchar(max),
		goal nvarchar(max)
	) as cte
order by
	dbo.PadCode(cte.code);

--select * from T;

select '1.3'
go

--https://unstats.un.org/SDGAPI/v1/sdg/Series/List?allreleases=false

--select
--	BulkColumn
--from
--	openrowset (bulk 'C:\github.com\open-word\Q\World\JSON\Target_List.json', single_clob) as j;

--select
--	value
--from
--	openrowset (bulk 'C:\github.com\open-word\Q\World\JSON\Target_List.json', single_clob) as j
--	cross apply openjson(BulkColumn);