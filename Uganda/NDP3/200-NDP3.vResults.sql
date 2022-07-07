use Uganda;
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
	
	vpkryr.[PKRYR Year Name],
	vpkryr.[PKRYR Weight],
	vpkryr.[PKRYR Actual],
	vpkryr.[PKRYR Target],
	vpkryr.[PKRYR Performance],
	vpkryr.[PKRYR Weighted Performance]
from
	NDP3.vProgrammes vp
	join NDP3.vProgrammeKeyResults vpkr on vp.[Programme ID] = vpkr.[Programme ID]
	join NDP3.vProgrammeKeyResultYearlyReturns vpkryr on vpkr.[PKR ID] = vpkryr.[PKR ID];
go

--select * from NDP3.vResults;
--go

select '200';
go