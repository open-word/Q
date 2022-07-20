use World;
go
drop table if exists G;
go
create table G
(
	GoalID int identity,
	Code nvarchar(2),
	Name nvarchar(100),
	Title nvarchar(188),
	Description nvarchar(460),
	Uri nvarchar(15),
	FrameworkCode nvarchar(5),
	constraint PK_G primary key (GoalID),
	constraint UQ_G_Code unique (Code),
	constraint UQ_G_Title unique (Title),
	constraint UQ_G_Description unique (Description),
	constraint UQ_G_Uri unique (Uri),
	constraint FK_G_F foreign key (FrameworkCode) references F (Code)
);
go

insert G (Code, Title, Description, Uri, FrameworkCode)
select
	convert(nvarchar(2),cte.Code) [Code],
	convert(nvarchar(188),cte.Title) [Title],
	convert(nvarchar(460),cte.Description) [Description],
	convert(nvarchar(15),cte.Uri) [Uri],
	'World'
from
	openrowset (bulk 'C:\github.com\open-word\Q\World\JSON\Goal_List.json', single_clob) as j
	cross apply openjson(BulkColumn)
with
	(
		code int,
		title nvarchar(max), 
		description nvarchar(max),
		uri nvarchar(max)
	) as cte
order by
	cte.Code;

update G set Name = 'No poverty' where GoalID = 1;
update G set Name = 'Zero hunger' where GoalID = 2;
update G set Name = 'Good health and well-being' where GoalID = 3;
update G set Name = 'Quality education' where GoalID = 4;
update G set Name = 'Gender equality' where GoalID = 5;
update G set Name = 'Clean water and sanitation' where GoalID = 6;
update G set Name = 'Affordable and clean energy' where GoalID = 7;
update G set Name = 'Decent work and economic growth' where GoalID = 8;
update G set Name = 'Industry, innovation and infrastructure' where GoalID = 9;
update G set Name = 'Reduced inequalities' where GoalID = 10;
update G set Name = 'Sustainable cities and communities' where GoalID = 11;
update G set Name = 'Responsible consumption and production' where GoalID = 12;
update G set Name = 'Climate action' where GoalID = 13;
update G set Name = 'Life below water' where GoalID = 14;
update G set Name = 'Life on land' where GoalID = 15;
update G set Name = 'Peace, justice and strong institutions' where GoalID = 16;
update G set Name = 'Partnerships for the goals' where GoalID = 17;

--select * from G;

select '1.2'
go

--https://unstats.un.org/SDGAPI/v1/sdg/Series/List?allreleases=false

--select
--	BulkColumn
--from
--	openrowset (bulk 'C:\github.com\open-word\Q\World\JSON\Goal_List.json', single_clob) as j;

--select
--	value
--from
--	openrowset (bulk 'C:\github.com\open-word\Q\World\JSON\Goal_List.json', single_clob) as j
--	cross apply openjson(BulkColumn);