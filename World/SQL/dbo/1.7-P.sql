use World;
go

create table P
(
	PCode nvarchar(5),
	PName nvarchar(92),
	PPoints float default 1,
	constraint PK_P primary key (PCode),
	constraint FK_P_A foreign key (PCode) references A (ACode)
);
go

insert P (PCode, PName)
select
	ACode,
	AName
from
	A
where
	A.AType = 'Country' and
	A.ACode not in (890,896)
order by
	A.ACode;

--select * from P;

select '1.7'
go