use Test;
go

update
	A
set 
	A.AWeight = A2.AShare * X.Weight
from
	(select 1 [Weight]) X cross join
	A join
	(
		select
			ACode,
			APoints / sum(APoints) over () AShare
		from
			A
	) A2 on A.ACode = A2.ACode;
select * from A;

update
	B
set 
	B.BWeight = B2.BShare * A.AWeight
from
	A join
	B on A.ACode = B.ACode join
	(
		select
			BCode,
			BPoints / sum(BPoints) over (partition by ACode) BShare
		from
			B
	) B2 on B.BCode = B2.BCode;
select * from B;

update
	C
set 
	C.CWeight = C2.CShare * B.BWeight
from
	B join
	C on B.BCode = C.BCode join
	(
		select
			CCode,
			CPoints / sum(CPoints) over (partition by BCode) CShare
		from
			C
	) C2 on C.CCode = C2.CCode;
select * from C;

update
	D
set 
	D.DWeight = D2.DShare * C.CWeight
from
	C join
	D on C.CCode = D.CCode join
	(
		select
			DCode,
			DPoints / sum(DPoints) over (partition by CCode) DShare
		from
			D
	) D2 on D.DCode = D2.DCode;
select * from D;