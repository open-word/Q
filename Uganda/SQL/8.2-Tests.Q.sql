use Uganda;
go

--print '************************************************************'
--print 'P'
--print '************************************************************'

declare @QCheck_P int;
select @QCheck_P = count(1)
from 
	(select coalesce(ProgrammeID,0) as ProgrammeID, convert(decimal(18,8),sum(WeightedPerformance)/sum(Budget)) as Q from PYR group by rollup(ProgrammeID)) a 
		full outer join
	(select coalesce(ProgrammeID,0) as ProgrammeID, convert(decimal(18,8),sum(WeightedPerformance)/sum(Budget)) as Q from PAYR group by rollup(ProgrammeID)) b 
		on a.ProgrammeID = b.ProgrammeID and a.Q = b.Q full outer join
	(select coalesce(ProgrammeID,0) as ProgrammeID, convert(decimal(18,8),sum(WeightedPerformance)/sum(Budget)) as Q from PADYR group by rollup(ProgrammeID)) c 
		on a.ProgrammeID = c.ProgrammeID and a.Q = c.Q
where
	a.Q is null or b.Q is null or c.Q is null;
insert Tests (Category, Name, Result) values ('Q', 'QCheck_P', iif(@QCheck_P=0,1,0));

--print '************************************************************'
--print 'Y'
--print '************************************************************'

declare @QCheck_Y int;
select @QCheck_Y = count(1)
from 
	(select coalesce(YearID,0) as YearID, convert(decimal(18,8),sum(WeightedPerformance)/sum(Budget)) as Q from PYR group by rollup(YearID)) a 
		full outer join
	(select coalesce(YearID,0) as YearID, convert(decimal(18,8),sum(WeightedPerformance)/sum(Budget)) as Q from PAYR group by rollup(YearID)) b 
		on a.YearID = b.YearID and a.Q = b.Q full outer join
	(select coalesce(YearID,0) as YearID, convert(decimal(18,8),sum(WeightedPerformance)/sum(Budget)) as Q from PADYR group by rollup(YearID)) c 
		on a.YearID = c.YearID and a.Q = c.Q
where
	a.Q is null or b.Q is null or c.Q is null;
insert Tests (Category, Name, Result) values ('Q', 'QCheck_Y', iif(@QCheck_Y=0,1,0));

--print '************************************************************'
--print 'PY'
--print '************************************************************'

declare @QCheck_PY int;
select @QCheck_PY = count(1)
from 
	(select coalesce(ProgrammeID,0) as ProgrammeID, coalesce(YearID,0) as YearID, convert(decimal(18,8),sum(WeightedPerformance)/sum(Budget)) as Q from PYR group by rollup(ProgrammeID, YearID)) a 
		full outer join
	(select coalesce(ProgrammeID,0) as ProgrammeID, coalesce(YearID,0) as YearID, convert(decimal(18,8),sum(WeightedPerformance)/sum(Budget)) as Q from PAYR group by rollup(ProgrammeID, YearID)) b 
		on a.ProgrammeID = b.ProgrammeID and a.YearID = b.YearID and a.Q = b.Q full outer join
	(select coalesce(ProgrammeID,0) as ProgrammeID, coalesce(YearID,0) as YearID, convert(decimal(18,8),sum(WeightedPerformance)/sum(Budget)) as Q from PADYR group by rollup(ProgrammeID, YearID)) c 
		on a.ProgrammeID = c.ProgrammeID and a.YearID = c.YearID and a.Q = c.Q
where
	a.Q is null or b.Q is null or c.Q is null;
insert Tests (Category, Name, Result) values ('Q', 'QCheck_PY', iif(@QCheck_PY=0,1,0));

--print '************************************************************'
--print 'YP'
--print '************************************************************'

