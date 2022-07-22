use World;
go

create table G
(
	GoalCode nchar(2),
	Name nvarchar(100),
	Title nvarchar(188),
	Description nvarchar(460),
	Uri nvarchar(15),
	FrameworkCode nchar(5),
	constraint PK_G primary key (GoalCode),
	constraint UQ_G_Title unique (Title),
	constraint UQ_G_Description unique (Description),
	constraint UQ_G_Uri unique (Uri),
	constraint FK_G_F foreign key (FrameworkCode) references F (FrameworkCode)
);
go

insert G (GoalCode, Title, Description, Uri, FrameworkCode)
select
	dbo.PadCode(cte.code),
	cte.Title,
	cte.Description,
	cte.Uri,
	'World'
from
	openrowset (bulk 'C:\github.com\open-word\Q\World\JSON\Goal_List.json', single_clob) as j
	cross apply openjson(BulkColumn)
with
	(
		code nvarchar(max),
		title nvarchar(max), 
		description nvarchar(max),
		uri nvarchar(max)
	) as cte
order by
	dbo.PadCode(cte.code);

update G set Name = 'No poverty' where GoalCode = '01';
update G set Name = 'Zero hunger' where GoalCode = '02';
update G set Name = 'Good health and well-being' where GoalCode = '03';
update G set Name = 'Quality education' where GoalCode = '04';
update G set Name = 'Gender equality' where GoalCode = '05';
update G set Name = 'Clean water and sanitation' where GoalCode = '06';
update G set Name = 'Affordable and clean energy' where GoalCode = '07';
update G set Name = 'Decent work and economic growth' where GoalCode = '08';
update G set Name = 'Industry, innovation and infrastructure' where GoalCode = '09';
update G set Name = 'Reduced inequalities' where GoalCode = '10';
update G set Name = 'Sustainable cities and communities' where GoalCode = '11';
update G set Name = 'Responsible consumption and production' where GoalCode = '12';
update G set Name = 'Climate action' where GoalCode = '13';
update G set Name = 'Life below water' where GoalCode = '14';
update G set Name = 'Life on land' where GoalCode = '15';
update G set Name = 'Peace, justice and strong institutions' where GoalCode = '16';
update G set Name = 'Partnerships for the goals' where GoalCode = '17';

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