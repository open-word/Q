use Test;
go

select 
	A.ACode,
	B.BCode,
	C.CCode,
	D.DCode,
	D.DWeight
into
	ABCD
from
	A join
	B on A.ACode = B.ACode join
	C on B.BCode = C.BCode join
	D on C.CCode = D.CCode
order by
	A.ACode,
	B.BCode,
	C.CCode,
	D.DCode;

select
	*
from
	ABCD
order by
	ACode,
	BCode,
	CCode, 
	DCode;

select sum(DWeight) from ABCD;