use Understanding;
go

print '********************'

declare @SumB decimal(18,4)				= (select sum(Budget) from B);
declare @SumYB decimal(18,4)			= (select sum(Budget) from YB);
declare @SumPYB decimal(18,4)			= (select sum(Budget) from PYB);
declare @SumPMYB decimal(18,4)			= (select sum(Budget) from PMYB);
declare @SumPMDYB decimal(18,4)			= (select sum(Budget) from PMDYB);
declare @SumPYRBudget decimal(18,4)		= (select sum(Budget) from PYR);
declare @SumPMYRBudget decimal(18,4)	= (select sum(Budget) from PMYR);
declare @SumPMDYRBudget decimal(18,4)	= (select sum(Budget) from PMDYR);

if @SumYB = @SumB print 'OK SumYB = SumB' else print 'NOT OK SumYB = SumB';
if @SumPYB = @SumB print 'OK SumPYB = SumB' else print 'NOT OK SumPYB = SumB';
if @SumPMYB = @SumB print 'OK SumPMYB = SumB' else print 'NOT OK SumPMYB = SumB';
if @SumPMDYB = @SumB print 'OK SumPMDYB = SumB' else print 'NOT OK SumPMDYB = SumB';
if @SumPYRBudget = @SumB print 'OK SumPYRBudget = SumB' else print 'NOT OK @SumPYRBudget = SumB';
if @SumPMYRBudget = @SumB print 'OK SumPMYRBudget = SumB' else print 'NOT OK @SumPMYRBudget = SumB';
if @SumPMDYRBudget = @SumB print 'OK SumPMDYRBudget = SumB' else print 'NOT OK @SumPMDYRBudget = SumB';

-- YBudget
declare @YBudgetCheck int;
select @YBudgetCheck = count(1) from 
	(select YearID, Budget [YBudget] from YB) a left join
	(select YearID, sum(Budget) [YBudget] from PYB group by YearID) b on a.YearID = b.YearID and a.YBudget = b.YBudget left join
	(select YearID, sum(Budget) [YBudget] from PMYB group by YearID) c on a.YearID = c.YearID and a.YBudget = c.YBudget left join
	(select YearID, sum(Budget) [YBudget] from PMDYB group by YearID) d on a.YearID = d.YearID and a.YBudget = d.YBudget left join
	(select YearID, sum(Budget) [YBudget] from PYR group by YearID) e on a.YearID = e.YearID and a.YBudget = e.YBudget left join
	(select YearID, sum(Budget) [YBudget] from PMYR group by YearID) f on a.YearID = f.YearID and a.YBudget = f.YBudget
where b.YBudget is null or c.YBudget is null or d.YBudget is null or e.YBudget is null or f.YBudget is null;

-- PYBudget
declare @PYBudgetCheck int;
select @PYBudgetCheck = count(1) from
	(select ProgrammeID, YearID, sum(Budget) PYBudget from PYB group by ProgrammeID, YearID) a left join
	(select ProgrammeID, YearID, sum(Budget) PYBudget from PMYB group by ProgrammeID, YearID) b on a.ProgrammeID = b.ProgrammeID and a.YearID = b.YearID and a.PYBudget = b.PYBudget left join
	(select ProgrammeID, YearID, sum(Budget) PYBudget from PMDYB group by ProgrammeID, YearID) c on a.ProgrammeID = c.ProgrammeID and a.YearID = c.YearID and a.PYBudget = c.PYBudget left join
	(select ProgrammeID, YearID, sum(Budget) PYBudget from PYR group by ProgrammeID, YearID) d on a.ProgrammeID = d.ProgrammeID and a.YearID = d.YearID and a.PYBudget = d.PYBudget left join
	(select ProgrammeID, YearID, sum(Budget) PYBudget from PMYR group by ProgrammeID, YearID) e on a.ProgrammeID = e.ProgrammeID and a.YearID = e.YearID and a.PYBudget = e.PYBudget
where b.PYBudget is null or c.PYBudget is null or d.PYBudget is null or e.PYBudget is null;

