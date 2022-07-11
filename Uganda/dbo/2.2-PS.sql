use Uganda;
go

create Table PS
(
	ProgrammeID int,
	SectorID int,
	constraint PK_PS primary key (ProgrammeID, SectorID),
	constraint FK_PS_P foreign key (ProgrammeID) references P (ProgrammeID),
	constraint FK_PS_S foreign key (SectorID) references S (SectorID)
);
go

insert PS (ProgrammeID, SectorID)
select
	P.ProgrammeID,
	S.SectorID
from
	P
	cross join S
where
	not (P.ProgrammeID in (16,18) and S.SectorID = 2) -- 16 and 18 have no Private Sector budget.
order by
	P.ProgrammeID,
	S.SectorID;

--select * from PS;

select '2.2'
go