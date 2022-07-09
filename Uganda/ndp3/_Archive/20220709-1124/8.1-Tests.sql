use Uganda;
go

drop table if exists Tests;
go

create table Tests
(
	TestID int identity,
	Category nvarchar(25),
	Name nvarchar(250),
	Result bit,
	constraint PT_Tests primary key (TestID)
);

--print '************************************************************'
--print 'Sum of Budget'
--print '************************************************************'

declare @SumB decimal(18,8)				= (select round(sum(Budget),0) from B);
declare @SumYB decimal(18,8)			= (select round(sum(Budget),0) from YB);
declare @SumPYB decimal(18,8)			= (select round(sum(Budget),0) from PYB);
declare @SumPAYB decimal(18,8)			= (select round(sum(Budget),0) from PAYB);
declare @SumPADYB decimal(18,8)			= (select round(sum(Budget),0) from PADYB);
declare @SumPYRBudget decimal(18,8)		= (select round(sum(Budget),0) from PYR);
declare @SumPAYRBudget decimal(18,8)	= (select round(sum(Budget),0) from PAYR);
declare @SumPADYRBudget decimal(18,8)	= (select round(sum(Budget),0) from PADYR);

insert Tests (Category, Name, Result) values ('Sum of Budget', 'SumYB = SumB', iif(@SumYB = @SumB,1,0));
insert Tests (Category, Name, Result) values ('Sum of Budget', 'SumPYB = SumB', iif(@SumPYB = @SumB,1,0));
insert Tests (Category, Name, Result) values ('Sum of Budget', 'SumPAYB = SumB', iif(@SumPAYB = @SumB,1,0));
insert Tests (Category, Name, Result) values ('Sum of Budget', 'SumPADYB = SumB', iif(@SumPADYB = @SumB,1,0));
insert Tests (Category, Name, Result) values ('Sum of Budget', 'SumPYRBudget = SumB', iif(@SumPYRBudget = @SumB,1,0));
insert Tests (Category, Name, Result) values ('Sum of Budget', 'SumPAYRBudget = SumB', iif(@SumPAYRBudget = @SumB,1,0));
insert Tests (Category, Name, Result) values ('Sum of Budget', 'SumPADYRBudget = SumB', iif(@SumPADYRBudget = @SumB,1,0));

--print '************************************************************'
--print 'YBudget'
--print '************************************************************'

declare @YBudgetCheck int;
select @YBudgetCheck = count(1) from 
	(select YearID, round(Budget,0) [YBudget] from YB) a left join
	(select YearID, round(sum(Budget),0) [YBudget] from PYB group by YearID) b on a.YearID = b.YearID and a.YBudget = b.YBudget left join
	(select YearID, round(sum(Budget),0) [YBudget] from PAYB group by YearID) c on a.YearID = c.YearID and a.YBudget = c.YBudget left join
	(select YearID, round(sum(Budget),0) [YBudget] from PADYB group by YearID) d on a.YearID = d.YearID and a.YBudget = d.YBudget left join
	(select YearID, round(sum(Budget),0) [YBudget] from PYR group by YearID) e on a.YearID = e.YearID and a.YBudget = e.YBudget left join
	(select YearID, round(sum(Budget),0) [YBudget] from PAYR group by YearID) f on a.YearID = f.YearID and a.YBudget = f.YBudget
where b.YBudget is null or c.YBudget is null or d.YBudget is null or e.YBudget is null or f.YBudget is null;
insert Tests (Category, Name, Result) values ('YBudget', 'Sum(Budget) grouped by YearID is equal for all tables.', iif(@YBudgetCheck = 0,1,0));

--print '************************************************************'
--print 'PYBudget'
--print '************************************************************'

declare @PYBudgetCheck int;
select @PYBudgetCheck = count(1) from
	(select ProgrammeID, YearID, round(sum(Budget),0) PYBudget from PYB group by ProgrammeID, YearID) a left join
	(select ProgrammeID, YearID, round(sum(Budget),0) PYBudget from PAYB group by ProgrammeID, YearID) b on a.ProgrammeID = b.ProgrammeID and a.YearID = b.YearID and a.PYBudget = b.PYBudget left join
	(select ProgrammeID, YearID, round(sum(Budget),0) PYBudget from PADYB group by ProgrammeID, YearID) c on a.ProgrammeID = c.ProgrammeID and a.YearID = c.YearID and a.PYBudget = c.PYBudget left join
	(select ProgrammeID, YearID, round(sum(Budget),0) PYBudget from PYR group by ProgrammeID, YearID) d on a.ProgrammeID = d.ProgrammeID and a.YearID = d.YearID and a.PYBudget = d.PYBudget left join
	(select ProgrammeID, YearID, round(sum(Budget),0) PYBudget from PAYR group by ProgrammeID, YearID) e on a.ProgrammeID = e.ProgrammeID and a.YearID = e.YearID and a.PYBudget = e.PYBudget
