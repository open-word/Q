use Uganda;
go

 drop view if exists NDP3.vProgrammes; 
 go

drop table if exists NDP3.Programmes; 
go

create table NDP3.Programmes
(
	ProgrammeID int,
	Name nvarchar(250),
	NDP3Reference nchar(2),
	Acronym nvarchar(25),
	TLA nchar(3),
	constraint PK_Programmes primary key (ProgrammeID)
);
go

insert NDP3.Programmes (ProgrammeID, Name, NDP3Reference, Acronym, TLA) values
 ( 1,'Agro-industrialization',														'01',	'AI',		'AIN'),
 ( 2,'Mineral Development',															'02',	'MD',		'MDE'),
 ( 3,'Sustainable Development of Petroleam Resources',								'03',	'SDPR',		'SDP'),
 ( 4,'Tourism Development',															'04',	'TD',		'TDE'),
 ( 5,'Natural Resources, Environment, Climate Change, Land and Water Management',	'05',	'NRECCLWM',	'NRE'),
 ( 6,'Private Sector Development',													'06',	'PSD',		'PSD'),
 ( 7,'Manufacturing',																'07',	'M',		'MAN'),
 ( 8,'Integrated Transport Infrastructure and Services',							'08',	'ITIS',		'ITI'),
 ( 9,'Sustainable Energy Development',												'09',	'SED',		'SED'),
 (10,'Digital Transformation',														'10',	'DT',		'DTR'),
 (11,'Sustainable Urbanization and Housing',										'11',	'SUH',		'SUH'),
 (12,'Human Capital Development',													'12',	'HCD',		'HCD'),
 (13,'Innovation, Technology Development and Transfer',								'13',	'ITDT',		'ITD'),
 (14,'Community Mobilization and Mindset Change',									'14',	'CMMC',		'CMM'),
 (15,'Governance and Security',														'15',	'GS',		'GSE'),
 (16,'Public Sector Transformation',												'16',	'PST',		'PST'),
 (17,'Regional Development',														'17',	'RD',		'RDE'),
 (18,'Development Plan Implementation',												'18',	'DPI',		'DPI');
go

 --select * from NDP3.Programmes;
 --go

 create view NDP3.vProgrammes as
 select
 	ProgrammeID		[Programme ID],
	Name			[Programme Name],
	NDP3Reference	[Programme NDP3 Reference],
	Acronym			[Programme Acronym],
	TLA				[Programme TLA]
 from NDP3.Programmes;
 go

 --select
	--*
 --from NDP3.vProgrammes;
 --go

select '03';
go