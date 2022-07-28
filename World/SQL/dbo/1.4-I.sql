use World;
go

create table I
(
	ICode nvarchar(8),
	IDescription nvarchar(441),
	ITier nvarchar(1),
	IUri nvarchar(25),
	IPoints float default 1,
	IClones nvarchar(8),	-- Some indicators repeat (Description repeats, Code does not repeat).
	TCode nvarchar(5),
	constraint PK_I primary key (ICode),
	--constraint UQ_I_IDescription unique (IDescription), 
	constraint UQ_I_IUri unique (IUri),
	constraint FK_I_T foreign key (TCode) references T (TCode),
	constraint FK_I_IClones foreign key (IClones) references I (ICode)
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

-- ---------------------------------------------------------------------------------------------
-- IClones
-- ---------------------------------------------------------------------------------------------

with cte (ICode, IDescription, IType)
as
(
	select
		ICode,
		IDescription,
		iif(row_number() over (partition by IDescription order by ICode) = 1, 'Original', 'Clone')
	from 
		I 
	where 
		IDescription in (select IDescription from I group by IDescription having count(1) > 1)
)
update
	I
set
	I.IClones = Originals.ICode
from
	I join
	(select ICode, IDescription from cte where IType = 'Clone') Clones on I.ICode = Clones.ICode join 
	(select ICode, IDescription from cte where IType = 'Original') Originals on Clones.IDescription = Originals.IDescription;

--select * from I;

select '1.4'
go