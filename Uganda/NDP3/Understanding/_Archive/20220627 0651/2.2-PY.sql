use Understanding;
go

create Table PY
(
	ProgrammeID nchar(25),
	YearID int,
	Budget decimal(18,4),
	constraint PK_PY primary key (ProgrammeID, YearID),
	constraint FK_PY_P foreign key (ProgrammeID) references P (ProgrammeID),
	constraint FK_PY_Y foreign key (YearID) references Y (YearID)
);
go

insert PY (ProgrammeID, YearID, Budget) values
	('Programme 1',2020,1000000),
	('Programme 1',2021,2000000),
	('Programme 2',2020,3000000),
	('Programme 2',2021,4000000);

--select * from PY;

select '2.2'
go