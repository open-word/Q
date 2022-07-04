select 
	[P Reference], 
	[Y Reference], 
	[I Reference], 
	[A Reference], 
	convert(decimal(18,4),sum([PYIA Weighted Performance]) / sum([PYIA Budget])) Q 
from 
	vpyia
group by rollup (
	[P Reference], 
	[Y Reference], 
	[I Reference], 
	[A Reference]);