declare @QCheck_YP int;
select @QCheck_YP = count(1)
from 
	(select coalesce(YearID,0) as YearID, coalesce(ProgrammeID,0) as ProgrammeID, convert(decimal(18,8),sum(WeightedPerformance)/sum(Budget)) as Q from PYR group by rollup(YearID, ProgrammeID)) a 
		full outer join
	(select coalesce(YearID,0) as YearID, coalesce(ProgrammeID,0) as ProgrammeID, convert(decimal(18,8),sum(WeightedPerformance)/sum(Budget)) as Q from PAYR group by rollup(YearID, ProgrammeID)) b 
		on a.YearID = b.YearID and a.YearID = b.YearID and a.Q = b.Q full outer join
	(select coalesce(YearID,0) as YearID, coalesce(ProgrammeID,0) as ProgrammeID, convert(decimal(18,8),sum(WeightedPerformance)/sum(Budget)) as Q from PADYR group by rollup(YearID, ProgrammeID)) c 
		on a.YearID = c.YearID and a.YearID = c.YearID and a.Q = c.Q
where
	a.Q is null or b.Q is null or c.Q is null;
insert Tests (Category, Name, Result) values ('Q', 'QCheck_YP', iif(@QCheck_YP=0,1,0));

--print '************************************************************'
--print 'A'
--print '************************************************************'

declare @QCheck_A int;
select @QCheck_A = count(1) 
from 
	(select coalesce(ActorID,0) as ActorID, convert(decimal(18,8),sum(WeightedPerformance)/sum(Budget)) as Q from PAYR group by rollup(ActorID)) a
		full outer join
	(select coalesce(ActorID,0) as ActorID, convert(decimal(18,8),sum(WeightedPerformance)/sum(Budget)) as Q from PADYR group by rollup(ActorID)) b
		on a.ActorID = b.ActorID and a.Q = b.Q
where
	a.Q is null or b.Q is null;
insert Tests (Category, Name, Result) values ('Q', 'QCheck_A', iif(@QCheck_A=0,1,0));

--print '************************************************************'
--print 'PA'
--print '************************************************************'

declare @QCheck_PA int;
select @QCheck_PA = count(1) 
from 
	(select coalesce(ProgrammeID,0) as ProgrammeID, coalesce(ActorID,0) as ActorID, convert(decimal(18,8),sum(WeightedPerformance)/sum(Budget)) as Q from PAYR group by rollup(ProgrammeID, ActorID)) a
		full outer join
	(select coalesce(ProgrammeID,0) as ProgrammeID, coalesce(ActorID,0) as ActorID, convert(decimal(18,8),sum(WeightedPerformance)/sum(Budget)) as Q from PADYR group by rollup(ProgrammeID, ActorID)) b
		on a.ProgrammeID = b.ProgrammeID and a.ActorID = b.ActorID and a.Q = b.Q
where
	a.Q is null or b.Q is null;
insert Tests (Category, Name, Result) values ('Q', 'QCheck_PA', iif(@QCheck_PA=0,1,0));

--print '************************************************************'
--print 'AP'
--print '************************************************************'

declare @QCheck_AP int;
select @QCheck_AP = count(1)
from 
	(select coalesce(ActorID,0) as ActorID, coalesce(ProgrammeID,0) as ProgrammeID, convert(decimal(18,8),sum(WeightedPerformance)/sum(Budget)) as Q from PAYR group by rollup(ActorID, ProgrammeID)) a
		full outer join
	(select coalesce(ActorID,0) as ActorID, coalesce(ProgrammeID,0) as ProgrammeID, convert(decimal(18,8),sum(WeightedPerformance)/sum(Budget)) as Q from PADYR group by rollup(ActorID, ProgrammeID)) b
		on a.ActorID = b.ActorID and a.ProgrammeID = b.ProgrammeID and a.Q = b.Q
where
	a.Q is null or b.Q is null;
insert Tests (Category, Name, Result) values ('Q', 'QCheck_AP', iif(@QCheck_AP=0,1,0));

--print '************************************************************'
--print 'AY'
--print '************************************************************'

declare @QCheck_AY int;
select @QCheck_AY = count(1) 
from 
	(select coalesce(ActorID,0) as ActorID, coalesce(YearID,0) as YearID, convert(decimal(18,8),sum(WeightedPerformance)/sum(Budget)) as Q from PAYR group by rollup(ActorID, YearID)) a
		full outer join
	(select coalesce(ActorID,0) as ActorID, coalesce(YearID,0) as YearID, convert(decimal(18,8),sum(WeightedPerformance)/sum(Budget)) as Q from PADYR group by rollup(ActorID, YearID)) b
		on a.ActorID = b.ActorID and a.YearID = b.YearID and a.Q = b.Q
