use Understanding;
go

create Table PY
(
	ProgrammeID nvarchar(25),
	YearID int,
	constraint PK_PY primary key (ProgrammeID, YearID),
	constraint FK_PY_P foreign key (ProgrammeID) references P (ProgrammeID),
	constraint FK_PY_Y foreign key (YearID) references Y (YearID)
);
go

insert
	PY
select
	*
from
	P
	cross join Y;

--select * from PY;

select '4.2'
go