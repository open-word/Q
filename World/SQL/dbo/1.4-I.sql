use World;
go

create table I
(
	ICode nvarchar(8),
	IDescription nvarchar(441),
	ITier nvarchar(1),
	IUri nvarchar(25),
	IPoints float default 1,
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
	cte.description,
	cte.tier,
	cte.uri,
	dbo.PadCode(cte.target)
from
	api.Indicator_List 
	cross apply openjson(JsonString)
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

-- ---------------------------------------------------------------------------------------------
-- Missing I.
-- ---------------------------------------------------------------------------------------------

insert I (ICode, IDescription, TCode) values ('11.c.M', 'Missing (there is no indicator for target 11.c)', '11.c');

--select * from I;

select '1.4'
go