where
	a.Q is null or b.Q is null;
insert Tests (Category, Name, Result) values ('Q', 'QCheck_AY', iif(@QCheck_AY=0,1,0));

--print '************************************************************'
--print 'YA'
--print '************************************************************'

declare @QCheck_YA int;
select @QCheck_YA = count(1)
from 
	(select coalesce(YearID,0) as YearID, coalesce(ActorID,0) as ActorID, convert(decimal(18,8),sum(WeightedPerformance)/sum(Budget)) as Q from PAYR group by rollup(YearID, ActorID)) a
		full outer join
	(select coalesce(YearID,0) as YearID, coalesce(ActorID,0) as ActorID, convert(decimal(18,8),sum(WeightedPerformance)/sum(Budget)) as Q from PADYR group by rollup(YearID, ActorID)) b
		on a.YearID = b.YearID and a.ActorID = b.ActorID and a.Q = b.Q
where
	a.Q is null or b.Q is null;
insert Tests (Category, Name, Result) values ('Q', 'QCheck_YA', iif(@QCheck_YA=0,1,0));

--print '************************************************************'
--print 'PAY'
--print '************************************************************'

declare @QCheck_PAY int;
select @QCheck_PAY = count(1)
from 
	(select coalesce(ProgrammeID,0) as ProgrammeID, coalesce(ActorID,0) as ActorID, coalesce(YearID,0) as YearID, convert(decimal(18,8),sum(WeightedPerformance)/sum(Budget)) as Q from PAYR group by rollup(ProgrammeID, ActorID, YearID)) a
		full outer join
	(select coalesce(ProgrammeID,0) as ProgrammeID, coalesce(ActorID,0) as ActorID, coalesce(YearID,0) as YearID, convert(decimal(18,8),sum(WeightedPerformance)/sum(Budget)) as Q from PADYR group by rollup(ProgrammeID, ActorID, YearID)) b
		on a.ProgrammeID = b.ProgrammeID and a.ActorID = b.ActorID and a.YearID = b.YearID and a.Q = b.Q
where
	a.Q is null or b.Q is null;
insert Tests (Category, Name, Result) values ('Q', 'QCheck_PAY', iif(@QCheck_PAY=0,1,0));

--print '************************************************************'
--print 'PYA'
--print '************************************************************'

declare @QCheck_PYA int;
select @QCheck_PYA = count(1)
from 
	(select coalesce(ProgrammeID,0) as ProgrammeID, coalesce(YearID,0) as YearID, coalesce(ActorID,0) as ActorID, convert(decimal(18,8),sum(WeightedPerformance)/sum(Budget)) as Q from PAYR group by rollup(ProgrammeID, YearID, ActorID)) a
		full outer join
	(select coalesce(ProgrammeID,0) as ProgrammeID, coalesce(YearID,0) as YearID, coalesce(ActorID,0) as ActorID, convert(decimal(18,8),sum(WeightedPerformance)/sum(Budget)) as Q from PADYR group by rollup(ProgrammeID, YearID, ActorID)) b
		on a.ProgrammeID = b.ProgrammeID and a.YearID = b.YearID and a.ActorID = b.ActorID and a.Q = b.Q
where
	a.Q is null or b.Q is null;
insert Tests (Category, Name, Result) values ('Q', 'QCheck_PYA', iif(@QCheck_PYA=0,1,0));

--print '************************************************************'
--print 'YPA'
--print '************************************************************'

declare @QCheck_YPA int;
select @QCheck_YPA = count(1)
from 
	(select coalesce(YearID,0) as YearID, coalesce(ProgrammeID,0) as ProgrammeID, coalesce(ActorID,0) as ActorID, convert(decimal(18,8),sum(WeightedPerformance)/sum(Budget)) as Q from PAYR group by rollup(YearID, ProgrammeID, ActorID)) a
		full outer join
	(select coalesce(YearID,0) as YearID, coalesce(ProgrammeID,0) as ProgrammeID, coalesce(ActorID,0) as ActorID, convert(decimal(18,8),sum(WeightedPerformance)/sum(Budget)) as Q from PADYR group by rollup(YearID, ProgrammeID, ActorID)) b
		on a.ProgrammeID = b.ProgrammeID and a.YearID = b.YearID and a.ActorID = b.ActorID and a.Q = b.Q
