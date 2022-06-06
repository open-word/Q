use Q;
go

-- by cluster
select 
	j, 
	convert(decimal(5,2),Sum(wipi))			[Sum of wipi],
	convert(decimal(5,2),Sum(wi))			[Sum of wi],
	convert(decimal(5,2),Sum(wipi)/Sum(wi)) [Q]
from Example_Aggregation group by j order by j;

-- overall
select 
	convert(decimal(5,2),Sum(wipi))			[Sum of wipi],
	convert(decimal(5,2),Sum(wi))			[Sum of wi],
	convert(decimal(5,2),Sum(wipi)/Sum(wi)) [Q]
from Example_Aggregation;

-- rollup
select 
j,i,
	convert(decimal(5,2),Sum(wipi))			[Sum of wipi],
	convert(decimal(5,2),Sum(wi))			[Sum of wi],
	convert(decimal(5,2),Sum(wipi)/Sum(wi)) [Q]
from Example_Aggregation
group by rollup (j, i);

-- rollup with filter
select 
j,i,
	convert(decimal(5,2),Sum(wipi))			[Sum of wipi],
	convert(decimal(5,2),Sum(wi))			[Sum of wi],
	convert(decimal(5,2),Sum(wipi)/Sum(wi)) [Q]
from Example_Aggregation
where j = 1 and i in (1,2)
group by rollup (j, i);