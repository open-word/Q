use Understanding;
go

print '********************'

-- --------------------------------------------------------------------------------
-- Q
-- --------------------------------------------------------------------------------

declare @QFromPYR table (Q decimal(18,4));
declare @QFromPMYR table (Q decimal(18,4));
declare @QFromPMDYR table (Q decimal(18,4));

insert @QFromPYR
select
	convert(decimal(18,4), sum(WeightedPerformance)/sum(Budget)) Q
from
	PYR;

insert @QFromPMYR
select
	convert(decimal(18,4), sum(WeightedPerformance)/sum(Budget)) Q
from
	PMYR;

insert @QFromPMDYR
select
	convert(decimal(18,4), sum(WeightedPerformance)/sum(Budget)) Q
from
	PMDYR;

declare @QFromPYR_Count decimal(18,4) = (select count(1) from @QFromPYR);	
declare @QFromPMYR_Count decimal(18,4) = (select count(1) from @QFromPMYR);
declare @QFromPMDYR_Count decimal(18,4) = (select count(1) from @QFromPMDYR);

if @QFromPMYR_Count = @QFromPYR_Count print 'OK QFromPMYR_Count = QFromPYR_Count' else print 'NOT OK QFromPMYR_Count = QFromPYR_Count';
if @QFromPMDYR_Count = @QFromPYR_Count print 'OK QFromPMDYR_Count = QFromPYR_Count' else print 'NOT OK QFromPMDYR_Count = QFromPYR_Count';

declare @Q_Check int;
select @Q_Check = count(1) from
	@QFromPYR a left join
	@QFromPMYR b on a.Q = b.Q left join
	@QFromPMDYR c on a.Q = c.Q
where b.Q is null or c.Q is null;

if @Q_Check = 0 print 'OK Q_Check' else print 'NOT OK Q_Check';

-- --------------------------------------------------------------------------------
-- YQ
-- --------------------------------------------------------------------------------

declare @YQFromPYR table (YearID int, Q decimal(18,4));
declare @YQFromPMYR table (YearID int, Q decimal(18,4));
declare @YQFromPMDYR table (YearID int, Q decimal(18,4));

insert @YQFromPYR
select distinct
	YearID,
	convert(decimal(18,4), sum(WeightedPerformance)/sum(Budget)) YQ
from
	PYR
group by
	ProgrammeID,
	YearID;

insert @YQFromPMYR
select distinct
	YearID,
	convert(decimal(18,4), sum(WeightedPerformance)/sum(Budget)) Q
from
	PMYR
group by
	ProgrammeID,
	YearID;

insert @YQFromPMDYR
select distinct
	YearID,
	convert(decimal(18,4), sum(WeightedPerformance)/sum(Budget)) Q
from
	PMDYR
group by
	ProgrammeID,
	YearID;

declare @YQFromPYR_Count decimal(18,4) = (select count(1) from @YQFromPYR);	
declare @YQFromPMYR_Count decimal(18,4) = (select count(1) from @YQFromPMYR);
declare @YQFromPMDYR_Count decimal(18,4) = (select count(1) from @YQFromPMDYR);

if @YQFromPMYR_Count = @YQFromPYR_Count print 'OK YQFromPMYR_Count = YQFromPYR_Count' else print 'NOT OK YQFromPMYR_Count = YQFromPYR_Count';
if @YQFromPMDYR_Count = @YQFromPYR_Count print 'OK YQFromPMDYR_Count = YQFromPYR_Count' else print 'NOT OK YQFromPMDYR_Count = YQFromPYR_Count';

declare @YQ_Check int;
select @YQ_Check = count(1) from
	@YQFromPYR a left join
	@YQFromPMYR b on a.YearID = b.YearID and a.Q = b.Q left join
	@YQFromPMDYR c on a.YearID = c.YearID and a.Q = c.Q
where b.Q is null or c.Q is null;

if @YQ_Check = 0 print 'OK YQ_Check' else print 'NOT OK YQ_Check';

-- --------------------------------------------------------------------------------
-- PYQ
-- --------------------------------------------------------------------------------

