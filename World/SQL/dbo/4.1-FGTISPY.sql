use World;
go

update 
	FGTISPY
set 
	FGTISPY.FGTISPYCoverage = iif(R.FCode is null, 0, 1)
from
	FGTISPY
	left join R on
		FGTISPY.FCode = R.FCode and
		FGTISPY.GCode = R.GCode and
		FGTISPY.TCode = R.TCode and
		FGTISPY.ICode = R.ICode and
		FGTISPY.SCode = R.SCode and
		FGTISPY.PCode = R.PCode and
		FGTISPY.YCode = R.YCode;

--select * from FGTISPY

select '4.1';
go