where b.PYBudget is null or c.PYBudget is null or d.PYBudget is null or e.PYBudget is null;
insert Tests (Category, Name, Result) values ('PYBudget', 'Sum(Budget) grouped by ProgrammeID, YearID is equal for all tables.', iif(@PYBudgetCheck = 0,1,0));

--print '************************************************************'
--print 'PAYBudget'
--print '************************************************************'

declare @PAYBudgetCheck int;
select @PAYBudgetCheck = count(1) from
	(select ProgrammeID, ActorID, YearID, round(sum(Budget),0) PAYBudget from PAYB group by ProgrammeID, ActorID, YearID) a left join
	(select ProgrammeID, ActorID, YearID, round(sum(Budget),0) PAYBudget from PADYB group by ProgrammeID, ActorID, YearID) b on a.ProgrammeID = b.ProgrammeID and a.ActorID = b.ActorID and a.YearID = b.YearID and a.PAYBudget = b.PAYBudget left join
	(select ProgrammeID, ActorID, YearID, round(sum(Budget),0) PAYBudget from PAYR group by ProgrammeID, ActorID, YearID) c on a.ProgrammeID = c.ProgrammeID and a.ActorID = c.ActorID and a.YearID = c.YearID and a.PAYBudget = c.PAYBudget
where b.PAYBudget is null or c.PAYBudget is null;
insert Tests (Category, Name, Result) values ('PAYBudget', 'Sum(Budget) grouped by ProgrammeID, ActorID, YearID is equal for all tables.', iif(@PAYBudgetCheck = 0,1,0));

--print '************************************************************'
--print 'Indicator'
--print '************************************************************'

declare @IndicatorCheck int;
select @IndicatorCheck = count(1) from
	(select distinct ProgrammeID, Reference from P) a full outer join
	(select distinct substring(I.Reference,1,2) ProgrammeReference, IndicatorID from I) b on a.Reference = b.ProgrammeReference full outer join
	(select distinct ProgrammeID, IndicatorID from PYR) c on a.ProgrammeID = c.ProgrammeID and b.IndicatorID = c.IndicatorID full outer join
	(select distinct ProgrammeID, IndicatorID from PAYR) d on a.ProgrammeID = d.ProgrammeID and b.IndicatorID = d.IndicatorID full outer join
	(select distinct ProgrammeID, IndicatorID from PADYR) e on a.ProgrammeID = e.ProgrammeID and b.IndicatorID = e.IndicatorID
where
	a.ProgrammeID is null or b.IndicatorID is null or c.IndicatorID is null or d.IndicatorID is null or e.IndicatorID is null;
insert Tests (Category, Name, Result) values ('Indicator', 'Indicator hierarchy is correct.', iif(@IndicatorCheck = 0,1,0));

--print '************************************************************'
--print 'Performance'
--print '************************************************************'

declare @PerformanceCheck int;
select @PerformanceCheck = count(1) from
	(select distinct YearID, IndicatorID, Performance from PYR) a full join
	(select distinct YearID, IndicatorID, Performance from PAYR) b on a.YearID = b.YearID and a.IndicatorID = b.IndicatorID and a.Performance = b.Performance full join
	(select distinct YearID, IndicatorID, Performance from PADYR) c on a.YearID = b.YearID and a.IndicatorID = b.IndicatorID and a.Performance = c.Performance
where
	a.Performance is null or b.Performance is null or c.Performance is null;
insert Tests (Category, Name, Result) values ('Performance', 'Performance is constant for a given Year, Indicator.', iif(@PerformanceCheck = 0,1,0));

--print '************************************************************'
--print 'Indicator Points'
--print '************************************************************'

declare @IndicatorPointsCheck int;
select @IndicatorPointsCheck = count(1) from
	(select distinct IndicatorID, IndicatorPoints from I) a full join
	(select distinct IndicatorID, IndicatorPoints from YI) b on a.IndicatorID = b.IndicatorID and a.IndicatorPoints = b.IndicatorPoints full join
	(select distinct IndicatorID, IndicatorPoints from PYR) c on a.IndicatorID = c.IndicatorID and a.IndicatorPoints = c.IndicatorPoints full join
	(select distinct IndicatorID, IndicatorPoints from PAYR) d on a.IndicatorID = d.IndicatorID and a.IndicatorPoints = d.IndicatorPoints full join
	(select distinct IndicatorID, IndicatorPoints from PADYR) e on a.IndicatorID = e.IndicatorID and a.IndicatorPoints = e.IndicatorPoints
where
	a.indicatorPoints is null or b.IndicatorPoints is null or c.IndicatorPoints is null or d.IndicatorPoints is null or e.IndicatorPoints is null;
insert Tests (Category, Name, Result) values ('IndicatorPoints', 'IndicatorPoints is constant for a given Indicator.', iif(@IndicatorPointsCheck = 0,1,0));