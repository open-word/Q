use Uganda;
go

drop table if exists NDP3.Tests;
go

create table NDP3.Tests
(
	TestID int identity,
	Name nvarchar(30),
	Result nchar(4),
	constraint PK_Tests primary key (TestID)
);

-- NDP3 Interventions and Actors
declare @NDP3InterventionsActors bit;
select @NDP3InterventionsActors = count(1)
from 
	ndp3.Interventions cross apply string_split(Actors,',') i
	full outer join
	ndp3.Actors a on trim(i.value) = a.NameInIntervention
where
	i.value is null or a.NameInIntervention is null;
insert NDP3.Tests (Name, Result) values ('NDP3InterventionsActors', iif(@NDP3InterventionsActors=0,'Pass','Fail'));

select * from NDP3.Tests;