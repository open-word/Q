use World;
go

create table FGTISA
(
	FCode nvarchar(5),
	GCode nvarchar(2),
	TCode nvarchar(5),
	ICode nvarchar(8),
	SCode nvarchar(20),
	ACode nvarchar(5),
	FGTISAWeight float,
	constraint PK_FGTISA primary key (FCode, GCode, TCode, ICode, SCode, ACode),
	constraint FK_FGTISA_FGTIS foreign key (FCode, GCode, TCode, ICode, SCode) references FGTIS (FCode, GCode, TCode, ICode, SCode),
	constraint FK_FGTISA_A foreign key (ACode) references A (ACode)
);

-- -----------------------------------------------------------------
-- Insert
-- -----------------------------------------------------------------

insert FGTISA (FCode, GCode, TCode, ICode, SCode, ACode)
select
	FGTIS.FCode,
	FGTIS.GCode,
	FGTIS.TCode,
	FGTIS.ICode,
	FGTIS.SCode,
	A.ACode
from
	FGTIS 
	cross join A
where
	A.AType = 'Country'
order by
	FGTIS.FCode,
	FGTIS.GCode,
	FGTIS.TCode,
	FGTIS.ICode,
	FGTIS.SCode,
	A.ACode;

-- -----------------------------------------------------------------
-- FGTISAWeight
-- -----------------------------------------------------------------

update
	FGTISA
set
	FGTISA.FGTISAWeight = FGTISA2.FGTISAWeight
from
	FGTISA join
	(
		select
			FGTISA.FCode,
			FGTISA.GCode,
			FGTISA.TCode,
			FGTISA.ICode,
			FGTISA.SCode,
			FGTISA.ACode,
			(A.APoints / sum(A.APoints) over (partition by FGTISA.FCode, FGTISA.GCode, FGTISA.TCode, FGTISA.ICode, FGTISA.SCode)) * FGTIS.FGTISWeight [FGTISAWeight]
		from
			FGTISA
			join FGTIS on 
				FGTISA.FCode = FGTIS.FCode and 
				FGTISA.GCode = FGTIS.GCode and 
				FGTISA.TCode = FGTIS.TCode and
				FGTISA.ICode = FGTIS.ICode and
				FGTISA.SCode = FGTIS.SCode
			join A on
				FGTISA.ACode = A.ACode
	) FGTISA2 on
		FGTISA.FCode = FGTISA2.FCode and
		FGTISA.GCode = FGTISA2.GCode and
		FGTISA.TCode = FGTISA2.TCode and
		FGTISA.ICode = FGTISA2.ICode and
		FGTISA.SCode = FGTISA2.SCode and
		FGTISA.ACode = FGTISA2.ACode;

--select * from FGTISA;

--select '2.5'
--go