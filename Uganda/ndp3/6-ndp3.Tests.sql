use Uganda;
go
drop table if exists ndp3.Tests;
create table ndp3.Tests
(
	TestID int identity,
	Name nvarchar(50),
	Result nchar(4),
	constraint PK_Tests primary key (TestID)
);

-- ndp3 ProgrammeObjectiveInterventions and Actors
declare @ProgrammeObjectiveInterventions_Actors bit;
select @ProgrammeObjectiveInterventions_Actors = count(1)
from 
	ndp3.ProgrammeObjectiveInterventions poi cross apply 
	string_split(poi.Actors,',') poia full outer join
	ndp3.Actors a on trim(poia.value) = a.NameInIntervention
where
	poia.value is null or a.NameInIntervention is null;
insert ndp3.Tests (Name, Result) values ('ProgrammeObjectiveInterventions_Actors', iif(@ProgrammeObjectiveInterventions_Actors=0,'Pass','Fail'));

select * from ndp3.Tests;