use Uganda;
go

--print '************************************************************'
--print 'Q'
--print '************************************************************'

--declare @QFromPYR table (Q decimal(18,4));
--declare @QFromPAYR table (Q decimal(18,4));
--declare @QFromPADYR table (Q decimal(18,4));

--insert @QFromPYR
--select
--	convert(decimal(18,4), sum(WeightedPerformance)/sum(Budget)) Q
--from
--	PYR;

--insert @QFromPAYR
--select
--	convert(decimal(18,4), sum(WeightedPerformance)/sum(Budget)) Q
--from
--	PAYR;

--insert @QFromPADYR
--select
--	convert(decimal(18,4), sum(WeightedPerformance)/sum(Budget)) Q
--from
--	PADYR;

--declare @QFromPYR_Count decimal(18,4) = (select count(1) from @QFromPYR);	
--declare @QFromPAYR_Count decimal(18,4) = (select count(1) from @QFromPAYR);
--declare @QFromPADYR_Count decimal(18,4) = (select count(1) from @QFromPADYR);

--insert Tests (Category, Name, Result) values ('Q', 'QFromPAYR_Count = QFromPYR_Count', iif(@QFromPAYR_Count = @QFromPYR_Count,1,0));
--insert Tests (Category, Name, Result) values ('Q', 'QFromPADYR_Count = QFromPYR_Count', iif(@QFromPADYR_Count = @QFromPYR_Count,1,0));

--declare @Q_Check int;
--select @Q_Check = count(1) from
--	@QFromPYR a left join
--	@QFromPAYR b on a.Q = b.Q left join
--	@QFromPADYR c on a.Q = c.Q
--where b.Q is null or c.Q is null;

--insert Tests (Category, Name, Result) values ('Q', 'QFromPYR = QFromPAYR = QFromPADYR', iif(@Q_Check = 0,1,0));

--print '************************************************************'
--print 'YQ'
--print '************************************************************'

--declare @YQFromPYR table (YearID int, Q decimal(18,4));
--declare @YQFromPAYR table (YearID int, Q decimal(18,4));
--declare @YQFromPADYR table (YearID int, Q decimal(18,4));

--insert @YQFromPYR
--select distinct
--	YearID,
--	convert(decimal(18,4), sum(WeightedPerformance)/sum(Budget)) YQ
--from
--	PYR
--group by
--	ProgrammeID,
--	YearID;

--insert @YQFromPAYR
--select distinct
--	YearID,
--	convert(decimal(18,4), sum(WeightedPerformance)/sum(Budget)) Q
--from
--	PAYR
--group by
--	ProgrammeID,
--	YearID;

--insert @YQFromPADYR
--select distinct
--	YearID,
--	convert(decimal(18,4), sum(WeightedPerformance)/sum(Budget)) Q
--from
--	PADYR
--group by
--	ProgrammeID,
--	YearID;

--declare @YQFromPYR_Count decimal(18,4) = (select count(1) from @YQFromPYR);	
--declare @YQFromPAYR_Count decimal(18,4) = (select count(1) from @YQFromPAYR);
--declare @YQFromPADYR_Count decimal(18,4) = (select count(1) from @YQFromPADYR);

--insert Tests (Category, Name, Result) values ('YQ', 'YQFromPAYR_Count = YQFromPYR_Count', iif(@YQFromPAYR_Count = @YQFromPYR_Count,1,0));
--insert Tests (Category, Name, Result) values ('YQ', 'YQFromPADYR_Count = YQFromPYR_Count', iif(@YQFromPADYR_Count = @YQFromPYR_Count,1,0));

--declare @YQ_Check int;
--select @YQ_Check = count(1) from
--	@YQFromPYR a left join
--	@YQFromPAYR b on a.YearID = b.YearID and a.Q = b.Q left join
--	@YQFromPADYR c on a.YearID = c.YearID and a.Q = c.Q
--where b.Q is null or c.Q is null;

--insert Tests (Category, Name, Result) values ('YQ', 'YQFromPYR = YQFromPAYR = YQFromPADYR', iif(@YQ_Check = 0,1,0));

--print '************************************************************'
--print 'PYQ'
--print '************************************************************'

--declare @PYQFromPYR table (ProgrammeID nvarchar(25), YearID int, Q decimal(18,4));
--declare @PYQFromPAYR table (ProgrammeID nvarchar(25), YearID int, Q decimal(18,4));
--declare @PYQFromPADYR table (ProgrammeID nvarchar(25), YearID int, Q decimal(18,4));

