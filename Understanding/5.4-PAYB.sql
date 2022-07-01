use Understanding;
go

create Table PAYB
(
	ProgrammeID nvarchar(25),
	ActorID nvarchar(25),
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
	PAy2.ProgrammeID,
	PAy2.ActorID,
	PAy2.YearID,
	rn.RN_010_090 
from 
	(
		select 
			PAy.ProgrammeID,
			PAy.ActorID,
			PAy.YearID, 
			400+row_number() over(order by PAy.ProgrammeID, PAy.ActorID, PAy.YearID) RNID -- start at 400
		from 
			PAY PAy
	) PAy2 
	join RN rn on PAy2.RNID = rn.RNID;

-- Allocate Budget using Points.
update 
	PAyb
set 
	PAyb.Budget = PAyb2.Share * pyb.Budget
from 
	PAYB PAyb
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
	PAyb2 on PAyb.ProgrammeID = PAyb2.ProgrammeID and PAyb.ActorID = PAyb2.ActorID and PAyb.YearID = PAyb2.YearID
	join PYB pyb on PAyb.ProgrammeID = pyb.ProgrammeID and PAyb.YearID = pyb.YearID;

--select * from PAYB;

select '5.4'
go

--select 
--	YearID,
--	ProgrammeID,
--	ActorID,
--	sum(Budget)
--from 
--	PAYB
--group by
--	rollup(YearID, ProgrammeID, ActorID);