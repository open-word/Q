use Understanding;
go

create Table PYB
(
	ProgrammeID nvarchar(25),
	YearID int,
	Points float,
	Budget decimal(18,4),
	constraint PK_PYB primary key (ProgrammeID, YearID),
	constraint FK_PYB_PY foreign key (ProgrammeID, YearID) references PY (ProgrammeID, YearID)
);
go

-- Allocate Points using a random number.
insert 
	PYB (ProgrammeID, YearID, Points) 
select
	py2.ProgrammeID,
	py2.YearID,
	rn.RN_010_090 
from 
	(
		select 
			py.ProgrammeID,
			py.YearID, 
			200+row_number() over(order by py.ProgrammeID, py.YearID) RNID -- start at 200
		from 
			PY py
	) py2 
	join RN rn on py2.RNID = rn.RNID;

-- Allocate Budget using Points.
update 
	pyb
set 
	pyb.Budget = pyb2.Share * yb.Budget
from 
	PYB pyb
	join 
	(
		select 
			PYB.ProgrammeID,
			PYB.YearID, 
			(PYB.Points/sum(PYB.Points) over (partition by PYB.YearID)) [Share] 
		from 
			PYB
	) 
	pyb2 on pyb.ProgrammeID = pyb2.ProgrammeID and pyb.YearID = pyb2.YearID
	join YB yb on pyb.YearID = yb.YearID;

--select * from PYB;

select '5.3'
go

--select 
--	YearID,
--	ProgrammeID,
--	sum(Budget)
--from 
--	PYB
--group by
--	rollup(YearID, ProgrammeID);

--select 
--	ProgrammeID,
--	YearID,
--	sum(Budget)
--from 
--	PYB
--group by
--	rollup(ProgrammeID, YearID);