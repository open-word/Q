select distinct
	GTISAY.GoalCode,
	GTISAY.TargetCode,
	GTISAY.IndicatorCode,
	GTISAY.SeriesCode,
	GTISAY.AreaCode,
	GTISAY.YearCode,
	1								[Weight],				-- Equal weighting for now.
	iif(R.Goal is null, 0, 1)		[Performance],			-- Yes/No at this point. 
	1 * iif(R.Goal is null, 0, 1)	[WeightedPerformance]	-- Purely for symmetry :)
from
	GTISAY full outer join
	(
		select distinct
			Goal,
			Target,
			Indicator,
			Series,
			GeoAreaCode,
			TimePeriod
		from 
			Records
	) R
	on
		GTISAY.GoalCode = R.Goal and
		GTISAY.TargetCode = R.Target and
		GTISAY.IndicatorCode = R.Indicator and
		GTISAY.SeriesCode = R.Series and
		GTISAY.AreaCode = R.GeoAreaCode and
		GTISAY.YearCode = R.TimePeriod
where
	GTISAY.GoalCode is null or 
	GTISAY.TargetCode is null or
	GTISAY.IndicatorCode is null or 
	GTISAY.SeriesCode is null or 
	GTISAY.AreaCode is null or 
	GTISAY.YearCode is null
order by
	R.GeoAreaCode;