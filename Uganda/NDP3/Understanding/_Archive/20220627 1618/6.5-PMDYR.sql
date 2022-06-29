use Understanding;
go

create Table PMDYR
(
	ProgrammeID nvarchar(25),
	MinistryID nvarchar(25),
	DistrictID nvarchar(25),
	YearID int,
	ResultID nvarchar(25),
	constraint PK_PMDYR primary key (ProgrammeID, MinistryID, DistrictID, YearID, ResultID),
	constraint FK_PMDYR_PMDY foreign key (ProgrammeID, MinistryID, DistrictID, YearID) references PMDY (ProgrammeID, MinistryID, DistrictID, YearID),
	constraint FK_PMDYR_PMYR foreign key (ProgrammeID, MinistryID, YearID, ResultID) references PMYR (ProgrammeID, MinistryID, YearID, ResultID)
);
go

-- select * from PMYR;

select '6.5'
go