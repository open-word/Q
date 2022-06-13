--create database Q;
--go

use Q;
go

--create schema Q333;
--go
drop view if exists Q333.vPoints;
drop table if exists Q333.Points;

drop table if exists Q333.Periods;
drop table if exists Q333.Plans;

drop table if exists Q333.Districts;
drop table if exists Q333.Services;

drop table if exists Q333.Departments;
drop table if exists Q333.Regions;


-- Dimensions.

create table Q333.Departments(DepartmentID int, constraint PK_Departments primary key (DepartmentID));
create table Q333.Services(ServiceID int, DepartmentID int, constraint PK_Services primary key (ServiceID), constraint FK_Services_Departments foreign key (DepartmentID) references Q333.Departments (DepartmentID));

create table Q333.Regions(RegionID int, constraint PK_Regions primary key (RegionID));
create table Q333.Districts(DistrictID int, RegionID int, constraint PK_Districts primary key (DistrictID), constraint FK_Districts_Regions foreign key (RegionID) references Q333.Regions (RegionID));

create table Q333.Plans(PlanID int, constraint PK_Plans primary key (PlanID));
create table Q333.Periods(PeriodID int, PlanID int, constraint PK_Periods primary key (PeriodID), constraint FK_Periods_Plans foreign key (PlanID) references Q333.Plans (PlanID));

insert Q333.Departments values (1),(2),(3);
insert Q333.Services values (1,1),(2,1),(3,1),(4,2),(5,2),(6,2),(7,3),(8,3),(9,3);

insert Q333.Regions values (1),(2),(3);
insert Q333.Districts values (1,1),(2,1),(3,1),(4,2),(5,2),(6,2),(7,3),(8,3),(9,3);

insert Q333.Plans values (1),(2),(3);
insert Q333.Periods values (1,1),(2,1),(3,1),(4,2),(5,2),(6,2),(7,3),(8,3),(9,3);

-- Fact.

create table Q333.Points
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
	constraint FK_Points_Services foreign key (ServiceID) references Q333.Services (ServiceID),
	constraint FK_Points_Districts foreign key (DistrictID) references Q333.Districts (DistrictID),
	constraint FK_Points_Periods foreign key (PeriodID) references Q333.Periods (PeriodID)
);

insert Q333.Points (ServiceID, DistrictID, PeriodID)
select s.ServiceID, d.DistrictID, p.PeriodID from Q333.Services s, Q333.Districts d, Q333.Periods p order by s.ServiceID, d.DistrictID, p.PeriodID;

-- Data.

declare @Rand float = rand(1) -- for reproducibility.
declare @Weight decimal(8,4), @Actual decimal(8,4), @Target decimal(8,4), @Performance decimal(8,4), @WeightedPerformance decimal(8,4);
declare @PointID int = 1;

while @PointID <= 729
begin
	set @Weight = round(900*rand(),4)+100;		-- between 100 and 1000
	set @Target = round(99*rand(),4)+1;			-- between 1 and 100
	set @Actual = @Target * (rand()/2+0.75);	-- multiplier between 0.75 and 1.25
	set @Performance = @Actual / @Target;
	set @WeightedPerformance = @Weight * @Performance;
	
	update Q333.Points
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

create view Q333.vPoints as
select 
	dep.DepartmentID [Department ID],
	ser.ServiceID [Service ID],

	reg.RegionID [Region ID], 
	dis.DistrictID [District ID],

	ter.PlanID [Plan ID],
	per.PeriodID [Period ID],

	poi.PointID [Point ID],
	poi.Weight [Point Weight],
	poi.Actual [Point Actual],
	poi.Target [Point Target],
	poi.Performance [Point Performance],
	poi.WeightedPerformance [Point Weighted Performance]
from 
	Q333.Points poi
	
	join Q333.Services ser on poi.ServiceID = ser.ServiceID
	join Q333.Departments dep on ser.DepartmentID = dep.DepartmentID
	
	join Q333.Districts dis on poi.DistrictID = dis.DistrictID
	join Q333.Regions reg on dis.RegionID = reg.RegionID
	
	join Q333.Periods per on poi.PeriodID = per.PeriodID
	join Q333.Plans ter on per.PlanID = ter.PlanID;
go

select * from Q333.vPoints;