--create database Q;
--go

use Q;
go

--create schema Q333;
--go
drop view if exists Q333.vPoints;
drop table if exists Q333.Points;
drop table if exists Q333.Periods;
drop table if exists Q333.Districts;
drop table if exists Q333.Services;


-- Dimensions.

create table Q333.Services(ServiceID int, constraint PK_Services primary key (ServiceID));
create table Q333.Districts(DistrictID int, constraint PK_Districts primary key (DistrictID));
create table Q333.Periods(PeriodID int, constraint PK_Periods primary key (PeriodID));


insert Q333.Services values (1),(2),(3),(4),(5),(6),(7),(8),(9);
insert Q333.Districts values (1),(2),(3),(4),(5),(6),(7),(8),(9);
insert Q333.Periods values (1),(2),(3),(4),(5),(6),(7),(8),(9);

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
	constraint PK_Points primary key (PointID)
);

insert Q333.Points (ServiceID, DistrictID, PeriodID)
select * from Q333.Services, Q333.Districts, Q333.Periods order by ServiceID, DistrictID, PeriodID;

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
select * from Q333.Points;
go

select * from Q333.vPoints;