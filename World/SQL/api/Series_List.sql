use World;
go

create table api.Series_List
(
	JsonString nvarchar(max)
);

bulk insert 
	api.Series_List
from
	N'C:\github.com\open-word\Q\World\SQL\api\Series_List.json' 
with
	(codepage='65001');

--select * from api.Series_List;

select 'api\Series_List.sql'
go