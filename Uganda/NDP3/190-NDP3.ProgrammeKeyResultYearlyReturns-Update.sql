use Uganda;
go

-- Allocate each ProgrammeYearBudget equally to the ProgrammeKeyResultYearlyReturns for that Programme and Year. 
update
	pkryr
set
	pkryr.Weight = t.[BudgetPerProgrammeKeyResultYearlyReturn]
from
	NDP3.ProgrammeKeyResults pkr 
	join NDP3.ProgrammeKeyResultYearlyReturns pkryr on pkr.ProgrammeKeyResultID = pkryr.ProgrammeKeyResultID
	join
	(
		select
			pkr.ProgrammeID,
			pyb.YearName,
			pyb.Budget,
			count(pkryr2.ProgrammeKeyResultYearlyReturnID) [CountOfProgrammeKeyResultYearlyReturns],
			convert(decimal(14,4),pyb.Budget / count(pkryr2.ProgrammeKeyResultYearlyReturnID)) [BudgetPerProgrammeKeyResultYearlyReturn]
		from
			NDP3.ProgrammeKeyResults pkr
			join NDP3.ProgrammeYearlyBudgets pyb on pkr.ProgrammeID = pyb.ProgrammeID
			join NDP3.ProgrammeKeyResultYearlyReturns pkryr2 on pkr.ProgrammeKeyResultID = pkryr2.ProgrammeKeyResultID and pyb.YearName = pkryr2.YearName
		group by
			pkr.ProgrammeID,
			pyb.YearName,
			pyb.Budget
		--order by
		--	pkr.ProgrammeID,
		--	pyb.YearName,
		--	pyb.Budget
	) t on pkr.ProgrammeID = t.ProgrammeID and pkryr.YearName = t.YearName;

--select
--	pkr.ProgrammeID,
--	pkryr.YearName,
--	pkr.NDP3Reference,
--	pkryr.*
--from 
--	NDP3.ProgrammeKeyResults pkr
--	join NDP3.ProgrammeKeyResultYearlyReturns pkryr on pkr.ProgrammeKeyResultID = pkryr.ProgrammeKeyResultID
--order by
--	pkr.ProgrammeID,
--	pkryr.YearName,
--	pkr.NDP3Reference;

--select sum(Budget) from NDP3.ProgrammeYearlyBudgets;
--select sum(Weight) from NDP3.ProgrammeKeyResultYearlyReturns;


update
	pkryr
set
	pkryr.Actual				= pkryr.Target * rn.RN_075_125,
	pkryr.Performance			= rn.RN_075_125,				-- i.e. Target * RandomNumber / Target = RandomNumber :)
	pkryr.WeightedPerformance	= pkryr.Weight * rn.RN_075_125
from
	NDP3.ProgrammeKeyResultYearlyReturns pkryr
	join NDP3.RandomNumbers rn on pkryr.ProgrammeKeyResultYearlyReturnID = rn.RandomNumberID;

--select * from ndp3.ProgrammeKeyResultYearlyReturns;

select '190';
go