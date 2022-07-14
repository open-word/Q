use Uganda;
go

create table G
(
	GoalID int,
	Name nvarchar(250),
	Ref nchar(5),
	constraint PK_G primary key (GoalID),
	constraint UQ_G_Name unique (Name),
	constraint UQ_G_Ref unique (Ref)
);
go

insert G (GoalID, Name, Ref) values
(1   ,'No Poverty',									'UN 01'),
(2   ,'Zero Hunger',								'UN 02'),
(3   ,'Good Health and Well-being',					'UN 03'),
(4   ,'Quality Education',							'UN 04'),
(5   ,'Gender Equality',							'UN 05'),
(6   ,'Clean Water and Sanitation',					'UN 06'),
(7   ,'Affordable and Clean Energy',				'UN 07'),
(8   ,'Decent Work and Economic Growth',			'UN 08'),
(9   ,'Industry, Innovation and Infrastructure',	'UN 09'),
(10  ,'Reduced Inequalities',						'UN 10'),
(11  ,'Sustainable Cities and Communities',			'UN 11'),
(12  ,'Responsible Consumption and Production',		'UN 12'),
(13  ,'Climate Action',								'UN 13'),
(14  ,'Life Below Water',							'UN 14'),
(15  ,'Life on Land',								'UN 15'),
(16  ,'Peace, Justice and Strong Institutions',		'UN 16'),
(17  ,'Partnerships for the Goals',					'UN 17'),

(18  ,'High Standard of Living',					'AU 01'),
(19  ,'Well-educated Citizens',						'AU 02'),
(20  ,'Healthy Citizens',							'AU 03'),
(21  ,'Transformed Economies',						'AU 04'),
(22  ,'Modern Agriculture',							'AU 05'),
(23  ,'Blue/Ocean Economy',							'AU 06'),
(24  ,'Environment Sustainability',					'AU 07'),
--(25  ,'A United Africa',							'AU 08'),
--(26  ,'Continental Financial Institutions',	    'AU 09'),
(27  ,'World-class Infrastructure',					'AU 10'),
(29  ,'Democratic Values and Law',					'AU 11'),
(28  ,'Capable Institutions and Leadership',		'AU 12'),
(30  ,'Peace, Security and Stability',				'AU 13'),
(31  ,'A Stable and Peaceful Africa',				'AU 14'),
(32  ,'A Fully Functional and Operational APSA',	'AU 15'),
(33  ,'Africa Cultural Renaissance',				'AU 16'),
(34  ,'Full Gender Equality',						'AU 17'),
(35  ,'Engaged and Empowered Youth and Children',	'AU 18'),
--(36  ,'Africa as a Global Partner',				'AU 19'),
(37  ,'African Financial Responsibility',			'AU 20'),

(38  ,'Infrastructue Access',						'EA 01'),
(39 , 'Agricultural Productivity',					'EA 02'),
(40 , 'Structural Transformation',					'EA 03'),
(41 , 'Resource Management',						'EA 04'),
(42 , 'Tourism',									'EA 05'),
(43 , 'CCI: Cities of the Future',					'EA 06'),
(44 , 'CCI: Peace and Security',					'EA 07'),
(45 , 'CCI: Gender, Women and Youth Empowerment',	'EA 08'),
(46 , 'CCI: Management Framework',					'EA 09'),
(47 , 'CCI: Culture and Sport',						'EA 10');

go

--select * from G;

select '9.2'
go