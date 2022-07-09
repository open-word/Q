use Uganda;
go

drop view if exists NDP3.v2;
go

create view NDP3.v2 as
select
	vp.[Programme NDP3 Reference],

	vpyb.[PYB Year Name],
	vpyb.[PYB Budget],

	vpkr.[PKR NDP3 Reference],
	
	vpkryt.[PKRYT Year Name],
	vpkryt.[PKRYT Weight],
	vpkryt.[PKRYT Actual],
	vpkryt.[PKRYT Target],
	vpkryt.[PKRYT Performance],
	vpkryt.[PKRYT Weighted Performance]
from
	NDP3.vProgrammes vp
	join NDP3.vProgrammeYearlyBudgets vpyb on vp.[Programme ID] = vpyb.[Programme ID]
	join NDP3.vProgrammeKeyResults vpkr on vp.[Programme ID] = vpkr.[Programme ID]
	join NDP3.VProgrammeKeyResultYearlyTargets vpkryt on vpkr.[PKR ID] = vpkryt.[PKR ID] and vpyb.[PYB Year Name] = vpkryt.[PKRYT Year Name]
go

--select * from NDP3.v2;
--go

select
	convert(decimal(14,4), sum([PKRYT Weighted Performance]) / sum([PKRYT Weight]))	[Q]
from
	NDP3.v2;

--select '09';
--go