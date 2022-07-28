use World;
go

create table T
(
	TCode nvarchar(5),
	TTitle nvarchar(564),
	TDescription nvarchar(564),
	TUri nvarchar(20),
	TPoints float default 1,
	GCode nvarchar(2),
	constraint PK_T primary key (TCode),
	constraint UQ_T_TTitle unique (TTitle),
	constraint UQ_T_TDescription unique (TDescription),
	constraint UQ_T_TUri unique (TUri),
	constraint FK_T_G foreign key (GCode) references G (GCode)
);
go

insert T (TCode, TTitle, TDescription, TUri, GCode)
select
	dbo.PadCode(cte.code),
	cte.title,
	cte.description,
	cte.uri,
	dbo.PadCode(cte.goal)
from
	api.Target_List 
	cross apply openjson(JsonString)
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