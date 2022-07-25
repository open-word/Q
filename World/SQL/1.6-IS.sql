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

-- ---------------------------------------------------------------------------------------------
-- Missing IS.
-- ---------------------------------------------------------------------------------------------

insert [IS] (ICode, SCode) values 
('01.b.01',  '01.b.01.M'),
('02.04.01', '02.04.01.M'),
('05.02.02', '05.02.02.M'),
('11.03.01', '11.03.01.M'),
('11.03.02', '11.03.02.M'),
('11.07.02', '11.07.02.M'),
('11.c.M',   '11.c.M.M'),
('15.07.01', '15.07.01.M'),
('15.c.01',  '15.c.01.M'),
('16.03.03', '16.03.03.M'),
('16.04.01', '16.04.01.M'),
('16.06.02', '16.06.02.M'),
('16.07.02', '16.07.02.M'),
('17.18.01', '17.18.01.M');

-- ---------------------------------------------------------------------------------------------
-- IS for Missing S.
-- ---------------------------------------------------------------------------------------------

--select * from [IS];

select '1.6';
go