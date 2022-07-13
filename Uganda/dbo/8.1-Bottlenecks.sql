use Uganda;
go

create table Bottlenecks
(
	BottleneckID int,
	Name nvarchar(250),
	Ref nchar(2),
	constraint PK_Bottlenecks primary key (BottleneckID),
	constraint UQ_Bottlenecks_Name unique (Name),
	constraint UQ_Bottlenecks_Ref unique (Ref)
);
go

insert Bottlenecks (BottleneckID, Name, Ref) values
(1  ,'Ideological Disorientation',							'01'),
(2  ,'Interference with the Private Sector',				'02'),
(3  ,'Underdeveloped Infrastructure',						'03'),
(4  ,'Weak States',											'04'),
(5  ,'Fragmented Markets, Market Access and Expansion',		'05'),
(6  ,'Lack of Industrialization and Low Value Addition',	'06'),
(7  ,'Under-development of Human Resources',				'07'),
(8  ,'Under-development of Agriculture',					'08'),
(9  ,'Under-development of Services Sector',				'09'),
(10 ,'Attacks on Democracy and Governance',					'10'),
(11 ,'Non-responsive Civil Service',						'11'),
(12 ,'Inadequate Domestic Resource Mobilization',			'12'),
(13 ,'Structural Inequalities in Access to Opportunities',	'13');
go

--select * from Bottlenecks;

select '8.1'
go