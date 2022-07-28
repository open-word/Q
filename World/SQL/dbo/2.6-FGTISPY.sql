use World;
go

create table FGTISPY
(
	FCode nvarchar(5),
	GCode nvarchar(2),
	TCode nvarchar(5),
	ICode nvarchar(8),
	SCode nvarchar(20),
	PCode nvarchar(5),
	YCode nvarchar(4),
	FGTISPYWeight float,
	FGTISPYCoverage float,
	FGTISPYWeightCoverage as FGTISPYWeight * FGTISPYCoverage,
	constraint PK_FGTISPY primary key (FCode, GCode, TCode, ICode, SCode, PCode, YCode),
	constraint FK_FGTISPY_FGTISP foreign key (FCode, GCode, TCode, ICode, SCode, PCode) references FGTISP (FCode, GCode, TCode, ICode, SCode, PCode),
	constraint FK_FGTISPY_Y foreign key (YCode) references Y (YCode)
);

-- -----------------------------------------------------------------
-- Insert
-- -----------------------------------------------------------------

insert FGTISPY (FCode, GCode, TCode, ICode, SCode, PCode, YCode)
select
	FGTISP.FCode,
	FGTISP.GCode,
	FGTISP.TCode,
	FGTISP.ICode,
	FGTISP.SCode,
	FGTISP.PCode,
	Y.YCode
from
	FGTISP
	cross join Y
order by
	FGTISP.FCode,
	FGTISP.GCode,
	FGTISP.TCode,
	FGTISP.ICode,
	FGTISP.SCode,
	FGTISP.PCode,
	Y.YCode;

-- -----------------------------------------------------------------
-- FGTISPYWeight
-- -----------------------------------------------------------------

update
	FGTISPY
set
	FGTISPY.FGTISPYWeight = FGTISPY2.FGTISPYWeight
from
	FGTISPY join
	(
		select
			FGTISPY.FCode,
			FGTISPY.GCode,
			FGTISPY.TCode,
			FGTISPY.ICode,
			FGTISPY.SCode,
			FGTISPY.PCode,
			FGTISPY.YCode,
			(Y.YPoints / sum(Y.YPoints) over (partition by FGTISPY.FCode, FGTISPY.GCode, FGTISPY.TCode, FGTISPY.ICode, FGTISPY.SCode, FGTISPY.PCode)) * FGTISP.FGTISPWeight [FGTISPYWeight]
		from
			FGTISPY
			join FGTISP on 
				FGTISPY.FCode = FGTISP.FCode and 
				FGTISPY.GCode = FGTISP.GCode and 
				FGTISPY.TCode = FGTISP.TCode and
				FGTISPY.ICode = FGTISP.ICode and
				FGTISPY.SCode = FGTISP.SCode and
				FGTISPY.PCode = FGTISP.PCode
			join Y on
				FGTISPY.YCode = Y.YCode
	) FGTISPY2 on
		FGTISPY.FCode = FGTISPY2.FCode and
		FGTISPY.GCode = FGTISPY2.GCode and
		FGTISPY.TCode = FGTISPY2.TCode and
		FGTISPY.ICode = FGTISPY2.ICode and
		FGTISPY.SCode = FGTISPY2.SCode and
		FGTISPY.PCode = FGTISPY2.PCode and
		FGTISPY.YCode = FGTISPY2.YCode;

--select * from FGTISPY;

select '2.6'
go