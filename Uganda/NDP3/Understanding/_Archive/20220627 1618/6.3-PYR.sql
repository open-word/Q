use Understanding;
go

create Table PYR
(
	ProgrammeID nvarchar(25),
	YearID int,
	ResultID nchar(25),
	constraint PK_PYR primary key (ProgrammeID, YearID, ResultID),
	constraint FK_PYR_PY foreign key (ProgrammeID, YearID) references PY (ProgrammeID, YearID),
	constraint FK_PYR_YR foreign key (YearID, ResultID) references YR (YearID, ResultID)
);
go

-- select * from PYR;

select '6.3'
go


select convert(int,substring('01.01',1,2))