use Understanding;
go

create Table PMDYB
(
	ProgrammeID nvarchar(25),
	MinistryID nvarchar(25),
	DistrictID nvarchar(25),
	YearID int,
	Points float,
	Budget decimal(18,4),
	constraint PK_PMDYB primary key (ProgrammeID, MinistryID, DistrictID, YearID),
	constraint FK_PMDYB_PMDY foreign key (ProgrammeID, MinistryID, DistrictID, YearID) references PMDY (ProgrammeID, MinistryID, DistrictID, YearID)
);
go

-- Allocate Points using a random number.
insert 
	PMDYB (ProgrammeID, MinistryID, DistrictID, YearID, Points) 
select
	pmdy2.ProgrammeID,
	pmdy2.MinistryID,
	pmdy2.DistrictID,
	pmdy2.YearID,
	rn.RN_010_090 
from 
	(
		select 
			pmdy.ProgrammeID,
			pmdy.MinistryID,
			pmdy.DistrictID,
			pmdy.YearID, 
			800+row_number() over(order by pmdy.ProgrammeID, pmdy.MinistryID, pmdy.DistrictID, pmdy.YearID) RNID -- start at 800
		from 
			PMDY pmdy
	) pmdy2 
	join RN rn on pmdy2.RNID = rn.RNID;

-- Allocate Budget using Points.
update 
	pmdyb
set 
	pmdyb.Budget = pmdyb2.Share * pmyb.Budget
from 
	PMDYB pmdyb
	join
	(
		select 
			PMDYB.ProgrammeID,
			PMDYB.MinistryID,
			PMDYB.DistrictID,
			PMDYB.YearID, 
			(PMDYB.Points/sum(PMDYB.Points) over (partition by PMDYB.ProgrammeID, PMDYB.MinistryID, PMDYB.YearID)) [Share] 
		from 
			PMDYB
	) 
	pmdyb2 on pmdyb.ProgrammeID = pmdyb2.ProgrammeID and pmdyb.MinistryID = pmdyb2.MinistryID and pmdyb.DistrictID = pmdyb2.DistrictID and pmdyb.YearID = pmdyb2.YearID
	join PMYB pmyb on pmdyb.ProgrammeID = pmyb.ProgrammeID and pmdyb.MinistryID = pmyb.MinistryID and pmdyb.YearID = pmyb.YearID;

--select * from PMDYB;

select '5.5'
go

--select 
--	YearID,
--	ProgrammeID,
--	MinistryID,
--	DistrictID,
--	sum(Budget)
--from 
--	PMDYB
--group by
--	rollup(YearID, ProgrammeID, MinistryID, DistrictID);