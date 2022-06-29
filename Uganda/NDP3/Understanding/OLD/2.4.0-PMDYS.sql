use Understanding;
go

create Table PMDYS
(
	ProgrammeID nchar(25),
	MinistryID nchar(25),
	DistrictID nchar(25),
	YearID int,
	RNID int identity(200,1), -- let's start at 200 :)
	Entitlement float,
	Share float,
	constraint PK_PMDYS primary key (ProgrammeID, MinistryID, DistrictID, YearID),
	constraint FK_PMDYS_PMD foreign key (ProgrammeID, MinistryID, DistrictID) references PMD (ProgrammeID, MinistryID, DistrictID),
	constraint FK_PMDYS_Y foreign key (YearID) references Y (YearID)
);
go

insert
	PMDYS
select
	PMD.ProgrammeID,
	PMD.MinistryID,
	PMD.DistrictID,
	Y.YearID,
	-- RNID is identity
	NULL,
	NULL
from
	PMD,Y
order by
	PMD.ProgrammeID, PMD.MinistryID, PMD.DistrictID, Y.YearID;

-- Entitlement
update
	PMDYS
set
	PMDYS.Entitlement = RN.RN_010_090
from
	PMDYS
	join RN on PMDYS.RNID = RN.RNID;

-- Share
update
	PMDYS
set
	PMDYS.Share = PMDYS.Entitlement / s.TotalEntitlement
from
	PMDYS
	join (
		select 
			PMDYS.ProgrammeID,
			PMDYS.MinistryID,
			PMDYS.DistrictID,
			PMDYS.YearID,
			sum(Entitlement) over(partition by ProgrammeID,MinistryID,YearID) [TotalEntitlement] -- for Programme Ministry Year
		from 
			PMDYS
	) s 
	on PMDYS.ProgrammeID = s.ProgrammeID 
	and PMDYS.MinistryID = s.MinistryID 
	and PMDYS.DistrictID = s.DistrictID
	and PMDYS.YearID = s.YearID;
	
--select * from PMDYS order by ProgrammeID, MinistryID, DistrictID, YearID;

--update
--	PMDYS
--set
--	PMDYS.Share = PMDYS.Entitlement / (select sum(Entitlement) from PMDYS pmdys2 where pmdys2.ProgrammeID = PMDYS.ProgrammeID and pmdys2.MinistryID = PMDYS.MinistryID and pmdys2.YearID = PMDYS.YearID);

--select * from PMDYS order by ProgrammeID, MinistryID, DistrictID, YearID;

select '2.4.0'
go