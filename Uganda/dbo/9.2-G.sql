use Uganda;
go

create table G
(
	GoalID int,
	Name nvarchar(250),
	Ref nchar(6),
	constraint PK_G primary key (GoalID),
	constraint UQ_G_Name unique (Name),
	constraint UQ_G_Ref unique (Ref)
);
go

insert G (GoalID, Name, Ref) values
(1   ,'No Poverty',									'SDG 01'),
(2   ,'Zero Hunger',								'SDG 02'),
(3   ,'Good Health and Well-being',					'SDG 03'),
(4   ,'Quality Education',							'SDG 04'),
(5   ,'Gender Equality',							'SDG 05'),
(6   ,'Clean Water and Sanitation',					'SDG 06'),
(7   ,'Affordable and Clean Energy',				'SDG 07'),
(8   ,'Decent Work and Economic Growth',			'SDG 08'),
(9   ,'Industry, Innovation and Infrastructure',	'SDG 09'),
(10  ,'Reduced Inequalities',						'SDG 10'),
(11  ,'Sustainable Cities and Communities',			'SDG 11'),
(12  ,'Responsible Consumption and Production',		'SDG 12'),
(13  ,'Climate Action',								'SDG 13'),
(14  ,'Life Below Water',							'SDG 14'),
(15  ,'Life on Land',								'SDG 15'),
(16  ,'Peace, Justice and Strong Institutions',		'SDG 16'),
(17  ,'Partnerships for the Goals',					'SDG 17'),

(18  ,'High Standard of Living',					'AfU 01'),
(19  ,'Well-educated Citizens',						'AfU 02'),
(20  ,'Healthy Citizens',							'AfU 03'),
(21  ,'Transformed Economies',						'AfU 04'),
(22  ,'Modern Agriculture',							'AfU 05'),
(23  ,'Blue/Ocean Economy',							'AfU 06'),
(24  ,'Environment Sustainability',					'AfU 07'),
--(25  ,'A United Africa',							'AfU 08'),
--(26  ,'Continental Financial Institutions',	    'AfU 09'),
(27  ,'World-class Infrastructure',					'AfU 10'),
(29  ,'Democratic Values and Law',					'AfU 11'),
(28  ,'Capable Institutions and Leadership',		'AfU 12'),
(30  ,'Peace, Security and Stability',				'AfU 13'),
(31  ,'A Stable and Peaceful Africa',				'AfU 14'),
(32  ,'A Fully Functional and Operational APSA',	'AfU 15'),
(33  ,'Africa Cultural Renaissance',				'AfU 16'),
(34  ,'Full Gender Equality',						'AfU 17'),
(35  ,'Engaged and Empowered Youth and Children',	'AfU 18'),
--(36  ,'Africa as a Global Partner',				'AfU 19'),
(37  ,'African Financial Responsibility',			'AfU 20'),

(38  ,'Infrastructure Access',						'EAC 01'),
(39 , 'Agricultural Productivity',					'EAC 02'),
(40 , 'Leveraging Industrialization',				'EAC 03'),
(41 , 'Sustainable Resource Management',			'EAC 04'),
(42 , 'Tourism',									'EAC 05'),
(43 , 'CCI: Cities of the Future',					'EAC 06'),
(44 , 'CCI: Peace and Security',					'EAC 07'),
(45 , 'CCI: Democracy, Human Rights, Justice, Law',	'EAC 08'),
(46 , 'CCI: Gender, Women and Youth Empowerment',	'EAC 09'),
(47 , 'CCI: Management Framework',					'EAC 10'),
(48 , 'CCI: Culture and Sport',						'EAC 11'),
(49 , 'ENA: Education and Health',					'EAC 12');

go

--select * from G;

select '9.2'
go