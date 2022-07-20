use World;
go
drop table if exists T;
go
create table T
(
	TargetID int identity,
	Code nvarchar(5),
	Title nvarchar(564),
	Description nvarchar(564),
	Uri nvarchar(20),
	GoalCode nvarchar(2),
	constraint PK_T primary key (TargetID),
	constraint UQ_T_Code unique (Code),
	constraint UQ_T_Title unique (Title),
	constraint UQ_T_Description unique (Description),
	constraint UQ_T_Uri unique (Uri),
	constraint FK_T_G foreign key (GoalCode) references G (Code),
	index IX_T_Goal (GoalCode)
);
go

insert T (Code, Title, Description, Uri, GoalCode)
select
	convert(nvarchar(5),cte.Code) [Code],
	convert(nvarchar(564),cte.Title) [Title],
	convert(nvarchar(564),cte.Description) [Description],
	convert(nvarchar(20),cte.Uri) [Uri],
	convert(nvarchar(2),cte.Goal) [GoalCode]
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
	cte.Code;

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