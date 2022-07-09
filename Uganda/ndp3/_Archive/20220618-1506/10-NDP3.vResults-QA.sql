use Uganda;
go

select
	convert(decimal(10,4), sum([PKRT Weighted Performance]) / sum([PKRT Weight]))	[Q]
from
	NDP3.vResults
group by rollup(
	[Programme Name],
	[PKR NDP3 Reference],
	[PKRT Name])
having
	[Programme Name] is null
	and [PKR NDP3 Reference] is null
	and [PKRT Name] is null
order by
	[Programme Name],
	[PKR NDP3 Reference],
	[PKRT Name];

--select
--	[Programme Name],
--	[PKR NDP3 Reference],
--	[PKRT Name],
--	sum([PKRT Weight])																[Sum of Weight],
--	sum([PKRT Actual])																[Sum of Actual],
--	sum([PKRT Target])																[Sum of Target],
--	sum([PKRT Performance])															[Sum of Performance],
--	sum([PKRT Weighted Performance])												[Sum of Weighted Performance],
--	convert(decimal(10,4), sum([PKRT Weighted Performance]) / sum([PKRT Weight]))	[Q]
--from
--	NDP3.vResults
--group by rollup(
--	[Programme Name],
--	[PKR NDP3 Reference],
--	[PKRT Name])
--order by
--	[Programme Name],
--	[PKR NDP3 Reference],
--	[PKRT Name];

--select convert(decimal(6,4),0.99991), round(convert(float,0.99991),4);
--select convert(decimal(6,4),0.99992), round(convert(float,0.99992),4);
--select convert(decimal(6,4),0.99993), round(convert(float,0.99993),4);
--select convert(decimal(6,4),0.99994), round(convert(float,0.99994),4);
--select convert(decimal(6,4),0.99995), round(convert(float,0.99995),4);
--select convert(decimal(6,4),0.99996), round(convert(float,0.99996),4);
--select convert(decimal(6,4),0.99997), round(convert(float,0.99997),4);
--select convert(decimal(6,4),0.99998), round(convert(float,0.99998),4);
--select convert(decimal(6,4),0.99999), round(convert(float,0.99999),4);