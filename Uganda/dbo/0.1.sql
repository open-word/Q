use Uganda;
go

drop view if exists VPYIAS;

drop table if exists Tests;

drop table if exists PYSIABudgetPerformance;
drop table if exists PYSIA;

drop table if exists PYSA;
drop table if exists PYSI;

drop table if exists PSA;
drop table if exists PYSBudget;
drop table if exists PYS;
drop table if exists PYIPerformance;
drop table if exists PYI;

drop table if exists SA;
drop table if exists PI;
drop table if exists PS;
drop table if exists PY;

drop table if exists A;
drop table if exists I;
drop table if exists S;
drop table if exists Y;
drop table if exists P;

drop table if exists RN;
drop sequence if exists sRN;
go

select '0.1'
go