where
	a.Q is null or b.Q is null;
insert Tests (Category, Name, Result) values ('Q', 'QCheck_YPA', iif(@QCheck_YPA=0,1,0));

--print '************************************************************'
--print 'YAP'
--print '************************************************************'

declare @QCheck_YAP int;
select @QCheck_YAP = count(1) 
from 
	(select coalesce(YearID,0) as YearID, coalesce(ActorID,0) as ActorID, coalesce(ProgrammeID,0) as ProgrammeID, convert(decimal(18,8),sum(WeightedPerformance)/sum(Budget)) as Q from PAYR group by rollup(YearID, ActorID, ProgrammeID)) a
		full outer join
	(select coalesce(YearID,0) as YearID, coalesce(ActorID,0) as ActorID, coalesce(ProgrammeID,0) as ProgrammeID, convert(decimal(18,8),sum(WeightedPerformance)/sum(Budget)) as Q from PADYR group by rollup(YearID, ActorID, ProgrammeID)) b
		on a.YearID = b.YearID and a.ActorID = b.ActorID and a.ProgrammeID = b.ProgrammeID and a.Q = b.Q
where
	a.Q is null or b.Q is null;
insert Tests (Category, Name, Result) values ('Q', 'QCheck_YAP', iif(@QCheck_YAP=0,1,0));

--print '************************************************************'
--print 'APY'
--print '************************************************************'

declare @QCheck_APY int;
select @QCheck_APY = count(1)
from 
	(select coalesce(ActorID,0) as ActorID, coalesce(ProgrammeID,0) as ProgrammeID, coalesce(YearID,0) as YearID, convert(decimal(18,8),sum(WeightedPerformance)/sum(Budget)) as Q from PAYR group by rollup(ActorID, ProgrammeID, YearID)) a
		full outer join
	(select coalesce(ActorID,0) as ActorID, coalesce(ProgrammeID,0) as ProgrammeID, coalesce(YearID,0) as YearID, convert(decimal(18,8),sum(WeightedPerformance)/sum(Budget)) as Q from PADYR group by rollup(ActorID, ProgrammeID, YearID)) b
		on a.ActorID = b.ActorID and a.ProgrammeID = b.ProgrammeID and a.YearID = b.YearID and a.Q = b.Q
where
	a.Q is null or b.Q is null;
insert Tests (Category, Name, Result) values ('Q', 'QCheck_APY', iif(@QCheck_APY=0,1,0));
go

--print '************************************************************'
--print 'AYP'
--print '************************************************************'

declare @QCheck_AYP int;
select @QCheck_AYP = count(1)
from 
	(select coalesce(ActorID,0) as ActorID, coalesce(YearID,0) as YearID, coalesce(ProgrammeID,0) as ProgrammeID, convert(decimal(18,8),sum(WeightedPerformance)/sum(Budget)) as Q from PAYR group by rollup(ActorID, YearID, ProgrammeID)) a
		full outer join
	(select coalesce(ActorID,0) as ActorID, coalesce(YearID,0) as YearID, coalesce(ProgrammeID,0) as ProgrammeID, convert(decimal(18,8),sum(WeightedPerformance)/sum(Budget)) as Q from PADYR group by rollup(ActorID, YearID, ProgrammeID)) b
		on a.ActorID = b.ActorID and a.ProgrammeID = b.ProgrammeID and a.YearID = b.YearID and a.Q = b.Q
where
	a.Q is null or b.Q is null;
insert Tests (Category, Name, Result) values ('Q', 'QCheck_AYP', iif(@QCheck_AYP=0,1,0));
go

--print '************************************************************'
--print 'Summary'
--print '************************************************************'

select sum(1.*Result) / Count(Result) [Pass Rate] from Tests;

--select * from Tests;