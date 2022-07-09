use Uganda;
go

drop view if exists NDP3.vResults;
go

create view NDP3.vResults as
select
	vp.[Programme NDP3 Reference],  
	vp.[Programme Name],
	vp.[Programme NDP3 Reference] + ' ' + vp.[Programme Name]	[Programme Reference Name],
	vp.[Programme Acronym],
	vp.[Programme TLA],

	vpkr.[PKR NDP3 Reference],
	vpkr.[PKR Name],
	vpkr.[PKR NDP3 Reference] + ' ' + vPKR.[PKR Name]			[PKR Reference Name],
	
	vpkryt.[PKRYT Year Name],
	vpkryt.[PKRYT Weight],
	vpkryt.[PKRYT Actual],
	vpkryt.[PKRYT Target],
	vpkryt.[PKRYT Performance],
	vpkryt.[PKRYT Weighted Performance]
from
	NDP3.vProgrammes vp
	join NDP3.vProgrammeKeyResults vpkr on vp.[Programme ID] = vpkr.[Programme ID]
	join NDP3.vProgrammeKeyResultYearlyTargets vpkryt on vpkr.[PKR ID] = vpkryt.[PKR ID];
go

--select * from NDP3.vResults;
--go

select '09';
go