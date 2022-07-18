use World;
go

select top 1 * from Records;

select count(distinct Goal) from Records;
select count(distinct Target) from Records;
select count(distinct Indicator) from Records;
select count(distinct SeriesCode) from Records;
select count(1) from Records;