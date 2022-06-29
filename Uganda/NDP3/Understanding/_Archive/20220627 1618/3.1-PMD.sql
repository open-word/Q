use Understanding;
go

create table PMD
(
	ProgrammeID nvarchar(25),
	MinistryID nvarchar(25),
	DistrictID nvarchar(25),
	constraint PK_PMD primary key (ProgrammeID, MinistryID, DistrictID),
	constraint FK_PMD_PM foreign key (ProgrammeID, MinistryID) references PM (ProgrammeID, MinistryID),
	constraint FK_PMD_MD foreign key (MinistryID, DistrictID) references MD (MinistryID, DistrictID)
);
go

insert PMD (ProgrammeID, MinistryID, DistrictID) values
	('Programme 1','Ministry 1','District 1'),
	('Programme 1','Ministry 1','District 2'),
	('Programme 1','Ministry 2','District 1'),
	('Programme 1','Ministry 2','District 2'),
	('Programme 2','Ministry 1','District 1'),
	('Programme 2','Ministry 1','District 2'),
	('Programme 2','Ministry 2','District 1'),
	('Programme 2','Ministry 2','District 2');

--select * from PMD;

select '3.1'
go