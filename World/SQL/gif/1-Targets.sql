use World;
go

drop table if exists gif.Targets;
go

select 
	substring(F1,1,charindex(' ', F1)-1)				[TargetCode],
	dbo.PadCode(substring(F1,1,charindex(' ', F1)-1))	[TargetCodePadded],
	replace(F1, substring(F1,1,charindex(' ', F1)),'')	[TargetDescription]
into
	gif.Targets
from 
	gif.Targets$
where
	gif.Targets$.F1 is not null;

select * from gif.Targets;