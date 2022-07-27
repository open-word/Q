use World;
go

create table api.Goal_List
(
	JsonString nvarchar(max)
);

bulk insert 
	api.Goal_List
from
	N'C:\github.com\open-word\Q\World\SQL\api\Goal_List.json' 
with
	(codepage='65001');

--select * from api.Goal_List;

select 'api\Goal_List.sql'
go