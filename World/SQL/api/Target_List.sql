use World;
go

create table api.Target_List
(
	JsonString nvarchar(max)
);

bulk insert 
	api.Target_List
from
	N'C:\github.com\open-word\Q\World\SQL\api\Target_List.json' 
with
	(codepage='65001');

--select * from api.Target_List;

select 'api\Target_List.sql'
go