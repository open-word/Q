use Test;
go

drop table if exists PY;

create table PY
(
	PYID int,
	ProgrammeID nvarchar(25),
	YearID int,
	SectorID nvarchar(10),
	PYSBudget float
);
go

insert PY (PYID, ProgrammeID, YearID, SectorID, PYSBudget) values
	(1,'Programme 01',2020,'Sector 1', 10),
	(2,'Programme 01',2020,'Sector 2', 100),
	(3,'Programme 01',2021,'Sector 1', 1000),
	(4,'Programme 01',2021,'Sector 2', 10000),
	(5,'Programme 02',2020,'Sector 1', 100000),
	(6,'Programme 02',2020,'Sector 2', 1000000),
	(7,'Programme 02',2021,'Sector 1', 10000000),
	(8,'Programme 02',2021,'Sector 2', 100000000);

select * from PY;
