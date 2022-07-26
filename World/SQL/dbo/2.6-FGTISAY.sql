use World;
go

create table FGTISAY
(
	FCode nvarchar(5),
	GCode nvarchar(2),
	TCode nvarchar(5),
	ICode nvarchar(8),
	SCode nvarchar(20),
	ACode nvarchar(5),
	YCode nvarchar(4),
	FGTISAYWeight float,
	FGTISAYCoverage float,
	FGTISAYWeightCoverage as FGTISAYWeight * FGTISAYCoverage,
	constraint PK_FGTISAY primary key (FCode, GCode, TCode, ICode, SCode, ACode, YCode),
	constraint FK_FGTISAY_FGTISA foreign key (FCode, GCode, TCode, ICode, SCode, ACode) references FGTISA (FCode, GCode, TCode, ICode, SCode, ACode),
	constraint FK_FGTISAY_Y foreign key (YCode) references Y (YCode)
);

-- -----------------------------------------------------------------
-- Insert
-- -----------------------------------------------------------------

insert FGTISAY (FCode, GCode, TCode, ICode, SCode, ACode, YCode)
select
	FGTISA.FCode,
	FGTISA.GCode,
	FGTISA.TCode,
	FGTISA.ICode,
	FGTISA.SCode,
	FGTISA.ACode,
	Y.YCode
from
	FGTISA
	cross join Y
order by
	FGTISA.FCode,
	FGTISA.GCode,
	FGTISA.TCode,
	FGTISA.ICode,
	FGTISA.SCode,
	FGTISA.ACode,
	Y.YCode;

-- -----------------------------------------------------------------
-- FGTISAYWeight
-- -----------------------------------------------------------------

update
	FGTISAY
set
	FGTISAY.FGTISAYWeight = FGTISAY2.FGTISAYWeight
from
	FGTISAY join
	(
		select
			FGTISAY.FCode,
			FGTISAY.GCode,
			FGTISAY.TCode,
			FGTISAY.ICode,
			FGTISAY.SCode,
			FGTISAY.ACode,
			FGTISAY.YCode,
			(Y.YPoints / sum(Y.YPoints) over (partition by FGTISAY.FCode, FGTISAY.GCode, FGTISAY.TCode, FGTISAY.ICode, FGTISAY.SCode, FGTISAY.ACode)) * FGTISA.FGTISAWeight [FGTISAYWeight]
		from
			FGTISAY
			join FGTISA on 
				FGTISAY.FCode = FGTISA.FCode and 
				FGTISAY.GCode = FGTISA.GCode and 
				FGTISAY.TCode = FGTISA.TCode and
				FGTISAY.ICode = FGTISA.ICode and
				FGTISAY.SCode = FGTISA.SCode and
				FGTISAY.ACode = FGTISA.ACode
			join Y on
				FGTISAY.YCode = Y.YCode
	) FGTISAY2 on
		FGTISAY.FCode = FGTISAY2.FCode and
		FGTISAY.GCode = FGTISAY2.GCode and
		FGTISAY.TCode = FGTISAY2.TCode and
		FGTISAY.ICode = FGTISAY2.ICode and
		FGTISAY.SCode = FGTISAY2.SCode and
		FGTISAY.ACode = FGTISAY2.ACode and
		FGTISAY.YCode = FGTISAY2.YCode;

--select * from FGTISAY;

select '2.6'
go