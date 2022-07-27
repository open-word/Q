use World;
go

drop table if exists Tests;

drop table if exists FGTISAYWeightCoverage;

drop table if exists R;

drop table if exists FGTISAY;
drop table if exists FGTISA;
drop table if exists FGTIS;
drop table if exists FGTI;
drop table if exists FGT;
drop table if exists FG;

drop table if exists Y;
drop table if exists A;
drop table if exists [IS];
drop table if exists S;
drop table if exists I;
drop table if exists T;
drop table if exists G;
drop table if exists F;

drop function if exists PadCode;

dbcc shrinkfile (World_Log, 1);  
go

select '0.0';
go