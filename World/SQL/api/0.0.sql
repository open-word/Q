use World;
go

drop table if exists api.GeoArea_List;
drop table if exists api.GeoArea_Tree;
drop table if exists api.Goal_List;
drop table if exists api.Indicator_List;
drop table if exists api.Series_List;
drop table if exists api.Target_List;

select 'api\0.0.sql';
go