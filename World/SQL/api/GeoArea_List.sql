use World;
go

create table api.GeoArea_List
(
	JsonString nvarchar(max)
);

bulk insert 
	api.GeoArea_List
from
	N'C:\github.com\open-word\Q\World\SQL\api\GeoArea_List.json' 
with
	(codepage='65001');

--select * from api.GeoArea_List;

select 'api\GeoArea_List.sql'
go