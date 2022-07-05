use Test;
go

drop table if exists PYIA;

create table PYIA
(
	PYIAID int,
	ProgrammeID nvarchar(25),
	YearID int,
	IndicatorID nvarchar(25),
	ActorID nvarchar(10),
	SectorID nvarchar(10),
	BudgetPoints float,
	Budget float,
	Performance float,
	WeightedPerformance float
);
go

insert PYIA (PYIAID, ProgrammeID, YearID, IndicatorID, ActorID, SectorID, BudgetPoints) values
	( 1,'Programme 01',2020,'Indicator 01.01','Actor 1.1','Sector 1',1),
	( 2,'Programme 01',2020,'Indicator 01.01','Actor 1.2','Sector 1',2),
	( 3,'Programme 01',2020,'Indicator 01.02','Actor 1.1','Sector 1',3),
	( 4,'Programme 01',2020,'Indicator 01.02','Actor 1.2','Sector 1',4),
	
	( 5,'Programme 01',2020,'Indicator 01.01','Actor 2.1','Sector 2',1),
	( 6,'Programme 01',2020,'Indicator 01.01','Actor 2.2','Sector 2',2),
	( 7,'Programme 01',2020,'Indicator 01.02','Actor 2.1','Sector 2',3),
	( 8,'Programme 01',2020,'Indicator 01.02','Actor 2.2','Sector 2',4),

	( 9,'Programme 01',2021,'Indicator 01.01','Actor 1.1','Sector 1',1),
	(10,'Programme 01',2021,'Indicator 01.01','Actor 1.2','Sector 1',2),
	(11,'Programme 01',2021,'Indicator 01.02','Actor 1.1','Sector 1',3),
	(12,'Programme 01',2021,'Indicator 01.02','Actor 1.2','Sector 1',4),
	
	(13,'Programme 01',2021,'Indicator 01.01','Actor 2.1','Sector 2',1),
	(14,'Programme 01',2021,'Indicator 01.01','Actor 2.2','Sector 2',2),
	(15,'Programme 01',2021,'Indicator 01.02','Actor 2.1','Sector 2',3),
	(16,'Programme 01',2021,'Indicator 01.02','Actor 2.2','Sector 2',4),

	(17,'Programme 02',2020,'Indicator 02.01','Actor 1.1','Sector 1',1),
	(18,'Programme 02',2020,'Indicator 02.01','Actor 1.2','Sector 1',2),
	(19,'Programme 02',2020,'Indicator 02.02','Actor 1.1','Sector 1',3),
	(20,'Programme 02',2020,'Indicator 02.02','Actor 1.2','Sector 1',4),
	
	(21,'Programme 02',2020,'Indicator 02.01','Actor 2.1','Sector 2',1),
	(22,'Programme 02',2020,'Indicator 02.01','Actor 2.2','Sector 2',2),
	(23,'Programme 02',2020,'Indicator 02.02','Actor 2.1','Sector 2',3),
	(24,'Programme 02',2020,'Indicator 02.02','Actor 2.2','Sector 2',4),

	(25,'Programme 02',2021,'Indicator 02.01','Actor 1.1','Sector 1',1),
	(26,'Programme 02',2021,'Indicator 02.01','Actor 1.2','Sector 1',2),
	(27,'Programme 02',2021,'Indicator 02.02','Actor 1.1','Sector 1',3),
	(28,'Programme 02',2021,'Indicator 02.02','Actor 1.2','Sector 1',4),
	
	(29,'Programme 02',2021,'Indicator 02.01','Actor 2.1','Sector 2',1),
	(30,'Programme 02',2021,'Indicator 02.01','Actor 2.2','Sector 2',2),
	(31,'Programme 02',2021,'Indicator 02.02','Actor 2.1','Sector 2',3),
	(32,'Programme 02',2021,'Indicator 02.02','Actor 2.2','Sector 2',4);

select * from PYIA;