use Understanding;
go

drop table PMYS;

create Table PMYS
(
	ProgrammeID nchar(25),
	MinistryID nchar(25),
	YearID int,
	Share float,
	ShareForProgrammeYear float,
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
	NULL,
	NULL
from
	PM,Y;

-- Share
declare @RN float = rand(1); -- for reproducibility
declare @ProgrammeID nchar(25), @MinistryID nchar(25), @YearID int;
while exists (select top 1 1 from PMYS where Share is null )
begin 
	select @ProgrammeID = ProgrammeID, @MinistryID = MinistryID, @YearID = YearID from PMYS where Share is null
	set @RN = 0.5 + rand()
	update PMYS set Share = @RN where ProgrammeID = @ProgrammeID and MinistryID = @MinistryID and YearID = @YearID
end;
go

-- ShareForProgrammeYear
declare @ProgrammeID nchar(25), @MinistryID nchar(25), @YearID int, @SumOfShare float;
while exists (select top 1 1 from PMYS where ShareForProgrammeYear is null )
begin 
	select @ProgrammeID = ProgrammeID, @MinistryID = MinistryID, @YearID = YearID from PMYS where ShareForProgrammeYear is null;
	
	select @SumOfShare = sum(Share) from PMYS where ProgrammeID = @ProgrammeID and YearID = @YearID;

	update PMYS set ShareForProgrammeYear = (Share / @SumOfShare) where ProgrammeID = @ProgrammeID and MinistryID = @MinistryID and YearID = @YearID
end;

--select * from PMYS;

select '2.3.0'
go