use Understanding;
go

create Table PADYB
(
	ProgrammeID nvarchar(25),
	ActorID nvarchar(25),
	DistrictID nvarchar(25),
	YearID int,
	Points float,
	Budget decimal(18,4),
	constraint PK_PADYB primary key (ProgrammeID, ActorID, DistrictID, YearID),
	constraint FK_PADYB_PADY foreign key (ProgrammeID, ActorID, DistrictID, YearID) references PADY (ProgrammeID, ActorID, DistrictID, YearID)
);
go

-- Allocate Points using a random number.
insert 
	PADYB (ProgrammeID, ActorID, DistrictID, YearID, Points) 
select
	PAdy2.ProgrammeID,
	PAdy2.ActorID,
	PAdy2.DistrictID,
	PAdy2.YearID,
	rn.RN_010_090 
from 
	(
		select 
			PAdy.ProgrammeID,
			PAdy.ActorID,
			PAdy.DistrictID,
			PAdy.YearID, 
			800+row_number() over(order by PAdy.ProgrammeID, PAdy.ActorID, PAdy.DistrictID, PAdy.YearID) RNID -- start at 800
		from 
			PADY PAdy
	) PAdy2 
	join RN rn on PAdy2.RNID = rn.RNID;

-- Allocate Budget using Points.
update 
	PAdyb
set 
	PAdyb.Budget = PAdyb2.Share * PAyb.Budget
from 
	PADYB PAdyb
	join
	(
		select 
			PADYB.ProgrammeID,
			PADYB.ActorID,
			PADYB.DistrictID,
			PADYB.YearID, 
			(PADYB.Points/sum(PADYB.Points) over (partition by PADYB.ProgrammeID, PADYB.ActorID, PADYB.YearID)) [Share] 
		from 
			PADYB
	) 
	PAdyb2 on PAdyb.ProgrammeID = PAdyb2.ProgrammeID and PAdyb.ActorID = PAdyb2.ActorID and PAdyb.DistrictID = PAdyb2.DistrictID and PAdyb.YearID = PAdyb2.YearID
	join PAYB PAyb on PAdyb.ProgrammeID = PAyb.ProgrammeID and PAdyb.ActorID = PAyb.ActorID and PAdyb.YearID = PAyb.YearID;

--select * from PADYB;

select '5.5'
go

--select 
--	YearID,
--	ProgrammeID,
--	ActorID,
--	DistrictID,
--	sum(Budget)
--from 
--	PADYB
--group by
--	rollup(YearID, ProgrammeID, ActorID, DistrictID);