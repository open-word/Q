use Uganda;
go

create table P
(
	ProgrammeID int,
	Name nvarchar(250),
	ShortName nvarchar(25),
	Reference as format(ProgrammeID,'D2'),
	ReferenceName as format(ProgrammeID,'D2') + ' - ' + Name,
	ReferenceShortName as format(ProgrammeID,'D2') + ' - ' + ShortName,
	constraint PK_P primary key (ProgrammeID),
	constraint UQ_P_Name unique (Name),
	constraint UQ_P_ShortName unique (ShortName)
);
go

insert P (ProgrammeID, Name, ShortName) values
 ( 1,'Agro-industrialization',														'AI'),
 ( 2,'Mineral Development',															'MD'),
 ( 3,'Sustainable Development of Petroleam Resources',								'SDPR'),
 ( 4,'Tourism Development',															'TD'),
 ( 5,'Natural Resources, Environment, Climate Change, Land and Water Management',	'NRECCLWM'),
 ( 6,'Private Sector Development',													'PSD'),
 ( 7,'Manufacturing',																'M'),
 ( 8,'Integrated Transport Infrastructure and Services',							'ITIS'),
 ( 9,'Sustainable Energy Development',												'SED'),
 (10,'Digital Transformation',														'DT'),
 (11,'Sustainable Urbanization and Housing',										'SUH'),
 (12,'Human Capital Development',													'HCD'),
 (13,'Innovation, Technology Development and Transfer',								'ITDT'),
 (14,'Community Mobilization and Mindset Change',									'CMMC'),
 (15,'Governance and Security',														'GS'),
 (16,'Public Sector Transformation',												'PST'),
 (17,'Regional Development',														'RD'),
 (18,'Development Plan Implementation',												'DPI');
go

--select * from P;

select '1.2'
go