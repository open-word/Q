use World;
go

create table api.Indicator_List
(
	JsonString nvarchar(max)
);

bulk insert 
	api.Indicator_List
from
	N'C:\github.com\open-word\Q\World\SQL\api\Indicator_List.json' 
with
	(codepage='65001');

--select * from api.Indicator_List;

select 'api\Indicator_List.sql'
go