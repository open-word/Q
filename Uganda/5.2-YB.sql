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
	(1, 60797.80),
	(2, 59408.80),
	(3, 67037.80),
	(4, 69035.80),
	(5, 81158.80);

-- Allocate Budget using Points.
update 
	YB
set 
	YB.Budget = YB2.Share * B.Budget
from 
	YB
	join 
	(
		select 
			YB.YearID, 
			(YB.Points/sum(YB.Points) over ()) [Share] 
		from YB
	) 
	YB2 on YB.YearID = YB2.YearID
	cross join B;

--select * from YB;

select '5.2'
go