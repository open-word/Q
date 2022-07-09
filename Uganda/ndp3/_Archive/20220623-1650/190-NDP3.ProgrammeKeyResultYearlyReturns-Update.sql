use Uganda;
go

-- Allocate each ProgrammeYearBudget equally to the ProgrammeKeyResultYearlyTargets for that Programme and Year. 
update
	pkryt
set
	pkryt.Weight = t.[BudgetPerProgrammeKeyResultYearlyTarget]
from
	NDP3.ProgrammeKeyResults pkr 
	join NDP3.ProgrammeKeyResultYearlyTargets pkryt on pkr.ProgrammeKeyResultID = pkryt.ProgrammeKeyResultID
	join
	(
		select
			pkr.ProgrammeID,
			pyb.YearName,
			pyb.Budget,
			count(pkryt2.ProgrammeKeyResultYearlyTargetID) [CountOfProgrammeKeyResultYearlyTargets],
			convert(decimal(14,4),pyb.Budget / count(pkryt2.ProgrammeKeyResultYearlyTargetID)) [BudgetPerProgrammeKeyResultYearlyTarget]
		from
			NDP3.ProgrammeKeyResults pkr
			join NDP3.ProgrammeYearlyBudgets pyb on pkr.ProgrammeID = pyb.ProgrammeID
			join NDP3.ProgrammeKeyResultYearlyTargets pkryt2 on pkr.ProgrammeKeyResultID = pkryt2.ProgrammeKeyResultID and pyb.YearName = pkryt2.YearName
		group by
			pkr.ProgrammeID,
			pyb.YearName,
			pyb.Budget
		--order by
		--	pkr.ProgrammeID,
		--	pyb.YearName,
		--	pyb.Budget
	) t on pkr.ProgrammeID = t.ProgrammeID and pkryt.YearName = t.YearName;

--select
--	pkr.ProgrammeID,
--	pkryt.YearName,
--	pkr.NDP3Reference,
--	pkryt.*
--from 
--	NDP3.ProgrammeKeyResults pkr
--	join NDP3.ProgrammeKeyResultYearlyTargets pkryt on pkr.ProgrammeKeyResultID = pkryt.ProgrammeKeyResultID
--order by
--	pkr.ProgrammeID,
--	pkryt.YearName,
--	pkr.NDP3Reference;

--select sum(Budget) from NDP3.ProgrammeYearlyBudgets;
--select sum(Weight) from NDP3.ProgrammeKeyResultYearlyTargets;


update
	pkryt
set
	pkryt.Actual				= pkryt.Target * rn.RN_075_125,
	pkryt.Performance			= rn.RN_075_125,				-- i.e. Target * RandomNumber / Target = RandomNumber :)
	pkryt.WeightedPerformance	= pkryt.Weight * rn.RN_075_125
from
	NDP3.ProgrammeKeyResultYearlyTargets pkryt
	join NDP3.RandomNumbers rn on pkryt.ProgrammeKeyResultYearlyTargetID = rn.RandomNumberID;

--select * from ndp3.ProgrammeKeyResultYearlyTargets;

select '190';
go