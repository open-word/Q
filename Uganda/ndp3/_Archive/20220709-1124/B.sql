use Uganda;
go

-- [Programme] [ProgrammeKeyResult] [ProgrammeYear] [ProgrammeYearBudget] [ProgrammeYearKeyResult]

declare @Data table (ProgrammeID int, YearID int, ProgrammeYearBudget decimal, ProgrammeKeyResultID nchar(8), ProgrammeKeyResultPerformance float, ActorID nchar(3), DistrictID nvarchar(25), PointID int, PointBudget float, PointPerformance float, PointWeightedPerformance float)

insert @Data (ProgrammeID, YearID, ProgrammeYearBudget, ProgrammeKeyResultID, ProgrammeKeyResultPerformance, ActorID, DistrictID, PointID) values
	(1, 2020, 100000, '01.01.01', 0.6, 'MOA', 'Achi',  1),
	(1, 2020, 100000, '01.01.01', 0.6, 'MOA', 'Gulu',  2),
	(1, 2020, 100000, '01.01.01', 0.6, 'MOB', 'Achi',  3),
	(1, 2020, 100000, '01.01.01', 0.6, 'MOB', 'Gulu',  4),
	(1, 2020, 100000, '01.02.01', 0.8, 'MOA', 'Achi',  5),
	(1, 2020, 100000, '01.02.01', 0.8, 'MOA', 'Gulu',  6),
	(1, 2020, 100000, '01.02.01', 0.8, 'MOB', 'Achi',  7),
	(1, 2020, 100000, '01.02.01', 0.8, 'MOB', 'Gulu',  8),
	(1, 2021, 200000, '01.01.01', 1.0, 'MOA', 'Achi',  9),
	(1, 2021, 200000, '01.01.01', 1.0, 'MOA', 'Gulu', 10),
	(1, 2021, 200000, '01.01.01', 1.0, 'MOB', 'Achi', 11),
	(1, 2021, 200000, '01.01.01', 1.0, 'MOB', 'Gulu', 12),
	(1, 2021, 200000, '01.02.01', 1.2, 'MOA', 'Achi', 13),
	(1, 2021, 200000, '01.02.01', 1.2, 'MOA', 'Gulu', 14),
	(1, 2021, 200000, '01.02.01', 1.2, 'MOB', 'Achi', 15),
	(1, 2021, 200000, '01.02.01', 1.2, 'MOB', 'Gulu', 16),
	(2, 2020, 400000, '02.01.01', 1.4, 'MOA', 'Achi', 17),
	(2, 2020, 400000, '02.01.01', 1.4, 'MOA', 'Gulu', 18),
	(2, 2020, 400000, '02.02.01', 1.6, 'MOA', 'Achi', 19),
	(2, 2020, 400000, '02.02.01', 1.6, 'MOA', 'Gulu', 20),
	(2, 2021, 800000, '02.01.01', 1.8, 'MOA', 'Achi', 21),
	(2, 2021, 800000, '02.01.01', 1.8, 'MOA', 'Gulu', 22),
	(2, 2021, 800000, '02.02.01', 2.0, 'MOA', 'Achi', 23),
	(2, 2021, 800000, '02.02.01', 2.0, 'MOA', 'Gulu', 24);

-- PointBudget = ProgrammeYearBudget / Count of Points in ProgrammeYear (i.e. distribute equally).	
update 
	d1
set
	PointBudget = d2.PointBudget
from 
	@Data d1
	join
	(
		select 
			ProgrammeID,
			YearID,
			ProgrammeYearBudget,
			PointID,
			ProgrammeYearBudget / (count(*) over(partition by ProgrammeID,YearID)) [PointBudget]
		from
			@Data 
		group by
			ProgrammeID,
			YearID,
			ProgrammeYearBudget,
			PointID
	) d2 on d1.PointID = d2.PointID

-- PointPerformance = ProgrammeYearKeyResult.Performance (formerly ProgrammeKeyResultTarget, just mirror across all points for the Programme Year KeyResult.
update
	@Data
set
	PointPerformance = ProgrammeKeyResultPerformance;

-- PointWeightedPerformance
update
	@Data
set
	PointWeightedPerformance = PointBudget * PointPerformance;

select * from @Data;

select sum(PointWeightedPerformance) / sum(PointBudget) from @Data;