-- PMYBudget
declare @PMYBudgetCheck int;
select @PMYBudgetCheck = count(1) from
	(select ProgrammeID, MinistryID, YearID, sum(Budget) PMYBudget from PMYB group by ProgrammeID, MinistryID, YearID) a left join
	(select ProgrammeID, MinistryID, YearID, sum(Budget) PMYBudget from PMDYB group by ProgrammeID, MinistryID, YearID) b on a.ProgrammeID = b.ProgrammeID and a.MinistryID = b.MinistryID and a.YearID = b.YearID and a.PMYBudget = b.PMYBudget left join
	(select ProgrammeID, MinistryID, YearID, sum(Budget) PMYBudget from PMYR group by ProgrammeID, MinistryID, YearID) c on a.ProgrammeID = c.ProgrammeID and a.MinistryID = c.MinistryID and a.YearID = c.YearID and a.PMYBudget = c.PMYBudget
where b.PMYBudget is null or c.PMYBudget is null;

if @YBudgetCheck = 0 print 'OK YBudgetCheck' else print 'NOT OK YBudgetCheck';
if @PYBudgetCheck = 0 print 'OK PYBudgetCheck' else print 'NOT OK PYBudgetCheck';
if @PMYBudgetCheck = 0 print 'OK PMYBudgetCheck' else print 'NOT OK PMYBudgetCheck';

print '********************'

declare @CountPYIndicator int = (select count(distinct concat(ProgrammeID,'|',YearID,'|',IndicatorID)) from PYR);
declare @CountPMYIndicator int = (select count(distinct concat(ProgrammeID,'|',YearID,'|',IndicatorID)) from PMYR);
declare @CountPMDYIndicator int = (select count(distinct concat(ProgrammeID,'|',YearID,'|',IndicatorID)) from PMDYR);

if @CountPMYIndicator = @CountPYIndicator print 'OK CountPMYIndicator = CountPYIndicator' else print 'NOT OK CountPMYIndicator = CountPYIndicator';
if @CountPMDYIndicator = @CountPYIndicator print 'OK CountPMDYIndicator = CountPYIndicator' else print 'NOT OK CountPMDYIndicator = CountPYIndicator';

declare @IndicatorCheck int;
select @IndicatorCheck = count(1) from
	PYR a left join
	PMYR b on a.ProgrammeID = b.ProgrammeID and a.YearID = b.YearID and a.IndicatorID = b.IndicatorID left join
	PMDYR c on a.ProgrammeID = b.ProgrammeID and a.YearID = c.YearID and a.IndicatorID = c.IndicatorID
where b.IndicatorID is null or c.IndicatorID is null;

if @IndicatorCheck = 0 print 'OK IndicatorCheck' else print 'NOT OK IndicatorCheck';

print '********************'

-- Performance is constant for a given Programme, Year, Indicator.

declare @PerformanceCheck int;
select @PerformanceCheck = count(1) from
	PYR a left join
	PMYR b on a.ProgrammeID = b.ProgrammeID and a.YearID = b.YearID and a.IndicatorID = b.IndicatorID and a.Performance = b.Performance left join
	PMDYR c on a.ProgrammeID = c.ProgrammeID and a.YearID = c.YearID and a.IndicatorID = c.IndicatorID and a.Performance = c.Performance
where
	b.Performance is null or c.Performance is null;

if @PerformanceCheck = 0 print 'OK PerformanceCheck' else print 'NOT OK PerformanceCheck';

print '********************'

-- IndicatorPoints is constant for a given Indicator.

declare @IndicatorPointsCheck int;
select @IndicatorPointsCheck = count(1) from
	I a left join
	YI b on a.IndicatorID = b.IndicatorID and a.IndicatorPoints = b.IndicatorPoints left join
	PYR c on a.IndicatorID = c.IndicatorID and a.IndicatorPoints = c.IndicatorPoints left join
	PMYR d on a.IndicatorID = d.IndicatorID and a.IndicatorPoints = d.IndicatorPoints left join
	PMDYR e on a.IndicatorID = e.IndicatorID and a.IndicatorPoints = e.IndicatorPoints
where
	b.IndicatorPoints is null or c.IndicatorPoints is null or d.IndicatorPoints is null or e.IndicatorPoints is null;

if @IndicatorPointsCheck = 0 print 'OK IndicatorPointsCheck' else print 'NOT OK IndicatorPointsCheck';