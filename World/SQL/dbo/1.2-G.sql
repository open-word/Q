use World;
go

create table G
(
	GCode nvarchar(2),
	GName nvarchar(100),
	GTitle nvarchar(188),
	GDescription nvarchar(460),
	GUri nvarchar(15),
	GPoints float default 1,
	FCode nvarchar(5),
	constraint PK_G primary key (GCode),
	constraint UQ_G_GTitle unique (GTitle),
	constraint UQ_G_GDescription unique (GDescription),
	constraint UQ_G_GUri unique (GUri),
	constraint FK_G_F foreign key (FCode) references F (FCode)
);
go

insert G (GCode, GTitle, GDescription, GUri, FCode)
select
	dbo.PadCode(cte.code),
	cte.title,
	cte.description,
	cte.uri,
	'World'
from
	api.Goal_List 
	cross apply openjson(JsonString)
with
	(
		code nvarchar(max),
		title nvarchar(max), 
		description nvarchar(max),
		uri nvarchar(max)
	) as cte
order by
	dbo.PadCode(cte.code);

update G set GName = 'No poverty' where GCode = '01';
update G set GName = 'Zero hunger' where GCode = '02';
update G set GName = 'Good health and well-being' where GCode = '03';
update G set GName = 'Quality education' where GCode = '04';
update G set GName = 'Gender equality' where GCode = '05';
update G set GName = 'Clean water and sanitation' where GCode = '06';
update G set GName = 'Affordable and clean energy' where GCode = '07';
update G set GName = 'Decent work and economic growth' where GCode = '08';
update G set GName = 'Industry, innovation and infrastructure' where GCode = '09';
update G set GName = 'Reduced inequalities' where GCode = '10';
update G set GName = 'Sustainable cities and communities' where GCode = '11';
update G set GName = 'Responsible consumption and production' where GCode = '12';
update G set GName = 'Climate action' where GCode = '13';
update G set GName = 'Life below water' where GCode = '14';
update G set GName = 'Life on land' where GCode = '15';
update G set GName = 'Peace, justice and strong institutions' where GCode = '16';
update G set GName = 'Partnerships for the goals' where GCode = '17';

--select * from G;

select '1.2'
go