use Uganda;
go

create table A
(
	ActorID int,
	Name nvarchar(250),
	Acronym nvarchar(25),
	Reference nvarchar(10),
	ReferenceName as Reference + '-' + Name,
	NDP3Acronym nvarchar(25),
	constraint PK_A primary key (ActorID)
);
go

insert A (ActorID, Name, Acronym, Reference) values
 ( 1,'Ministry of Agriculture, Animal Industry and Fisheries',	'MoAAIF',	'01',	''),
 ( 2,'Ministry of Defense and Veteran Affairs',					'MoDVA',	'02',	''),
 ( 3,'Ministry of East African Community Affairs',				'MoEACA',	'03',	''),
 ( 4,'Ministry of Education and Sports',						'MoES',		'04',	''),
 ( 5,'Ministry of Energy and Mineral Development',				'MoEMD',	'05',	''),
 ( 6,'Ministry of Finance, Planning, and Economic Development',	'MoFPED',	'06',	''),
 ( 7,'Ministry of Foreign Affairs',								'MoFA',		'07',	''),
 ( 8,'Ministry of Gender, Labour & Social Development',			'MoGLSD',	'08',	''),
 ( 9,'Ministry of Health',										'MoH',		'09',	''),
 (10,'Ministry of ICT & National Guidance',						'MoICTNG',	'10',	''),
 (11,'Ministry of Internal Affairs',							'MoIA',		'11',	''),
 (12,'Ministry of Justice and Constitutional Affairs',			'MoJCA',	'12',	''),
 (13,'Ministry of Lands, Housing & Urban Development',			'MoLHUD',	'13',	''),
 (14,'Ministry of Local Government',							'MoLG',		'14',	''),
 (15,'Ministry of Public Service',								'MoPS',		'15',	''),
 (16,'Ministry of Science, Technology and Innovation',			'MoSTI',	'16',	''),
 (17,'Ministry of Tourism, Wildlife and Antiquities',			'MoTWA',	'17',	''),
 (18,'Ministry of Trade, Industry and Cooperatives',			'MoTIC',	'18',	''),
 (19,'Ministry of Water and Environment',						'MoWE',		'19',	''),
 (20,'Ministry of Works and Transport',							'MoWT',		'20',	'');

--select * from A;

select '1.4'
go