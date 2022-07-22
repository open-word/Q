use World;
go
drop table if exists FGTISAY;
create table FGTISAY
(
	FCode nchar(5),
	GCode nchar(2),
	TCode nvarchar(5),
	ICode nvarchar(8),
	SCode nvarchar(20),
	ACode nchar(3),
	YCode nchar(4),
	constraint PK_FGTISAY primary key (FCode, GCode, TCode, ICode, SCode, ACode, YCode),
	constraint FK_FGTISAY_F foreign key (FCode) references F (FCode),
	constraint FK_FGTISAY_G foreign key (GCode) references G (GCode),
	constraint FK_FGTISAY_T foreign key (TCode) references T (TCode),
	constraint FK_FGTISAY_I foreign key (ICode) references I (ICode),
	constraint FK_FGTISAY_S foreign key (SCode) references S (SCode),
	constraint FK_FGTISAY_A foreign key (ACode) references A (ACode),
	constraint FK_FGTISAY_Y foreign key (YCode) references Y (YCode)
);

insert FGTISAY (FCode, GCode, TCode, ICode, SCode, ACode, YCode)
select
	F.FCode,
	G.GCode,
	T.TCode,
	I.ICode,
	S.SCode,
	A.ACode,
	Y.YCode
from
	F join
	G on F.FCode = G.FCode join
	T on G.GCode = T.GCode join
	I on T.TCode = I.TCode join
	[IS] on I.ICode = [IS].ICode join
	S on [IS].SCode = S.SCode cross join
	A cross join
	Y
where
	A.AType = 'Country'
order by
	F.FCode,
	G.GCode,
	T.TCode,
	I.ICode,
	S.SCode,
	A.ACode,
	Y.YCode;

--select * from FGTISAY;

select '3.1'
go