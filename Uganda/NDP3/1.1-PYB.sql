use Uganda;
go

create table P
(
	ProgrammeID int,
	Name nvarchar(250),
	Acronym nvarchar(25),
	TLA nchar(3),
	Reference nchar(2),
	ReferenceName as Reference + ' ' + Name,
	ReferenceTLA as Reference + ' ' + TLA,
	constraint PK_P primary key (ProgrammeID)
);
go

insert P (ProgrammeID, Name, Acronym, TLA, Reference) values
 ( 1,'Agro-industrialization',														'AI',		'AIN',	'01'),
 ( 2,'Mineral Development',															'MD',		'MDE',	'02'),
 ( 3,'Sustainable Development of Petroleam Resources',								'SDPR',		'SDP',	'03'),
 ( 4,'Tourism Development',															'TD',		'TDE',	'04'),
 ( 5,'Natural Resources, Environment, Climate Change, Land and Water Management',	'NRECCLWM',	'NRE',	'05'),
 ( 6,'Private Sector Development',													'PSD',		'PSD',	'06'),
 ( 7,'Manufacturing',																'M',		'MAN',	'07'),
 ( 8,'Integrated Transport Infrastructure and Services',							'ITIS',		'ITI',	'08'),
 ( 9,'Sustainable Energy Development',												'SED',		'SED',	'09'),
 (10,'Digital Transformation',														'DT',		'DTR',	'10'),
 (11,'Sustainable Urbanization and Housing',										'SUH',		'SUH',	'11'),
 (12,'Human Capital Development',													'HCD',		'HCD',	'12'),
 (13,'Innovation, Technology Development and Transfer',								'ITDT',		'ITD',	'13'),
 (14,'Community Mobilization and Mindset Change',									'CMMC',		'CMM',	'14'),
 (15,'Governance and Security',														'GS',		'GSE',	'15'),
 (16,'Public Sector Transformation',												'PST',		'PST',	'16'),
 (17,'Regional Development',														'RD',		'RDE',	'17'),
 (18,'Development Plan Implementation',												'DPI',		'DPI',	'18');
go

--select * from P;

select '1.1'
go