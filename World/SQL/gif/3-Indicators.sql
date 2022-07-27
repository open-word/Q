use World;
go

drop table if exists gif.Indicators;
go

select 
	iif(isnumeric(substring(F1,1,1))=1, substring(F1,1,charindex(' ', F1)-1),	NULL)				[IndicatorCode],
	iif(isnumeric(substring(F1,1,1))=1, dbo.PadCode(substring(F1,1,charindex(' ', F1)-1)), NULL)	[IndicatorCodePadded],
	iif(isnumeric(substring(F1,1,1))=1, replace(F1, substring(F1,1,charindex(' ', F1)),''),F1)		[IndicatorDescription]
into
	gif.Indicators
from 
	dbo.Indicators$
where
	dbo.Indicators$.F1 is not null;

select * from gif.Indicators;