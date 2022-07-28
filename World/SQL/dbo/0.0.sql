use World;
go

drop table if exists Tests;

drop table if exists FGTISPYWeightCoverage;

drop table if exists R;

drop table if exists FGTISPY;
drop table if exists FGTISP;
drop table if exists FGTIS;
drop table if exists FGTI;
drop table if exists FGT;
drop table if exists FG;

drop table if exists Y;
drop table if exists P;
drop table if exists [IS];
drop table if exists S;
drop table if exists I;
drop table if exists T;
drop table if exists G;
drop table if exists F;

drop table if exists A;
drop function if exists PadCode;

dbcc shrinkfile (World_Log, 1);  
go

select '0.0';
go