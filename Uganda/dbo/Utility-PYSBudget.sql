use Uganda;
go

select
	P.Name,
	Y.Name,
	S.Name
from
	P full outer join
	PY on P.ProgrammeID = PY.ProgrammeID full outer join
		Y on PY.YearID = Y.YearID full outer join
	PS on P.ProgrammeID = PS.ProgrammeID full outer join
		S on PS.SectorID = S.SectorID;

select * from PYS;

select * from PYSBudget;