use World;
go

create table FGTIS
(
	FCode nvarchar(5),
	GCode nvarchar(2),
	TCode nvarchar(5),
	ICode nvarchar(8),
	SCode nvarchar(20),
	FGTISWeight float,
	constraint PK_FGTIS primary key (FCode, GCode, TCode, ICode, SCode),
	constraint FK_FGTIS_FGTI foreign key (FCode, GCode, TCode, ICode) references FGTI (FCode, GCode, TCode, ICode),
	constraint FK_FGTIS_S foreign key (SCode) references S (SCode)
);

-- -----------------------------------------------------------------
-- Insert
-- -----------------------------------------------------------------

insert FGTIS (FCode, GCode, TCode, ICode, SCode)
select
	FGTI.FCode,
	FGTI.GCode,
	FGTI.TCode,
	FGTI.ICode,
	S.SCode
from
	FGTI 
	join [IS] on
		FGTI.ICode = [IS].ICode
	join S on
		[IS].SCode = S.SCode
order by
	FGTI.FCode,
	FGTI.GCode,
	FGTI.TCode,
	FGTI.ICode,
	S.SCode;

-- -----------------------------------------------------------------
-- FGTISWeight
-- -----------------------------------------------------------------

update
	FGTIS
set
	FGTIS.FGTISWeight = FGTIS2.FGTISWeight
from
	FGTIS join
	(
		select
			FGTIS.FCode,
			FGTIS.GCode,
			FGTIS.TCode,
			FGTIS.ICode,
			FGTIS.SCode,
			(S.SPoints / sum(S.SPoints) over (partition by FGTIS.FCode, FGTIS.GCode, FGTIS.TCode, FGTIS.ICode)) * FGTI.FGTIWeight [FGTISWeight]
		from
			FGTIS 
			join FGTI on 
				FGTIS.FCode = FGTI.FCode and 
				FGTIS.GCode = FGTI.GCode and 
				FGTIS.TCode = FGTI.TCode and
				FGTIS.ICode = FGTI.ICode
			join S on 
				FGTIS.SCode = S.SCode
	) FGTIS2 on
		FGTIS.FCode = FGTIS2.FCode and
		FGTIS.GCode = FGTIS2.GCode and
		FGTIS.TCode = FGTIS2.TCode and
		FGTIS.ICode = FGTIS2.ICode and
		FGTIS.SCode = FGTIS2.SCode;

--select * from FGTIS;

--select '2.4'
--go