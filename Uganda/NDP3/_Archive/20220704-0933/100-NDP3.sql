use Uganda;
go

drop view if exists NDP3.vProgrammesMinistries
drop view if exists NDP3.vResults;
drop view if exists NDP3.vProgrammeKeyResultYearlyReturns;
drop view if exists NDP3.vProgrammeKeyResults;
drop view if exists NDP3.vProgrammeYearlyBudgets;
drop view if exists NDP3.vProgrammes;
drop view if exists NDP3.vMinistries;
drop view if exists NDP3.vDistricts;
drop view if exists NDP3.vRegions;
go

drop table if exists NDP3.ProgrammeMinistryReturns
drop table if exists NDP3.ProgrammesMinistries;
drop table if exists NDP3.Results;
drop table if exists NDP3.ProgrammeKeyResultYearlyReturns;
drop table if exists NDP3.ProgrammeKeyResults;
drop table if exists NDP3.ProgrammeYearlyBudgets;
drop table if exists NDP3.Programmes;
drop table if exists NDP3.Ministries;
drop table if exists NDP3.Districts;
drop table if exists NDP3.Regions;
drop table if exists NDP3.RandomNumbers;
go

select '100';
go