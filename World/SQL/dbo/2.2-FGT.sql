use World;
go

create table FGT
(
	FCode nvarchar(5),
	GCode nvarchar(2),
	TCode nvarchar(5),
	FGTWeight float,
	constraint PK_FGT primary key (FCode, GCode, TCode),
	constraint FK_FGT_FG foreign key (FCode, GCode) references FG (FCode, GCode),
	constraint FK_FGT_T foreign key (TCode) references T (TCode)
);

-- -----------------------------------------------------------------
-- Insert
-- -----------------------------------------------------------------

insert FGT (FCode, GCode, TCode)
select
	FG.FCode,
	FG.GCode,
	T.TCode
from
	FG 
	join T on 
		FG.GCode = T.GCode
order by
	FG.FCode,
	FG.GCode,
	T.TCode;

-- -----------------------------------------------------------------
-- FGTWeight
-- -----------------------------------------------------------------

update
	FGT
set
	FGT.FGTWeight = FGT2.FGTWeight
from
	FGT join
	(
		select
			FGT.FCode,
			FGT.GCode,
			FGT.TCode,
			(T.TPoints / sum(T.TPoints) over (partition by FGT.FCode, FGT.GCode)) * FG.FGWeight [FGTWeight]
		from
			FGT join
			FG on FGT.FCode = FG.FCode and FGT.GCode = FG.GCode join
			T on FGT.TCode = T.TCode
	) FGT2 on
		FGT.FCode = FGT2.FCode and
		FGT.GCode = FGT2.GCode and
		FGT.TCode = FGT2.TCode

--select * from FGT;

--select '2.2'
--go