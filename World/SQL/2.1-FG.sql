use World;
go

create table FG
(
	FCode nvarchar(5),
	GCode nvarchar(2),
	FGWeight float,
	constraint PK_FG primary key (FCode, GCode),
	constraint FK_FG_F foreign key (FCode) references F (FCode),
	constraint FK_FG_G foreign key (GCode) references G (GCode)
);

-- -----------------------------------------------------------------
-- Insert
-- -----------------------------------------------------------------

insert FG (FCode, GCode)
select
	F.FCode,
	G.GCode
from
	F 
	join G on 
		F.FCode = G.FCode
order by
	F.FCode,
	G.GCode;

-- -----------------------------------------------------------------
-- FGWeight
-- -----------------------------------------------------------------

update
	FG
set
	FG.FGWeight = FG2.FGWeight
from
	FG join
	(
		select
			FG.FCode,
			FG.GCode,
			(G.GPoints / sum(G.GPoints) over (partition by FG.FCode)) * F.FWeight [FGWeight]
		from
			FG 
			join F on 
				FG.FCode = F.FCode 
			join G on 
				FG.GCode = G.GCode
	) FG2 on
		FG.FCode = FG2.FCode and
		FG.GCode = FG2.GCode;

--select * from FG;

--select '2.1'
--go