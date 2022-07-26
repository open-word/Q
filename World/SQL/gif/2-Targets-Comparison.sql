-- All present and correct.
select * from T full outer join gif.Targets on T.TCode = gif.Targets.TargetCodePadded where T.TCode is null or gif.Targets.TargetCodePadded is null;

select T.TCode, TDescription from T full outer join gif.Targets on T.TCode = gif.Targets.TargetCodePadded where T.TDescription <> gif.Targets.TargetDescription;

select T.TCode, gif.Targets.TargetDescription from T full outer join gif.Targets on T.TCode = gif.Targets.TargetCodePadded where T.TDescription <> gif.Targets.TargetDescription;