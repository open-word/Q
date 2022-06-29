use Uganda;
go

-- [Programme] [ProgrammeKeyResult] [ProgrammeYear] [ProgrammeYearBudget] [ProgrammeYearKeyResult]

declare @Data table (ProgrammeID int, YearID int, ProgrammeYearBudget decimal, ProgrammeKeyResultID nchar(8), ProgrammeKeyResultPerformance float, PointID int, PointBudget float, PointPerformance float, PointWeightedPerformance float)

insert @Data (ProgrammeID, YearID, ProgrammeYearBudget, ProgrammeKeyResultID, ProgrammeKeyResultPerformance, PointID) values
	(1, 2020, 100000, '01.01.01', 0.6, 1),
	(1, 2020, 100000, '01.02.01', 0.8, 2),
	(1, 2021, 200000, '01.01.01', 1.0, 3),
	(1, 2021, 200000, '01.02.01', 1.2, 4),
	(2, 2020, 400000, '02.01.01', 1.4, 5),
	(2, 2020, 400000, '02.02.01', 1.6, 6),
	(2, 2021, 800000, '02.01.01', 1.8, 21),
	(2, 2021, 800000, '02.02.01', 2.0, 23);

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