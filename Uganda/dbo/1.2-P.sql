use Uganda;
go

create table P
(
	ProgrammeID int,
	Name nvarchar(250),
	ShortName nvarchar(25),
	Reference nchar(2),
	ReferenceName as format(ProgrammeID,'D2') + ' - ' + Name,
	ReferenceShortName as format(ProgrammeID,'D2') + ' - ' + ShortName,
	constraint PK_P primary key (ProgrammeID),
	constraint UQ_P_Name unique (Name),
	constraint UQ_P_ShortName unique (ShortName),
	constraint UQ_P_Reference unique (Reference)
);
go

insert P (ProgrammeID, Name, ShortName, Reference) values
 ( 1,'Agro-industrialization',														'AI',		'01'),
 ( 2,'Mineral Development',															'MD',		'02'),
 ( 3,'Sustainable Development of Petroleam Resources',								'SDPR',		'03'),
 ( 4,'Tourism Development',															'TD',		'04'),
 ( 5,'Natural Resources, Environment, Climate Change, Land and Water Management',	'NRECCLWM',	'05'),
 ( 6,'Private Sector Development',													'PSD',		'06'),
 ( 7,'Manufacturing',																'M',		'07'),
 ( 8,'Integrated Transport Infrastructure and Services',							'ITIS',		'08'),
 ( 9,'Sustainable Energy Development',												'SED',		'09'),
 (10,'Digital Transformation',														'DT',		'10'),
 (11,'Sustainable Urbanization and Housing',										'SUH',		'11'),
 (12,'Human Capital Development',													'HCD',		'12'),
 (13,'Innovation, Technology Development and Transfer',								'ITDT',		'13'),
 (14,'Community Mobilization and Mindset Change',									'CMMC',		'14'),
 (15,'Governance and Security',														'GS',		'15'),
 (16,'Public Sector Transformation',												'PST',		'16'),
 (17,'Regional Development',														'RD',		'17'),
 (18,'Development Plan Implementation',												'DPI',		'18');
go

--select * from P;

select '1.2'
go