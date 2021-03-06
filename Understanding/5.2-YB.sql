use Uganda;
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

-- Allocate Points.
insert YB (YearID, Points) values
	(2020, 60797.80),
	(2021, 59408.80),
	(2022, 67037.80),
	(2023, 69035.80),
	(2024, 81158.80);

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

