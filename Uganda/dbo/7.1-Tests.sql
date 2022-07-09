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
	(select ProgrammeID, YearID, IndicatorID, Performance from PYIPerformance) a 
		full outer join
	(select ProgrammeID, YearID, IndicatorID, Performance from PYIASBudgetPerformance) b 
		on a.ProgrammeID = b.ProgrammeID and a.YearID = b.YearID and a.IndicatorID = b.IndicatorID and a.Performance = b.Performance
where
	a.Performance is null or b.Performance is null;
insert Tests (Name, Result) values ('PerformanceTest', iif(@PerformanceTest=0,'Pass','Fail'));

-- Budget
declare @BudgetTest bit;
select @BudgetTest = count(1) from
	(select ProgrammeID, YearID, SectorID, convert(decimal(18,4),Budget) [PYSBudget] from PYSBudget) a 
		full outer join
	(select ProgrammeID, YearID, SectorID, convert(decimal(18,4),sum(Budget)) [PYSBudget] from PYIASBudgetPerformance group by ProgrammeID, YearID, SectorID) b 
		on a.ProgrammeID = b.ProgrammeID and a.YearID = b.YearID and a.SectorID = b.SectorID and a.PYSBudget = b.PYSBudget 
where
	a.PYSBudget is null or b.PYSBudget is null;
insert Tests (Name, Result) values ('BudgetTest', iif(@BudgetTest=0,'Pass','Fail'));

select * from Tests;

select '7.1'
go