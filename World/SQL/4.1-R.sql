use World;
go

if not exists (select 1 from sys.indexes where name = 'IX_Records_GTISAY' and object_id = object_id('Records'))
begin
	create index IX_Records_GTISAY on Records (Goal, Target, Indicator, Series, GeoAreaCode, TimePeriod);
end
go

create table R
(
	FCode nchar(5),
	GCode nchar(2),
	TCode nvarchar(5),
	ICode nvarchar(8),
	SCode nvarchar(20),
	ACode nchar(3),
	YCode nchar(4),
	constraint PK_R primary key (FCode, GCode, TCode, ICode, SCode, ACode, YCode),
	constraint FK_R_FGTISAY foreign key (FCode, GCode, TCode, ICode, SCode, ACode, YCode) references FGTISAY (FCode, GCode, TCode, ICode, SCode, ACode, YCode)
);

insert R (FCode, GCode, TCode, ICode, SCode, ACode, YCode)
select distinct
	'World'						[FCode],
	dbo.PadCode(Goal)			[GCode],
	dbo.PadCode(Target)			[TCode],
	dbo.PadCode(Indicator)		[ICode],
	dbo.PadCode(Series)			[SCode],
	format(GeoAreaCode,'D3')	[ACode],
	TimePeriod					[YCode]
from
	Records
order by
	[FCode],
	[GCode],
	[TCode],
	[ICode],
	[SCode],
	[ACode],
	[YCode];
go

--select * from R;

select '4.1';
go