declare @PYQFromPYR table (ProgrammeID nvarchar(25), YearID int, Q decimal(18,4));
declare @PYQFromPMYR table (ProgrammeID nvarchar(25), YearID int, Q decimal(18,4));
declare @PYQFromPMDYR table (ProgrammeID nvarchar(25), YearID int, Q decimal(18,4));

insert @PYQFromPYR
select distinct
	ProgrammeID,
	YearID,
	convert(decimal(18,4), sum(WeightedPerformance)/sum(Budget)) Q
from
	PYR
group by
	ProgrammeID,
	YearID;

insert @PYQFromPMYR
select distinct
	ProgrammeID,
	YearID,
	convert(decimal(18,4), sum(WeightedPerformance)/sum(Budget)) Q
from
	PMYR
group by
	ProgrammeID,
	YearID;

insert @PYQFromPMDYR
select distinct
	ProgrammeID,
	YearID,
	convert(decimal(18,4), sum(WeightedPerformance)/sum(Budget)) Q
from
	PMDYR
group by
	ProgrammeID,
	YearID;

declare @PYQFromPYR_Count decimal(18,4) = (select count(1) from @PYQFromPYR);	
declare @PYQFromPMYR_Count decimal(18,4) = (select count(1) from @PYQFromPMYR);
declare @PYQFromPMDYR_Count decimal(18,4) = (select count(1) from @PYQFromPMDYR);

if @PYQFromPMYR_Count = @PYQFromPYR_Count print 'OK PYQFromPMYR_Count = PYQFromPYR_Count' else print 'NOT OK PYQFromPMYR_Count = PYQFromPYR_Count';
if @PYQFromPMDYR_Count = @PYQFromPYR_Count print 'OK PYQFromPMDYR_Count = PYQFromPYR_Count' else print 'NOT OK PYQFromPMDYR_Count = PYQFromPYR_Count';

declare @PYQ_Check int;
select @PYQ_Check = count(1) from
	@PYQFromPYR a left join
	@PYQFromPMYR b on a.ProgrammeID = b.ProgrammeID and a.YearID = b.YearID and a.Q = b.Q left join
	@PYQFromPMDYR c on a.ProgrammeID = c.ProgrammeID and a.YearID = c.YearID and a.Q = c.Q
where b.Q is null or c.Q is null;

if @PYQ_Check = 0 print 'OK PYQ_Check' else print 'NOT OK PYQ_Check';

-- --------------------------------------------------------------------------------
-- PMYQ
-- --------------------------------------------------------------------------------

declare @PMYQFromPMYR table (ProgrammeID nvarchar(25), MinistryID nvarchar(25), YearID int, Q decimal(18,4));
declare @PMYQFromPMDYR table (ProgrammeID nvarchar(25), MinistryID nvarchar(25), YearID int, Q decimal(18,4));

insert @PMYQFromPMYR
select
	ProgrammeID,
	MinistryID,
	YearID,
	convert(decimal(18,4), sum(WeightedPerformance)/sum(Budget)) Q
from
	PMYR
group by
	ProgrammeID,
	MinistryID,
	YearID;

insert @PMYQFromPMDYR
select
	ProgrammeID,
	MinistryID,
	YearID,
	convert(decimal(18,4), sum(WeightedPerformance)/sum(Budget)) Q
from
	PMDYR
group by
	ProgrammeID,
	MinistryID,
	YearID;
	
declare @PMYQFromPMYR_Count decimal(18,4) = (select count(1) from @PMYQFromPMYR);
declare @PMYQFromPMDYR_Count decimal(18,4) = (select count(1) from @PMYQFromPMDYR);

if @PMYQFromPMDYR_Count = @PMYQFromPMYR_Count print 'OK PMYQFromPMDYR_Count = PMYQFromPMYR_Count' else print 'NOT OK PMYQFromPMDYR_Count = PMYQFromPMYR_Count';

declare @PMYQ_Check int;
select @PMYQ_Check = count(1) from
	@PMYQFromPMYR a left join
	@PMYQFromPMDYR b on a.ProgrammeID = b.ProgrammeID and a.MinistryID = b.MinistryID and a.YearID = b.YearID and a.Q = b.Q
where b.Q is null;

if @PMYQ_Check = 0 print 'OK PMYQ_Check' else print 'NOT OK PMYQ_Check';