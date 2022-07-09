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
	Acronym nvarchar(25),
	TLA nchar(3),
	constraint PK_Programmes primary key (ProgrammeID)
);
go

insert NDP3.Programmes (ProgrammeID, Name, Acronym, TLA) values
 ( 1,'Agro-industrialization',														'AI',		'AIN'),
 ( 2,'Mineral Development',															'MD',		'MDE'),
 ( 3,'Sustainable Development of Petroleam Resources',								'SDPR',		'SDP'),
 ( 4,'Tourism Development',															'TD',		'TDE'),
 ( 5,'Natural Resources, Environment, Climate Change, Land and Water Management',	'NRECCLWM',	'NRE'),
 ( 6,'Private Sector Development',													'PSD',		'PSD'),
 ( 7,'Manufacturing',																'M',		'MAN'),
 ( 8,'Integrated Transport Infrastructure and Services',							'ITIS',		'ITI'),
 ( 9,'Sustainable Energy Development',												'SED',		'SED'),
 (10,'Digital Transformation',														'DT',		'DTR'),
 (11,'Sustainable Urbanization and Housing',										'SUH',		'SUH'),
 (12,'Human Capital Development',													'HCD',		'HCD'),
 (13,'Innovation, Technology Development and Transfer',								'ITDT',		'ITD'),
 (14,'Community Mobilization and Mindset Change',									'CMMC',		'CMM'),
 (15,'Governance and Security',														'GS',		'GSE'),
 (16,'Public Sector Transformation',												'PST',		'PST'),
 (17,'Regional Development',														'RD',		'RDE'),
 (18,'Development Plan Implementation',												'DPI',		'DPI');
go

 --select * from NDP3.Programmes;
 --go

 create view NDP3.vProgrammes as
 select
 	ProgrammeID	[Programme ID],
	Name		[Programme Name],
	Acronym		[Programme Acronym],
	TLA			[Programme TLA]
 from NDP3.Programmes;
 go

 --select
	--*
 --from NDP3.vProgrammes;
 --go

select '03';
go