use World;
go
drop table if exists Tests;
create table Tests
(
	TestID int identity,
	Code nchar(20),
	Result nchar(4),
	constraint PK_Tests primary key (TestID),
	constraint UQ_Tests_Code unique (Code)
);

declare @TotalWeight float = 1;
declare @WeightTolerance float = 0.00000001;

declare @TestFWeight bit = iif(abs((select sum(FWeight) from F)-@TotalWeight) <= @WeightTolerance,1,0);
insert Tests (Code, Result) values ('TestFWeight', iif(@TestFWeight=1,'Pass','Fail'));

declare @TestFGWeight bit = iif(abs((select sum(FGWeight) from FG)-@TotalWeight) <= @WeightTolerance,1,0);
insert Tests (Code, Result) values ('TestFGWeight', iif(@TestFGWeight=1,'Pass','Fail'));

declare @TestFGTWeight bit = iif(abs((select sum(FGTWeight) from FGT)-@TotalWeight) <= @WeightTolerance,1,0);
insert Tests (Code, Result) values ('TestFGTWeight', iif(@TestFGTWeight=1,'Pass','Fail'));

declare @TestFGTIWeight bit = iif(abs((select sum(FGTIWeight) from FGTI)-@TotalWeight) <= @WeightTolerance,1,0);
insert Tests (Code, Result) values ('TestFGTIWeight', iif(@TestFGTIWeight=1,'Pass','Fail'));

declare @TestFGTISWeight bit = iif(abs((select sum(FGTISWeight) from FGTIS)-@TotalWeight) <= @WeightTolerance,1,0);
insert Tests (Code, Result) values ('TestFGTISWeight', iif(@TestFGTISWeight=1,'Pass','Fail'));

declare @TestFGTISPWeight bit = iif(abs((select sum(FGTISPWeight) from FGTISP)-@TotalWeight) <= @WeightTolerance,1,0);
insert Tests (Code, Result) values ('TestFGTISPWeight', iif(@TestFGTISPWeight=1,'Pass','Fail'));

declare @TestFGTISPYWeight bit = iif(abs((select sum(FGTISPYWeight) from FGTISPY)-@TotalWeight) <= @WeightTolerance,1,0);
insert Tests (Code, Result) values ('TestFGTISPYWeight', iif(@TestFGTISPYWeight=1,'Pass','Fail'));

declare 
	@CoveragePerRecords int = (select count(1) from (select distinct Goal,Target,Indicator,Series,GeoAreaCode,TimePeriod from Records) t),
	@CoveragePerR int = (select count(1) from R),
	@CoveragePerFGTISPY int = (select count(1) from FGTISPY where FGTISPYCoverage=1);

declare @TestFGTISPYCoverage bit = iif(@CoveragePerRecords = @CoveragePerR and @CoveragePerRecords = @CoveragePerFGTISPY, 1, 0);
insert Tests (Code, Result) values ('TestFGTISPYCoverage', iif(@TestFGTISPYCoverage=1,'Pass','Fail'));

select * from Tests;

select '5.1'
go