--insert @PYQFromPYR
--select distinct
--	ProgrammeID,
--	YearID,
--	convert(decimal(18,4), sum(WeightedPerformance)/sum(Budget)) Q
--from
--	PYR
--group by
--	ProgrammeID,
--	YearID;

--insert @PYQFromPAYR
--select distinct
--	ProgrammeID,
--	YearID,
--	convert(decimal(18,4), sum(WeightedPerformance)/sum(Budget)) Q
--from
--	PAYR
--group by
--	ProgrammeID,
--	YearID;

--insert @PYQFromPADYR
--select distinct
--	ProgrammeID,
--	YearID,
--	convert(decimal(18,4), sum(WeightedPerformance)/sum(Budget)) Q
--from
--	PADYR
--group by
--	ProgrammeID,
--	YearID;

--declare @PYQFromPYR_Count decimal(18,4) = (select count(1) from @PYQFromPYR);	
--declare @PYQFromPAYR_Count decimal(18,4) = (select count(1) from @PYQFromPAYR);
--declare @PYQFromPADYR_Count decimal(18,4) = (select count(1) from @PYQFromPADYR);

--insert Tests (Category, Name, Result) values ('PYQ', 'PYQFromPAYR_Count = PYQFromPYR_Count', iif(@PYQFromPAYR_Count = @PYQFromPYR_Count,1,0));
--insert Tests (Category, Name, Result) values ('PYQ', 'PYQFromPADYR_Count = PYQFromPYR_Count', iif(@PYQFromPADYR_Count = @PYQFromPYR_Count,1,0));

--declare @PYQ_Check int;
--select @PYQ_Check = count(1) from
--	@PYQFromPYR a left join
--	@PYQFromPAYR b on a.ProgrammeID = b.ProgrammeID and a.YearID = b.YearID and a.Q = b.Q left join
--	@PYQFromPADYR c on a.ProgrammeID = c.ProgrammeID and a.YearID = c.YearID and a.Q = c.Q
--where b.Q is null or c.Q is null;

--insert Tests (Category, Name, Result) values ('PYQ', 'PYQFromPYR = PYQFromPAYR = PYQFromPADYR', iif(@YQ_Check = 0,1,0));

--print '************************************************************'
--print 'PAYQ'
--print '************************************************************'

--declare @PAYQFromPAYR table (ProgrammeID nvarchar(25), ActorID nvarchar(25), YearID int, Q decimal(18,4));
--declare @PAYQFromPADYR table (ProgrammeID nvarchar(25), ActorID nvarchar(25), YearID int, Q decimal(18,4));

--insert @PAYQFromPAYR
--select
--	ProgrammeID,
--	ActorID,
--	YearID,
--	convert(decimal(18,4), sum(WeightedPerformance)/sum(Budget)) Q
--from
--	PAYR
--group by
--	ProgrammeID,
--	ActorID,
--	YearID;

--insert @PAYQFromPADYR
--select
--	ProgrammeID,
--	ActorID,
--	YearID,
--	convert(decimal(18,4), sum(WeightedPerformance)/sum(Budget)) Q
--from
--	PADYR
--group by
--	ProgrammeID,
--	ActorID,
--	YearID;
	
--declare @PAYQFromPAYR_Count decimal(18,4) = (select count(1) from @PAYQFromPAYR);
--declare @PAYQFromPADYR_Count decimal(18,4) = (select count(1) from @PAYQFromPADYR);

--insert Tests (Category, Name, Result) values ('PAYQ', 'PAYQFromPADYR_Count = PAYQFromPAYR_Count', iif(@PAYQFromPADYR_Count = @PAYQFromPAYR_Count,1,0));

--declare @PAYQ_Check int;
--select @PAYQ_Check = count(1) from
--	@PAYQFromPAYR a left join
--	@PAYQFromPADYR b on a.ProgrammeID = b.ProgrammeID and a.ActorID = b.ActorID and a.YearID = b.YearID and a.Q = b.Q
--where b.Q is null;

--insert Tests (Category, Name, Result) values ('PAYQ', 'PAYQFromPAYR = PAYQFromPADYR', iif(@YQ_Check = 0,1,0));

--print '************************************************************'
--print 'Summary'
--print '************************************************************'

select sum(convert(float,Result))/count(Result) * 100 [Pass Rate (%)] from Tests;

--select * from Tests;