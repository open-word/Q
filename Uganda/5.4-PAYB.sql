use Uganda;
go

create Table PAYB
(
	ProgrammeID int,
	ActorID int,
	YearID int,
	Points float,
	Budget decimal(18,4),
	constraint PK_PAYB primary key (ProgrammeID, ActorID, YearID),
	constraint FK_PAYB_PAY foreign key (ProgrammeID, ActorID, YearID) references PAY (ProgrammeID, ActorID, YearID)
);
go

-- Allocate Points using a random number.
insert 
	PAYB (ProgrammeID, ActorID, YearID, Points) 
select
	PAY2.ProgrammeID,
	PAY2.ActorID,
	PAY2.YearID,
	RN.RN_010_090 
from 
	(
		select 
			PAY.ProgrammeID,
			PAY.ActorID,
			PAY.YearID, 
			400+row_number() over(order by PAY.ProgrammeID, PAY.ActorID, PAY.YearID) RNID -- start at 400
		from 
			PAY
	) PAY2 
	left join RN on PAY2.RNID = RN.RNID; -- to check we haven't run out of RN :)

-- Allocate Budget using Points.
update 
	PAYB
set 
	PAYB.Budget = PAYB2.Share * PYB.Budget
from 
	PAYB PAYB
	join 
	(
		select 
			PAYB.ProgrammeID,
			PAYB.ActorID,
			PAYB.YearID, 
			(PAYB.Points/sum(PAYB.Points) over (partition by PAYB.ProgrammeID, PAYB.YearID)) [Share] 
		from 
			PAYB
	) 
	PAYB2 on PAYB.ProgrammeID = PAYB2.ProgrammeID and PAYB.ActorID = PAYB2.ActorID and PAYB.YearID = PAYB2.YearID
	join PYB PYB on PAYB.ProgrammeID = PYB.ProgrammeID and PAYB.YearID = PYB.YearID;

--select * from PAYB;

select '5.4'
go

--select 
--	ProgrammeID, 
--	ActorID,
--	YearID,
--	sum(Budget) [SumOfBudget]
--from 
--	PAYB
--group by
--	rollup(ProgrammeID, ActorID, YearID);

--select ProgrammeID, sum(budget) from PAYB group by ProgrammeID;

--select
--	*
--from
--	(select 
--		ProgrammeID, 
--		YearID, 
--		sum(budget) [SumOfBudget],
--		round(sum(budget),0) [SumOfBudget_rounded],
--		convert(int, sum(Budget)) [SumOfBudget_int]
--	from PYB group by ProgrammeID, YearID) a left join
--	(select 
--		ProgrammeID, 
--		YearID, 
--		sum(budget) [SumOfBudget],
--		round(sum(budget),0) [SumOfBudget_rounded],
--		convert(int, sum(Budget)) [SumOfBudget_int]		
--	from PAYB group by ProgrammeID, YearID) b on a.ProgrammeID = b.ProgrammeID and a.YearID = b.YearID
--where
--	a.SumOfBudget_rounded = b.[SumOfBudget_rounded];


--select sum(budget) from PAYB where ProgrammeID = 1 and YearID = 2;