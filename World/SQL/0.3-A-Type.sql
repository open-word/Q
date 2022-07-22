use World;
go

-- GeoArea_List contains more entities than GeoArea_Tree.
-- Nonetheless, let's extract the Type from GeoArea_Tree and update where we can.

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
		openrowset (bulk 'C:\github.com\open-word\Q\World\JSON\GeoArea_Tree.json', single_clob) t
		outer apply openjson(t.BulkColumn) 
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
	A.Type = cte2.Type
from
	A left join cte2 on A.Name = cte2.Name;
go

--select * from A;

select '0.3'
go