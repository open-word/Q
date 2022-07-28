use World;
go

create table A
(
	ACode nvarchar(5),
	AName nvarchar(92),
	AType nvarchar(19),
	APoints float default 1,
	constraint PK_A primary key (ACode),
	constraint UQ_A_AName unique (AName)
);
go

insert A(ACode, AName)
select
	format(cte.geoAreaCode,'D3') geoAreaCode,
	cte.geoAreaName
from
	api.GeoArea_List 
	cross apply openjson(JsonString)
with
	(
		geoAreaCode int,
		geoAreaName nvarchar(max)
	) as cte
order by
	cte.geoAreaCode;

-- ---------------------------------------------------------------------------------------------
-- AType
-- ---------------------------------------------------------------------------------------------

with 
cte1
(
	ACode,
	AName,
	AType,
	BCode,
	BName,
	BType,
	CCode,
	CName,
	CType,
	DCode,
	DName,
	DType,
	ECode,
	EName,
	EType,
	FCode,
	FName,
	FType
)
as
(
	select
		a.geoAreaCode	ACode,
		a.geoAreaName	AName,
		a.type			AType,
		b.geoAreaCode	BCode,
		b.geoAreaName	BName,
		b.type			BType,
		c.geoAreaCode	CCode,
		c.geoAreaName	CName,
		c.type			CType,
		d.geoAreaCode	DCode,
		d.geoAreaName	DName,
		d.type			DType,
		e.geoAreaCode	ECode,
		e.geoAreaName	EName,
		e.type			EType,
		f.geoAreaCode	FCode,
		f.geoAreaName	FName,
		f.type			FType
	from 
		api.GeoArea_Tree t
		outer apply openjson(JsonString) 
			with (geoAreaCode nvarchar(3),geoAreaName nvarchar(100),type nvarchar(20), children nvarchar(max) as json) a
			outer apply openjson(a.children)
				with (geoAreaCode nvarchar(3),geoAreaName nvarchar(100),type nvarchar(20), children nvarchar(max) as json) b
				outer apply openjson(b.children)
					with (geoAreaCode nvarchar(3),geoAreaName nvarchar(100),type nvarchar(20), children nvarchar(max) as json) c
					outer apply openjson(c.children)
						with (geoAreaCode nvarchar(3),geoAreaName nvarchar(100),type nvarchar(20), children nvarchar(max) as json) d
						outer apply openjson(d.children)
							with (geoAreaCode nvarchar(3),geoAreaName nvarchar(100),type nvarchar(20), children nvarchar(max) as json) e
							outer apply openjson(e.children)
								with (geoAreaCode nvarchar(3),geoAreaName nvarchar(100),type nvarchar(20), children nvarchar(max) as json) f
								outer apply openjson(f.children)
),
cte2 
(
	Code, 
	Name, 
	Type
)
as
(
	select 	
		Code, 
		Name, 
		Type
	from
		(
			(select ACode [Code], AName [Name], AType [Type] from cte1)
			union
			(select BCode, BName, BType from cte1)
			union
			(select CCode, CName, CType from cte1)
			union
			(select DCode, DName, DType from cte1)
			union
			(select ECode, EName, EType from cte1)
		) B
)
update
	A
set
	A.AType = cte2.Type
from
	A left join cte2 on A.AName = cte2.Name;
go

--select * from A where ACode in (384,531,792);

select '0.2'
go