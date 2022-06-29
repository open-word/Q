use Uganda;
go

create table NDP3.ProgrammeMinistryReturns
(
	ProgrammeMinistryReturnID int identity,
	YearName nchar(7),
	YearStart int,
	YearEnd int,
	Weight decimal (14,4),
	Performance decimal (14,4) null,
	WeightedPerformance decimal (14,4) null,
	ProgrammeKeyResultID int,
	ProgrammeID int,
	MinistryID int,
	constraint PK_ProgrammeMinistryReturns primary key (ProgrammeMinistryReturnID),
	constraint FK_ProgrammeMinistryReturns_ProgrammeKeyResults foreign key (ProgrammeKeyResultID) references NDP3.ProgrammeKeyResults (ProgrammeKeyResultID),
	constraint FK_ProgrammeMinistryReturns_ProgrammesMinistries foreign key (ProgrammeID,MinistryID) references NDP3.ProgrammesMinistries (ProgrammeID, MinistryID),
);
go

select '230';
go