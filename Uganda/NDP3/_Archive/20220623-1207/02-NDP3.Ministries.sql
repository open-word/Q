use Uganda;
go

drop view if exists NDP3.vMinistries; 
go

drop table if exists NDP3.Ministries; 
go

create table NDP3.Ministries
(
	MinistryID int,
	Name nvarchar(250),
	Acronym nvarchar(25),
	constraint PK_Ministries primary key (MinistryID)
);
go

insert NDP3.Ministries (MinistryID, Name, Acronym) values
 ( 1,'Ministry of Agriculture, Animal Industry and Fisheries','MoAAIF'),
 ( 2,'Ministry of Defence and Veteran Affairs','MoDVA'),
 ( 3,'Ministry of East African Community Affairs','MoEACA'),
 ( 4,'Ministry of Education and Sports','MoES'),
 ( 5,'Ministry of Energy and Mineral Development','MoEMD'),
 ( 6,'Ministry of Finance, Planning, and Economic Development','MoFPED'),
 ( 7,'Ministry of Foreign Affairs','MoFA'),
 ( 8,'Ministry of Gender, Labour & Social Development','MoGLSD'),
 ( 9,'Ministry of Health','MoH'),
 (10,'Ministry of ICT & National Guidance','MoICTNG'),
 (11,'Ministry of Internal Affairs','MoIA'),
 (12,'Ministry of Justice and Constitutional Affairs','MoJCA'),
 (13,'Ministry of Lands, Housing & Urban Development','MoLHUD'),
 (14,'Ministry of Local Government','MoLG'),
 (15,'Ministry of Public Service','MoPS'),
 (16,'Ministry of Science, Technology and Innovation','MoSTI'),
 (17,'Ministry of Tourism, Wildlife and Antiquities','MoTWA'),
 (18,'Ministry of Trade, Industry and Cooperatives','MoTIC'),
 (19,'Ministry of Water and Environment','MoWE'),
 (20,'Ministry of Works and Transport','MoWT');
go

 --select * from NDP3.Ministries;
 --go

 create view NDP3.vMinistries as
 select
 	MinistryID	[Ministry ID],
	Name		[Ministry Name],
	Acronym		[Ministry Acronym]
 from NDP3.Ministries;
 go

 --select
	--*
 --from NDP3.vMinistries;
 --go

select '02';
go