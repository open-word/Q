use Uganda;
go

select
	convert(decimal(14,4), sum([PKRYR Weighted Performance]) / sum([PKRYR Weight]))	[Q]
from
	NDP3.vResults;

--select
--	[Programme NDP3 Reference],
--	[PKR NDP3 Reference],
--	[PKRYR Year Name],
--	sum([PKRYR Weight])																[Sum of Weight],
--	sum([PKRYR Actual])																[Sum of Actual],
--	sum([PKRYR Target])																[Sum of Target],
--	sum([PKRYR Performance])														[Sum of Performance],
--	sum([PKRYR Weighted Performance])												[Sum of Weighted Performance],
--	convert(decimal(10,4), sum([PKRYR Weighted Performance]) / sum([PKRYR Weight]))	[Q]
--from
--	NDP3.vResults
--group by rollup(
--	[Programme NDP3 Reference],
--	[PKR NDP3 Reference],
--	[PKRYR Year Name])
--order by
--	[Programme NDP3 Reference],
--	[PKR NDP3 Reference],
--	[PKRYR Year Name];

--select convert(decimal(6,4),0.99991), round(convert(float,0.99991),4);
--select convert(decimal(6,4),0.99992), round(convert(float,0.99992),4);
--select convert(decimal(6,4),0.99993), round(convert(float,0.99993),4);
--select convert(decimal(6,4),0.99994), round(convert(float,0.99994),4);
--select convert(decimal(6,4),0.99995), round(convert(float,0.99995),4);
--select convert(decimal(6,4),0.99996), round(convert(float,0.99996),4);
--select convert(decimal(6,4),0.99997), round(convert(float,0.99997),4);
--select convert(decimal(6,4),0.99998), round(convert(float,0.99998),4);
--select convert(decimal(6,4),0.99999), round(convert(float,0.99999),4);

select '210';
go