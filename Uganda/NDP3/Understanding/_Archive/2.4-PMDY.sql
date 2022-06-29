use Understanding;
go

create table PMDY
(
	ProgrammeID nchar(25),
	MinistryID nchar(25),
	DistrictID nchar(25),
	YearID int,
	Share float,
	Budget decimal (18,4),
	constraint PK_PMDY primary key (ProgrammeID, MinistryID, DistrictID, YearID),
	constraint FK_PMDY_PMD foreign key (ProgrammeID, MinistryID, DistrictID) references PMD (ProgrammeID, MinistryID, DistrictID),
	constraint FK_PMDY_Y foreign key (YearID) references Y (YearID)
);
go

insert
	PMDY
select
	PMD.ProgrammeID,
	PMD.MinistryID,
	PMD.DistrictID,
	Y.YearID,
	NULL,
	NULL
from
	PMD,Y;

-- Weight
declare @RN float = rand(100); -- for reproducibility
declare @ProgrammeID nchar(25), @MinistryID nchar(25), @DistrictID nchar(25), @YearID int;
while exists (select top 1 1 from PMDY where Share is null)
begin 
	select @ProgrammeID = ProgrammeID, @MinistryID = MinistryID, @DistrictID = DistrictID, @YearID = YearID from PMDY where Share is null
	set @RN = 0.5 + rand()
	update PMDY set Share = @RN where ProgrammeID = @ProgrammeID and MinistryID = @MinistryID and DistrictID = @DistrictID and YearID = @YearID
end;

--Allocate the budget
with cte (ProgrammeID, MinistryID, YearID, SumOfShare)
as
(
	select
		ProgrammeID,
		MinistryID,
		YearID,
		sum(Share)
	from
		PMDY
	group by
		ProgrammeID,
		MinistryID,
		YearID
)
update
	PMDY
set
	PMDY.Budget = PMY.Budget * PMDY.Share / cte.SumOfShare
from
	PMY 
	join PMDY on PMY.ProgrammeID = PMDY.ProgrammeID and PMY.MinistryID = pmdy.MinistryID and PMY.YearID = PMDY.YearID
	join cte on PMDY.ProgrammeID = cte.ProgrammeID and PMDY.MinistryID = cte.MinistryID and PMDY.YearID = cte.YearID

--select * from PMDY;

select '2.4'
go