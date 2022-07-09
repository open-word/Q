use Uganda;
go

select count(distinct NDP3Reference) from ndp3.ProgrammeKeyResults;

select count(distinct ProgrammeKeyResultID) from ndp3.ProgrammeKeyResultTargets;

select ProgrammeKeyResultID, count(ProgrammeKeyResultTargetID) from ndp3.ProgrammeKeyResultTargets group by ProgrammeKeyResultID having count(ProgrammeKeyResultTargetID) != 5;

select * from NDP3.ProgrammeKeyResults pkr left join ndp3.ProgrammeKeyResultTargets pkrt on pkr.ProgrammeKeyResultID = pkrt.ProgrammeKeyResultID where pkrt.ProgrammeKeyResultID is null


select count(1) from ndp3.ProgrammeKeyResultTargets