use World;
go

create table [IS]
(
	ICode nvarchar(8),
	SCode nvarchar(20),
	constraint PK_IS primary key (ICode, SCode),
	constraint FK_IS_I foreign key (ICode) references I (ICode),
	constraint FK_IS_S foreign key (SCode) references S (SCode)
);

insert [IS] (ICode, SCode)
select
	dbo.PadCode(i.Value) [ICode],
	S.SCode [SCode]
from
	S cross apply string_split(S.SIndicators,',') i
order by 
	ICode,
	SCode;

--select * from [IS];

select '2.1';
go