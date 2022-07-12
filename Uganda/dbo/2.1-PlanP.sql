use Uganda;
go

create Table PlanP
(
	PlanID int,
	ProgrammeID int
	constraint PK_PlanP primary key (PlanID, ProgrammeID),
	constraint FK_PlanP_Plan foreign key (PlanID) references Plans (PlanID),
	constraint FK_PlanP_P foreign key (ProgrammeID) references P (ProgrammeID)
);
go

insert PlanP (PlanID, ProgrammeID)
select
	Plans.PlanID,
	P.ProgrammeID
from
	Plans
	cross join P
order by
	Plans.PlanID,
	P.ProgrammeID;

--select * from PY;

select '2.1'
go