use Uganda;
go

create Table PYB
(
	ProgrammeID int,
	YearID int,
	Points float,
	Budget decimal(18,8),
	constraint PK_PYB primary key (ProgrammeID, YearID),
	constraint FK_PYB_PY foreign key (ProgrammeID, YearID) references PY (ProgrammeID, YearID)
);
go

-- Allocate Points.
insert PYB (ProgrammeID, YearID, Points) values
	(1 , 1, 3942.00   ),
	(1 , 2, 3438.00   ),
	(1 , 3, 3431.00   ),
	(1 , 4, 3361.00   ),
	(1 , 5, 4484.00   ),
	(2 , 1, 1011.00   ),
	(2 , 2, 904.00    ),
	(2 , 3, 1157.00   ),
	(2 , 4, 992.00    ),
	(2 , 5, 1068.00   ),
	(3 , 1, 1337.20   ),
	(3 , 2, 1146.20   ),
	(3 , 3, 1441.20   ),
	(3 , 4, 1168.20   ),
	(3 , 5, 1262.20   ),
	(4 , 1, 1776.00   ),
	(4 , 2, 1910.00   ),
	(4 , 3, 2271.00   ),
	(4 , 4, 2507.00   ),
	(4 , 5, 2881.00   ),
	(5 , 1, 2264.00   ),
	(5 , 2, 2313.00   ),
	(5 , 3, 2537.00   ),
	(5 , 4, 2283.00   ),
	(5 , 5, 2505.00   ),
	(6 , 1, 1345.80   ),
	(6 , 2, 1305.80   ),
	(6 , 3, 1565.80   ),
	(6 , 4, 1563.80   ),
	(6 , 5, 1804.80   ),
	(7 , 1, 1482.80   ),
	(7 , 2, 1498.80   ),
	(7 , 3, 1792.80   ),
	(7 , 4, 1862.80   ),
	(7 , 5, 2063.80   ),
	(8 , 1, 8403.80   ),
	(8 , 2, 8466.80   ),
	(8 , 3, 11917.80  ),
	(8 , 4, 11537.80  ),
	(8 , 5, 11922.80  ),
	(9 , 1, 1822.20   ),
	(9 , 2, 1514.20   ),
	(9 , 3, 1869.20   ),
	(9 , 4, 1436.20   ),
	(9 , 5, 1539.20   ),
	(10, 1, 2392.00   ),
	(10, 2, 2440.00   ),
	(10, 3, 2717.00   ),
	(10, 4, 3208.00   ),
	(10, 5, 5108.00   ),
	(11, 1, 1366.00   ),
	(11, 2, 1341.00   ),
	(11, 3, 1536.00   ),
	(11, 4, 1431.00   ),
	(11, 5, 1568.00   ),
	(12, 1, 10163.80  ),
	(12, 2, 10357.80  ),
	(12, 3, 10166.80  ),
	(12, 4, 11144.80  ),
	(12, 5, 12835.80  ),
	(13, 1, 927.20    ),
	(13, 2, 978.20    ),
	(13, 3, 983.20    ),
	(13, 4, 1034.20   ),
	(13, 5, 1238.20   ),
	(14, 1, 3031.80   ),
	(14, 2, 3265.80   ),
	(14, 3, 3709.80   ),
	(14, 4, 4168.80   ),
	(14, 5, 4808.80   ),
	(15, 1, 8020.20   ),
	(15, 2, 7464.20   ),
	(15, 3, 7978.20   ),
	(15, 4, 8654.20   ),
	(15, 5, 9935.20   ),
	(16, 1, 3333.80   ),
	(16, 2, 3475.80   ),
	(16, 3, 3846.80   ),
	(16, 4, 4157.80   ),
	(16, 5, 5466.80   ),
	(17, 1, 6218.20   ),
	(17, 2, 5706.20   ),
	(17, 3, 6201.20   ),
	(17, 4, 6599.20   ),
	(17, 5, 7779.20   ),
	(18, 1, 1960.00   ),
	(18, 2, 1883.00   ),
	(18, 3, 1916.00   ),
	(18, 4, 1926.00   ),
	(18, 5, 2888.00   );

-- Allocate Budget using Points.
update 
	PYB
set 
	PYB.Budget = PYB2.Share * yb.Budget
from 
	PYB PYB
	join 
	(
		select 
			PYB.ProgrammeID,
			PYB.YearID, 
			(PYB.Points/sum(PYB.Points) over (partition by PYB.YearID)) [Share] 
		from 
			PYB
	) 
	PYB2 on PYB.ProgrammeID = PYB2.ProgrammeID and PYB.YearID = PYB2.YearID
	join YB on PYB.YearID = YB.YearID;

--select * from PYB;

select '5.3'
go

--select 
--	YearID,
--	sum(Budget)
--from 
--	PYB
--group by
--	rollup(YearID);

--select 
--	ProgrammeID,
--	YearID,
--	sum(Budget)
--from 
--	PYB
--group by
--	rollup(ProgrammeID, YearID);