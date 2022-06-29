use Understanding;
go

create Table PMYR
(
	ProgrammeID nvarchar(25),
	MinistryID nvarchar(25),
	YearID int,
	ResultID nvarchar(25),
	constraint PK_PMYR primary key (ProgrammeID, MinistryID, YearID, ResultID),
	constraint FK_PMYR_PMY foreign key (ProgrammeID, MinistryID, YearID) references PMY (ProgrammeID, MinistryID, YearID),
	constraint FK_PMYR_PYR foreign key (ProgrammeID, YearID, ResultID) references PYR (ProgrammeID, YearID, ResultID)
);
go

-- select * from PMYR;

select '6.4'
go