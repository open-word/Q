use Understanding;
go

create Table PMYB
(
	ProgrammeID nvarchar(25),
	MinistryID nvarchar(25),
	YearID int,
	Points float,
	Budget decimal(18,4),
	constraint PK_PMYB primary key (ProgrammeID, MinistryID, YearID),
	constraint FK_PMYB_PMY foreign key (ProgrammeID, MinistryID, YearID) references PMY (ProgrammeID, MinistryID, YearID)
);
go

-- Allocate Points using a random number.
insert 
	PMYB (ProgrammeID, MinistryID, YearID, Points) 
select
	pmy2.ProgrammeID,
	pmy2.MinistryID,
	pmy2.YearID,
	rn.RN_010_090 
from 
	(
		select 
			pmy.ProgrammeID,
			pmy.MinistryID,
			pmy.YearID, 
			400+row_number() over(order by pmy.ProgrammeID, pmy.MinistryID, pmy.YearID) RNID -- start at 400
		from 
			PMY pmy
	) pmy2 
	join RN rn on pmy2.RNID = rn.RNID;

-- Allocate Budget using Points.
update 
	pmyb
set 
	pmyb.Budget = pmyb2.Share * pyb.Budget
from 
	PMYB pmyb
	join 
	(
		select 
			PMYB.ProgrammeID,
			PMYB.MinistryID,
			PMYB.YearID, 
			(PMYB.Points/sum(PMYB.Points) over (partition by PMYB.ProgrammeID, PMYB.YearID)) [Share] 
		from 
			PMYB
	) 
	pmyb2 on pmyb.ProgrammeID = pmyb2.ProgrammeID and pmyb.MinistryID = pmyb2.MinistryID and pmyb.YearID = pmyb2.YearID
	join PYB pyb on pmyb.ProgrammeID = pyb.ProgrammeID and pmyb.YearID = pyb.YearID;

--select * from PMYB;

select '5.4'
go

--select 
--	YearID,
--	ProgrammeID,
--	MinistryID,
--	sum(Budget)
--from 
--	PMYB
--group by
--	rollup(YearID, ProgrammeID, MinistryID);