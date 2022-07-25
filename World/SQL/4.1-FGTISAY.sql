use World;
go

update 
	FGTISAY
set 
	FGTISAY.FGTISAYCoverage = iif(R.FCode is null, 0, 1)
from
	FGTISAY
	left join R on
		FGTISAY.FCode = R.FCode and
		FGTISAY.GCode = R.GCode and
		FGTISAY.TCode = R.TCode and
		FGTISAY.ICode = R.ICode and
		FGTISAY.SCode = R.SCode and
		FGTISAY.ACode = R.ACode and
		FGTISAY.YCode = R.YCode;

--select * from FGTISAY

select '4.1';
go