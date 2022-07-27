use World;
go

create table api.GeoArea_Tree
(
	JsonString nvarchar(max)
);

bulk insert 
	api.GeoArea_Tree
from
	N'C:\github.com\open-word\Q\World\SQL\api\GeoArea_Tree.json' 
with
	(codepage='65001');

--select * from api.GeoArea_Tree;

select 'api\GeoArea_Tree.sql'
go