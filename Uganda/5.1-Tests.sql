use Uganda;
go

drop table if exists Tests;
go

create table Tests
(
	TestID int identity,
	Name nvarchar(30),
	Result nchar(4),
	constraint PK_Tests primary key (TestID)
);

-- Performance
declare @PerformanceTest bit;
select @PerformanceTest = count(1) from
	(select YearID, IndicatorID, Performance from PYI) a 
		full outer join
	(select YearID, IndicatorID, Performance from PYIA) b 
		on a.YearID = b.YearID and a.IndicatorID = b.IndicatorID and a.Performance = b.Performance
where
	a.Performance is null or b.Performance is null;
insert Tests (Name, Result) values ('PerformanceTest', iif(@PerformanceTest=0,'Pass','Fail'));

-- PYBudget
declare @PYBudgetTest bit;
select @PYBudgetTest = count(1) from
	(select ProgrammeID, YearID, sum(Budget) [PYBudget] from PY group by ProgrammeID, YearID) a 
		full outer join
	(select ProgrammeID, YearID, sum(Budget) [PYBudget] from PYI group by ProgrammeID, YearID) b 
		on a.ProgrammeID = b.ProgrammeID and a.YearID = b.YearID and a.PYBudget = b.PYBudget 
		full outer join
	(select ProgrammeID, YearID, sum(Budget) [PYBudget] from PYIA group by ProgrammeID, YearID) c 
		on a.ProgrammeID = c.ProgrammeID and a.YearID = c.YearID and a.PYBudget = c.PYBudget
where
	a.PYBudget is null or b.PYBudget is null or c.PYBudget is null;
insert Tests (Name, Result) values ('PYBudgetTest', iif(@PYBudgetTest=0,'Pass','Fail'));

-- PYIBudget
declare @PYIBudgetTest bit;
select @PYIBudgetTest = count(1) from
	(select ProgrammeID, YearID, IndicatorID, sum(Budget) [PYIBudget] from PYI group by ProgrammeID, YearID, IndicatorID) a 
		full outer join
	(select ProgrammeID, YearID, IndicatorID, sum(Budget) [PYIBudget] from PYIA group by ProgrammeID, YearID, IndicatorID) b 
		on a.ProgrammeID = b.ProgrammeID and a.YearID = b.YearID and a.IndicatorID = b.IndicatorID and a.PYIBudget = b.PYIBudget
where
	a.PYIBudget is null or b.PYIBudget is null;
insert Tests (Name, Result) values ('PYIBudgetTest', iif(@PYIBudgetTest=0,'Pass','Fail'));

-- PYIWeightedPerformance
declare @PYIWeightedPerformanceTest bit;
select @PYIWeightedPerformanceTest = count(1) from
	(select ProgrammeID, YearID, IndicatorID, sum(WeightedPerformance) [PYIWeightedPerformance] from PYI group by ProgrammeID, YearID, IndicatorID) a 
		full outer join
	(select ProgrammeID, YearID, IndicatorID, sum(WeightedPerformance) [PYIWeightedPerformance] from PYIA group by ProgrammeID, YearID, IndicatorID) b 
		on a.ProgrammeID = b.ProgrammeID and a.YearID = b.YearID and a.IndicatorID = b.IndicatorID and a.PYIWeightedPerformance = b.PYIWeightedPerformance
where
	a.PYIWeightedPerformance is null or b.PYIWeightedPerformance is null;
insert Tests (Name, Result) values ('PYIWeightedPerformanceTest', iif(@PYIWeightedPerformanceTest=0,'Pass','Fail'));

-- Q
declare @QTest bit;
select @QTest = count(1) from
	(select ProgrammeID, YearID, IndicatorID, sum(WeightedPerformance)/sum(Budget) [Q] from PYI group by ProgrammeID, YearID, IndicatorID) a 
		full outer join
	(select ProgrammeID, YearID, IndicatorID, sum(WeightedPerformance)/sum(Budget) [Q] from PYIA group by ProgrammeID, YearID, IndicatorID) b 
		on a.ProgrammeID = b.ProgrammeID and a.YearID = b.YearID and a.IndicatorID = b.IndicatorID and a.Q = b.Q
where
	a.Q is null or b.Q is null;
insert Tests (Name, Result) values ('QTest', iif(@QTest=0,'Pass','Fail'));

select * from Tests;