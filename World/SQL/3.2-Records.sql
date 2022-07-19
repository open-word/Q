use World;
go

drop index if exists Records.IX_Records_GTISAY;
go

create index IX_Records_GTISAY on Records (Goal, Target, Indicator, Series, GeoAreaCode, TimePeriod);

select '3.2';
go