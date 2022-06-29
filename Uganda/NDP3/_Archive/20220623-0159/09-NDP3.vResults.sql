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
	
	vpkrt.[PKRT Name],
	vpkrt.[PKRT Weight],
	vpkrt.[PKRT Actual],
	vpkrt.[PKRT Target],
	vpkrt.[PKRT Performance],
	vpkrt.[PKRT Weighted Performance]
from
	NDP3.vProgrammes vp
	join NDP3.vProgrammeKeyResults vpkr on vp.[Programme ID] = vpkr.[Programme ID]
	join NDP3.vProgrammeKeyResultTargets vpkrt on vpkr.[PKR ID] = vpkrt.[PKR ID];
go

--select * from NDP3.vResults;
--go

select '09';
go