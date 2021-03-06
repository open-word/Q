use World;
go

create table S
(
	SCode nvarchar(20),
	SDescription nvarchar(261),
	SUri nvarchar(35),
	SRelease nvarchar(12),
	SGoals nvarchar(15),
	STargets nvarchar(21),
	SIndicators nvarchar(27),
	SPoints float default 1,
	constraint PK_S primary key (SCode),
	constraint UQ_S_SDescription unique (SDescription)
);
go

insert S (SCode, SDescription, SUri, SRelease, SGoals, STargets, SIndicators)
select
	cte.code,
	cte.description,
	cte.uri,
	cte.release,
	replace(replace(replace(cte.goal,'[',''),'"',''),']',''),
	replace(replace(replace(cte.target,'[',''),'"',''),']',''),
	replace(replace(replace(cte.indicator,'[',''),'"',''),']','')
from
	api.Series_List 
	cross apply openjson(JsonString)
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

-- ---------------------------------------------------------------------------------------------
-- M S.
-- ---------------------------------------------------------------------------------------------

insert S (SCode, SDescription) values 
('01.b.01.M',	'Missing (there is no series for indicator 01.b.01)'),
('02.04.01.M',	'Missing (there is no series for indicator 02.04.01)'),
('05.02.02.M',	'Missing (there is no series for indicator 05.02.02)'),
('11.03.01.M',	'Missing (there is no series for indicator 11.03.01)'),
('11.03.02.M',	'Missing (there is no series for indicator 11.03.02)'),
('11.07.02.M',	'Missing (there is no series for indicator 11.07.02)'),
('11.c.M.M',	'Missing (there is no series for target 11.c)'),
('15.07.01.M',	'Missing (there is no series for indicator 15.07.01)'),
('15.c.01.M',	'Missing (there is no series for indicator 15.c.01)'),
('16.03.03.M',	'Missing (there is no series for indicator 16.03.03)'),
('16.04.01.M',	'Missing (there is no series for indicator 16.04.01)'),
('16.06.02.M',	'Missing (there is no series for indicator 16.06.02)'),
('16.07.02.M',	'Missing (there is no series for indicator 16.07.02)'),
('17.18.01.M',	'Missing (there is no series for indicator 17.18.01)');

--select * from S;

select '1.5'
go