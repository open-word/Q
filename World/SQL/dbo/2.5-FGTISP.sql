use World;
go

create table FGTISP
(
	FCode nvarchar(5),
	GCode nvarchar(2),
	TCode nvarchar(5),
	ICode nvarchar(8),
	SCode nvarchar(20),
	PCode nvarchar(5),
	FGTISPWeight float,
	constraint PK_FGTISP primary key (FCode, GCode, TCode, ICode, SCode, PCode),
	constraint FK_FGTISP_FGTIS foreign key (FCode, GCode, TCode, ICode, SCode) references FGTIS (FCode, GCode, TCode, ICode, SCode),
	constraint FK_FGTISP_P foreign key (PCode) references P (PCode)
);

-- -----------------------------------------------------------------
-- Insert
-- -----------------------------------------------------------------

insert FGTISP (FCode, GCode, TCode, ICode, SCode, PCode)
select
	FGTIS.FCode,
	FGTIS.GCode,
	FGTIS.TCode,
	FGTIS.ICode,
	FGTIS.SCode,
	P.PCode
from
	FGTIS 
	cross join P
order by
	FGTIS.FCode,
	FGTIS.GCode,
	FGTIS.TCode,
	FGTIS.ICode,
	FGTIS.SCode,
	P.PCode;

-- -----------------------------------------------------------------
-- FGTISPWeight
-- -----------------------------------------------------------------

update
	FGTISP
set
	FGTISP.FGTISPWeight = FGTISP2.FGTISPWeight
from
	FGTISP join
	(
		select
			FGTISP.FCode,
			FGTISP.GCode,
			FGTISP.TCode,
			FGTISP.ICode,
			FGTISP.SCode,
			FGTISP.PCode,
			(P.PPoints / sum(P.PPoints) over (partition by FGTISP.FCode, FGTISP.GCode, FGTISP.TCode, FGTISP.ICode, FGTISP.SCode)) * FGTIS.FGTISWeight [FGTISPWeight]
		from
			FGTISP
			join FGTIS on 
				FGTISP.FCode = FGTIS.FCode and 
				FGTISP.GCode = FGTIS.GCode and 
				FGTISP.TCode = FGTIS.TCode and
				FGTISP.ICode = FGTIS.ICode and
				FGTISP.SCode = FGTIS.SCode
			join P on
				FGTISP.PCode = P.PCode
	) FGTISP2 on
		FGTISP.FCode = FGTISP2.FCode and
		FGTISP.GCode = FGTISP2.GCode and
		FGTISP.TCode = FGTISP2.TCode and
		FGTISP.ICode = FGTISP2.ICode and
		FGTISP.SCode = FGTISP2.SCode and
		FGTISP.PCode = FGTISP2.PCode;

--select * from FGTISP;

--select '2.5'
--go