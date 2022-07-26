use World;
go

create table FGTI
(
	FCode nvarchar(5),
	GCode nvarchar(2),
	TCode nvarchar(5),
	ICode nvarchar(8),
	FGTIWeight float,
	constraint PK_FGTI primary key (FCode, GCode, TCode, ICode),
	constraint FK_FGTI_FGT foreign key (FCode, GCode, TCode) references FGT (FCode, GCode, TCode),
	constraint FK_FGTI_I foreign key (ICode) references I (ICode)
);

-- -----------------------------------------------------------------
-- Insert
-- -----------------------------------------------------------------

insert FGTI (FCode, GCode, TCode, ICode)
select
	FGT.FCode,
	FGT.GCode,
	FGT.TCode,
	I.ICode
from
	FGT 
	join I on 
		FGT.TCode = I.TCode
order by
	FGT.FCode,
	FGT.GCode,
	FGT.TCode,
	I.ICode;

-- -----------------------------------------------------------------
-- FGTIWeight
-- -----------------------------------------------------------------

update
	FGTI
set
	FGTI.FGTIWeight = FGTI2.FGTIWeight
from
	FGTI join
	(
		select
			FGTI.FCode,
			FGTI.GCode,
			FGTI.TCode,
			FGTI.ICode,
			(I.IPoints / sum(I.IPoints) over (partition by FGTI.FCode, FGTI.GCode, FGTI.TCode)) * FGT.FGTWeight [FGTIWeight]
		from
			FGTI 
			join FGT on 
				FGTI.FCode = FGT.FCode and 
				FGTI.GCode = FGT.GCode and 
				FGTI.TCode = FGT.TCode 
			join I on 
				FGTI.ICode = I.ICode
	) FGTI2 on
		FGTI.FCode = FGTI2.FCode and
		FGTI.GCode = FGTI2.GCode and
		FGTI.TCode = FGTI2.TCode and
		FGTI.ICode = FGTI2.ICode;

--select * from FGTI;

--select '2.3'
--go