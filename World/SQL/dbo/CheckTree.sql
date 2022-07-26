use World;
go

select 
	F.FCode		[F.FCode],
	G.GCode		[G.GCode],
	T.TCode		[T.TCode],
	I.ICode		[I.ICode],
	[IS].ICode	[IS.ICode],
	S.SCode		[S.SCode]
from
	F left join
	G on F.FCode = G.FCode left join
	T on G.GCode = T.GCode left join
	I on T.TCode = I.TCode left join
	[IS] on I.ICode = [IS].ICode left join
	[S] on [IS].SCode = S.SCode
where
	G.GDescription like 'Missing%' or
	T.TDescription like 'Missing%' or
	I.IDescription like 'Missing%' or
	[IS].ICode like 'Missing%' or
	S.SDescription like 'Missing%'
