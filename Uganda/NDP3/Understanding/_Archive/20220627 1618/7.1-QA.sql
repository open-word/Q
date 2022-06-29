use Understanding;
go

print '********************'

declare @SumB decimal(18,4)		= (select sum(Budget) from B);
declare @SumYB decimal(18,4)	= (select sum(Budget) from YB);
declare @SumPYB decimal(18,4)	= (select sum(Budget) from PYB);
declare @SumPMYB decimal(18,4)	= (select sum(Budget) from PMYB);

if @SumYB = @SumB print 'OK SumYB = SumB' else print 'NOT OK SumYB = SumB';
if @SumPYB = @SumB print 'OK SumPYB = SumB' else print 'NOT OK SumPYB = SumB';
if @SumPMYB = @SumB print 'OK SumPMYB = SumB' else print 'NOT OK SumPMYB = SumB';

print '********************'

-- YBudget
declare @YBudgetCheck int;
select @YBudgetCheck = count(1) from 
	(select YearID, Budget [YBudget] from YB) a left join
	(select YearID, sum(Budget) [YBudget] from PYB group by YearID) b on a.YearID = b.YearID and a.YBudget = b.YBudget left join
	(select YearID, sum(Budget) [YBudget] from PMYB group by YearID) c on a.YearID = c.YearID and a.YBudget = c.YBudget left join
	(select YearID, sum(Budget) [YBudget] from PMDYB group by YearID) d on a.YearID = d.YearID --and a.YBudget = d.YBudget
where b.YBudget is null or c.YBudget is null or d.YBudget is null;

-- PYBudget
declare @PYBudgetCheck int;
select @PYBudgetCheck = count(1) from
	(select ProgrammeID, YearID, sum(Budget) PYBudget from PYB group by ProgrammeID, YearID) a left join
	(select ProgrammeID, YearID, sum(Budget) PYBudget from PMYB group by ProgrammeID, YearID) b on a.ProgrammeID = b.ProgrammeID and a.YearID = b.YearID and a.PYBudget = b.PYBudget left join
	(select ProgrammeID, YearID, sum(Budget) PYBudget from PMDYB group by ProgrammeID, YearID) c on a.ProgrammeID = c.ProgrammeID and a.YearID = c.YearID and a.PYBudget = c.PYBudget
where b.PYBudget is null or c.PYBudget is null;

-- PMYBudget
declare @PMYBudgetCheck int;
select @PMYBudgetCheck = count(1) from
	(select ProgrammeID, MinistryID, YearID, sum(Budget) PMYBudget from PMYB group by ProgrammeID, MinistryID, YearID) a left join
	(select ProgrammeID, MinistryID, YearID, sum(Budget) PMYBudget from PMDYB group by ProgrammeID, MinistryID, YearID) b on a.ProgrammeID = b.ProgrammeID and a.MinistryID = b.MinistryID and a.YearID = b.YearID and a.PMYBudget = b.PMYBudget
where b.PMYBudget is null;

if @YBudgetCheck = 0 print 'OK YBudgetCheck' else print 'NOT OK YBudgetCheck';
if @PYBudgetCheck = 0 print 'OK PYBudgetCheck' else print 'NOT OK PYBudgetCheck';
if @PMYBudgetCheck = 0 print 'OK PMYBudgetCheck' else print 'NOT OK PMYBudgetCheck';

print '********************'