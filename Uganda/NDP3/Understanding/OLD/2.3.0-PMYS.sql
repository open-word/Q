use Understanding;
go

create Table PMYS
(
	ProgrammeID nchar(25),
	MinistryID nchar(25),
	YearID int,
	RNID int identity(100,1), -- let's start at 100 :)
	Entitlement float,
	Share float,
	constraint PK_PMYS primary key (ProgrammeID, MinistryID, YearID),
	constraint FK_PMYS_PM foreign key (ProgrammeID, MinistryID) references PM (ProgrammeID, MinistryID),
	constraint FK_PMYS_Y foreign key (YearID) references Y (YearID)
);
go

insert
	PMYS
select
	PM.ProgrammeID,
	PM.MinistryID,
	Y.YearID,
	-- RNID is identity
	NULL,
	NULL
from
	PM,Y
order by
	PM.ProgrammeID, PM.MinistryID, Y.YearID;

-- Entitlement
update
	PMYS
set
	PMYS.Entitlement = RN.RN_010_090
from
	PMYS
	join RN on PMYS.RNID = RN.RNID;

-- Share
update
	PMYS
set
	PMYS.Share = PMYS.Entitlement / s.TotalEntitlement
from
	PMYS
	join (
		select 
			PMYS.ProgrammeID,
			PMYS.MinistryID,
			PMYS.YearID,
			sum(Entitlement) over(partition by ProgrammeID,YearID) [TotalEntitlement] -- for Programme Year
		from 
			PMYS
	) s 
	on PMYS.ProgrammeID = s.ProgrammeID 
	and PMYS.MinistryID = s.MinistryID 
	and PMYS.YearID = s.YearID;

--select * from PMYS order by ProgrammeID, MinistryID, YearID;

--update
--	PMYS
--set
--	PMYS.Share = PMYS.Entitlement / (select sum(Entitlement) from PMYS pmys2 where pmys2.ProgrammeID = PMYS.ProgrammeID and pmys2.YearID = PMYS.YearID);

--select * from PMYS order by ProgrammeID, MinistryID, YearID;

select '2.3.0'
go