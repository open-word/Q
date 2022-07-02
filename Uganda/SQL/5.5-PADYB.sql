use Uganda;
go

create Table PADYB
(
	ProgrammeID int,
	ActorID int,
	DistrictID int,
	YearID int,
	Points float,
	Budget decimal(18,8),
	constraint PK_PADYB primary key (ProgrammeID, ActorID, DistrictID, YearID),
	constraint FK_PADYB_PADY foreign key (ProgrammeID, ActorID, DistrictID, YearID) references PADY (ProgrammeID, ActorID, DistrictID, YearID)
);
go

-- Allocate Points using a random number.
insert 
	PADYB (ProgrammeID, ActorID, DistrictID, YearID, Points) 
select
	PADY2.ProgrammeID,
	PADY2.ActorID,
	PADY2.DistrictID,
	PADY2.YearID,
	RN.RN_010_090 
from 
	(
		select 
			PAdy.ProgrammeID,
			PAdy.ActorID,
			PAdy.DistrictID,
			PAdy.YearID, 
			800+row_number() over(order by PAdy.ProgrammeID, PAdy.ActorID, PAdy.DistrictID, PAdy.YearID) RNID -- start at 800
		from 
			PADY
	) PADY2 
	left join RN on PADY2.RNID = rn.RNID; -- to check we haven't run out of RN :)

-- Allocate Budget using Points.
update 
	PADYB
set 
	PADYB.Budget = PADYB2.Share * PAYB.Budget
from 
	PADYB PADYB
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
	PADYB2 on PADYB.ProgrammeID = PADYB2.ProgrammeID and PADYB.ActorID = PADYB2.ActorID and PADYB.DistrictID = PADYB2.DistrictID and PADYB.YearID = PADYB2.YearID
	join PAYB on PADYB.ProgrammeID = PAYB.ProgrammeID and PADYB.ActorID = PAYB.ActorID and PADYB.YearID = PAYB.YearID;

--select * from PADYB;

select '5.5'
go

--select 
--	YearID,
--	ProgrammeID,
--	ActorID,
--	sum(Budget)
--from 
--	PADYB
--group by
--	rollup(YearID, ProgrammeID, ActorID);