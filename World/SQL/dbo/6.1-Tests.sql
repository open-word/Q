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

declare @TestFGTISAWeight bit = iif(abs((select sum(FGTISAWeight) from FGTISA)-@TotalWeight) <= @WeightTolerance,1,0);
insert Tests (Code, Result) values ('TestFGTISAWeight', iif(@TestFGTISAWeight=1,'Pass','Fail'));

declare @TestFGTISAYWeight bit = iif(abs((select sum(FGTISAYWeight) from FGTISAY)-@TotalWeight) <= @WeightTolerance,1,0);
insert Tests (Code, Result) values ('TestFGTISAYWeight', iif(@TestFGTISAYWeight=1,'Pass','Fail'));

declare 
	@CoveragePerRecords int = (select count(1) from (select distinct Goal,Target,Indicator,Series,GeoAreaCode,TimePeriod from Records) t),
	@CoveragePerR int = (select count(1) from R),
	@CoveragePerFGTISAY int = (select count(1) from FGTISAY where FGTISAYCoverage=1);

declare @TestFGTISAYCoverage bit = iif(@CoveragePerRecords = @CoveragePerR and @CoveragePerRecords = @CoveragePerFGTISAY, 1, 0);
insert Tests (Code, Result) values ('TestFGTISAYCoverage', iif(@TestFGTISAYCoverage=1,'Pass','Fail'));

select * from Tests;

select '5.1'
go