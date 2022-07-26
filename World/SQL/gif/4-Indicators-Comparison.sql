-- All present and correct (apart from the missing indicator against target 11.c).
select * from I full outer join gif.Indicators on I.ICode = gif.Indicators.IndicatorCodePadded where I.ICode is null or gif.Indicators.IndicatorCodePadded is null;

select I.ICode, IDescription from I full outer join gif.Indicators on I.ICode = gif.Indicators.IndicatorCodePadded where I.IDescription <> gif.Indicators.IndicatorDescription order by I.ICode;

select I.ICode, gif.Indicators.IndicatorDescription from I full outer join gif.Indicators on I.ICode = gif.Indicators.IndicatorCodePadded where I.IDescription <> gif.Indicators.IndicatorDescription order by I.ICode;