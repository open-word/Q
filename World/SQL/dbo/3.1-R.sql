use World;
go

if not exists (select 1 from sys.indexes where name = 'IX_Records_GTISPY' and object_id = object_id('Records'))
begin
	create index IX_Records_GTISPY on Records (Goal, Target, Indicator, Series, GeoAreaCode, TimePeriod);
end
go

create table R
(
	FCode nvarchar(5),
	GCode nvarchar(2),
	TCode nvarchar(5),
	ICode nvarchar(8),
	SCode nvarchar(20),
	PCode nvarchar(5),
	YCode nvarchar(4),
	constraint PK_R primary key (FCode, GCode, TCode, ICode, SCode, PCode, YCode),
	constraint FK_R_FGTISPY foreign key (FCode, GCode, TCode, ICode, SCode, PCode, YCode) references FGTISPY (FCode, GCode, TCode, ICode, SCode, PCode, YCode)
);

insert R (FCode, GCode, TCode, ICode, SCode, PCode, YCode)
select distinct
	'World'						[FCode],
	dbo.PadCode(Goal)			[GCode],
	dbo.PadCode(Target)			[TCode],
	dbo.PadCode(Indicator)		[ICode],
	dbo.PadCode(Series)			[SCode],
	format(GeoAreaCode,'D3')	[PCode],
	TimePeriod					[YCode]
from
	Records
order by
	[FCode],
	[GCode],
	[TCode],
	[ICode],
	[SCode],
	[PCode],
	[YCode];
go

--select * from R;

select '3.1';
go