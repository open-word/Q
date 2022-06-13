--create database Q;
--go

use Q;
go

--create schema Q421;
--go

drop view if exists Q421.vPoints;
drop table if exists Q421.Points;

drop table if exists Q421.Periods;
drop table if exists Q421.Plans;

drop table if exists Q421.Districts;
drop table if exists Q421.Services;

drop table if exists Q421.Departments;
drop table if exists Q421.Regions;


-- Dimensions.

create table Q421.Departments(DepartmentID int, Name nvarchar(100), constraint PK_Departments primary key (DepartmentID));
create table Q421.Services(ServiceID int, Name nvarchar(100), DepartmentID int, constraint PK_Services primary key (ServiceID), constraint FK_Services_Departments foreign key (DepartmentID) references Q421.Departments (DepartmentID));

create table Q421.Regions(RegionID int, Name nvarchar(100), constraint PK_Regions primary key (RegionID));
create table Q421.Districts(DistrictID int, Name nvarchar(100), RegionID int, constraint PK_Districts primary key (DistrictID), constraint FK_Districts_Regions foreign key (RegionID) references Q421.Regions (RegionID));

create table Q421.Plans(PlanID int, Name nvarchar(100), constraint PK_Plans primary key (PlanID));
create table Q421.Periods(PeriodID int, Name nvarchar(100), PlanID int, constraint PK_Periods primary key (PeriodID), constraint FK_Periods_Plans foreign key (PlanID) references Q421.Plans (PlanID));

insert Q421.Departments values (1, 'Department 1'),(2, 'Department 2');
insert Q421.Services values (1, 'Service 1', 1),(2, 'Service 2', 1),(3, 'Service 3', 2),(4, 'Service 4', 2);

insert Q421.Regions values (1, 'Region 1'),(2, 'Region 2');
insert Q421.Districts values (1, 'District 1', 1),(2, 'District 2', 1),(3, 'District 3', 2),(4, 'District 4', 2);

insert Q421.Plans values (1, 'Plan 1'),(2, 'Plan 2');
insert Q421.Periods values (1, 'Period 1', 1),(2, 'Period 2', 1),(3, 'Period 3', 2),(4, 'Period 4', 2);

-- Fact.

create table Q421.Points
(
	PointID int identity,
	ServiceID int,
	DistrictID int,
	PeriodID int,
	[Weight] decimal(8,4),
	Actual decimal(8,4), 
	[Target] decimal(8,4), 
	Performance decimal(8,4), 
	WeightedPerformance decimal(8,4),
	constraint PK_Points primary key (PointID),
	constraint FK_Points_Services foreign key (ServiceID) references Q421.Services (ServiceID),
	constraint FK_Points_Districts foreign key (DistrictID) references Q421.Districts (DistrictID),
	constraint FK_Points_Periods foreign key (PeriodID) references Q421.Periods (PeriodID)
);

insert Q421.Points (ServiceID, DistrictID, PeriodID)
select s.ServiceID, d.DistrictID, p.PeriodID from Q421.Services s, Q421.Districts d, Q421.Periods p order by s.ServiceID, d.DistrictID, p.PeriodID;

-- Data.

declare @Rand float = rand(1) -- for reproducibility.
declare @Weight decimal(8,4), @Actual decimal(8,4), @Target decimal(8,4), @Performance decimal(8,4), @WeightedPerformance decimal(8,4);
declare @PointID int = 1;

while @PointID <= 64 -- 4 by 4 by 4
begin
	set @Weight = round(900*rand(),4)+100;		-- between 100 and 1000
	set @Target = round(99*rand(),4)+1;			-- between 1 and 100
	set @Actual = @Target * (rand()/2+0.75);	-- multiplier between 0.75 and 1.25
	set @Performance = @Actual / @Target;
	set @WeightedPerformance = @Weight * @Performance;
	
	update Q421.Points
	set
		[Weight] = @Weight,
		Actual = @Actual, 
		[Target] = @Target, 
		Performance = @Performance, 
		WeightedPerformance = @WeightedPerformance
	where
		PointID = @PointID;

	set @PointID = @PointID + 1;
end;
go

create view Q421.vPoints as
select 
	dep.Name [Department],
	ser.Name [Service],

	reg.Name [Region],
	dis.Name [District],

	pla.Name [Plan],
	per.Name [Period],

	poi.PointID [Point],
	poi.Weight [Point Weight],
	poi.Actual [Point Actual],
	poi.Target [Point Target],
	poi.Performance [Point Performance],
	poi.WeightedPerformance [Point Weighted Performance]
from 
	Q421.Points poi
	
	join Q421.Services ser on poi.ServiceID = ser.ServiceID
	join Q421.Departments dep on ser.DepartmentID = dep.DepartmentID
	
	join Q421.Districts dis on poi.DistrictID = dis.DistrictID
	join Q421.Regions reg on dis.RegionID = reg.RegionID
	
	join Q421.Periods per on poi.PeriodID = per.PeriodID
	join Q421.Plans pla on per.PlanID = pla.PlanID;
go

select * from Q421.vPoints;