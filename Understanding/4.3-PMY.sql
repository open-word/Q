use Understanding;
go

create Table PMY
(
	ProgrammeID nvarchar(25),
	MinistryID nvarchar(25),
	YearID int,
	constraint PK_PMY primary key (ProgrammeID, MinistryID, YearID),
	constraint FK_PMY_PM foreign key (ProgrammeID, MinistryID) references PM (ProgrammeID, MinistryID),
	constraint FK_PMY_Y foreign key (YearID) references Y (YearID)
);
go

insert
	PMY
select
	*
from
	PM
	cross join Y;

--select * from PMY order by ProgrammeID, MinistryID, YearID;

select '4.3'
go