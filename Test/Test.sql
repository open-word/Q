use Test;
go

update PYIA
set
	PYIA.Budget = t.PYIABudget
from
	PYIA join
	(
		select
			PYIA.*,
			sum(BudgetPoints) over(partition by PYIA.ProgrammeID, PYIA.YearID, PYIA.IndicatorID, PYIA.ActorID) 
			/
			sum(BudgetPoints) over(partition by PYIA.ProgrammeID, PYIA.YearID, PYIA.SectorID) 
			* 
			PYSBudget [PYIABudget]
		from 
			PY join PYIA on PY.ProgrammeID = PYIA.ProgrammeID and PY.YearID = PYIA.YearID and PY.SectorID = PYIA.SectorID
	) t on 
	PYIA.ProgrammeID = t.ProgrammeID and
	PYIA.YearID = t.YearID and
	PYIA.IndicatorID = t.IndicatorID and
	PYIA.ActorID = t.ActorID;

select 
	PYIA.ProgrammeID,
	PYIA.YearID,
	PYIA.SectorID,
	PYIA.IndicatorID,
	PYIA.ActorID,
	PY.PYSBudget,
	PYIA.BudgetPoints,
	PYIA.Budget
from 
	PY join PYIA on PY.ProgrammeID = PYIA.ProgrammeID and PY.YearID = PYIA.YearID and PY.SectorID = PYIA.SectorID
order by 
	PYIA.ProgrammeID, 
	PYIA.YearID, 
	PYIA.SectorID, 
	PYIA.IndicatorID, 
	PYIA.ActorID;

