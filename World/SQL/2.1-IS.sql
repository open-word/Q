use World;
go

create table [IS]
(
	IndicatorCode nvarchar(8),
	SeriesCode nvarchar(20),
	constraint PK_IS primary key (IndicatorCode, SeriesCode),
	constraint FK_IS_I foreign key (IndicatorCode) references I (IndicatorCode),
	constraint FK_IS_S foreign key (SeriesCode) references S (SeriesCode)
);

insert [IS] (IndicatorCode, SeriesCode)
select
	dbo.PadCode(i.Value) [IndicatorCode],
	S.SeriesCode [SeriesCode]
from
	S cross apply string_split(S.Indicators,',') i
order by 
	IndicatorCode,
	SeriesCode;

--select * from [IS];

select '2.1';
go