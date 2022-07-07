use Uganda;
go

select distinct
	a.Acronym,
	i.Actor
from
	ndp3.Acronyms a full outer join 
	(select 
		*,
		trim(value) Actor
	from
		ndp3.Interventions
		cross apply string_split(Actors,',')
	) i on a.Acronym = i.Actor
where
	a.Acronym is null
order by
	i.Actor;

--select * from ndp3.Acronyms where Acronym = 'UCDA'