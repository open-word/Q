use Understanding;
go

create Table YB
(
	YearID int,
	Points float,
	Budget decimal(18,4),
	constraint PK_YB primary key (YearID),
	constraint FK_YB_Y foreign key (YearID) references Y (YearID)
);
go

-- Allocate Points using a random number.
insert 
	YB (YearID, Points) 
select 
	y2.YearID,
	rn.RN_010_090 
from 
	(
		select 
			y.YearID, 
			100+row_number() over(order by y.YearID) RNID -- start at 100
		from 
			Y y
	) y2 
	join RN rn on y2.RNID = rn.RNID;

-- Allocate Budget using Points.
update 
	yb
set 
	yb.Budget = yb2.Share * b.Budget
from 
	YB yb
	join 
	(
		select 
			YB.YearID, 
			(YB.Points/sum(YB.Points) over ()) [Share] 
		from YB
	) 
	yb2 on yb.YearID = yb2.YearID
	cross join B b;

--select * from YB;

select '5.2'
go

--select 
--	YearID,
--	sum(Budget)
--from 
--	YB
--group by
--	rollup(YearID);