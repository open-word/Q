use Uganda;
go

update 
	pkrt
set
	pkrt.Actual					= pkrt.Target * rn.RN_075_125,
	pkrt.Performance			= rn.RN_075_125,				-- i.e. Target * RandomNumber / Target = RandomNumber :)
	pkrt.WeightedPerformance	= pkrt.Weight * rn.RN_075_125
from
	NDP3.ProgrammeKeyResultTargets pkrt
	join NDP3.RandomNumbers rn on pkrt.ProgrammeKeyResultTargetID = rn.RandomNumberID;

--select * from ndp3.ProgrammeKeyResultTargets;

select '06';
go