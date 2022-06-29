use Understanding;
go

declare @SumOfBudget_PY decimal(18,4)	= (select sum(Budget) from PY);
declare @SumOfBudget_PMY decimal(18,4)	= (select sum(Budget) from PMY);
declare @SumOfBudget_PMDY decimal(18,4) = (select sum(Budget) from PMDY);

if @SumOfBudget_PY = @SumOfBudget_PMY
	print 'OK SumOfBudget_PMY'
else 
	print 'NOT OK SumOfBudget_PMY';

if @SumOfBudget_PMY = @SumOfBudget_PMDY
	print 'OK SumOfBudget_PMDY'
else 
	print 'NOT OK SumOfBudget_PMDY';