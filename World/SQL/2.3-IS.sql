use World;
go
drop table if exists [IS];
go
create table [IS]
(
	IndicatorCode nvarchar(7),
	SeriesCode nvarchar(20),
	constraint PK_IS primary key (IndicatorCode, SeriesCode),
	constraint FK_IS_I foreign key (IndicatorCode) references I (Code),
	constraint FK_IS_S foreign key (SeriesCode) references S (Code)
);

insert [IS] (IndicatorCode, SeriesCode)
select
	i.Value [IndicatorCode],
	S.Code [SeriesCode]
from
	S cross apply string_split(S.Indicators,',') i
order by 
	IndicatorCode,
	SeriesCode;

--select * from [IS];

select '2.3';
go