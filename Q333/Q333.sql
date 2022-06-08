--create database Q;
--go

use Q;
go

--create schema Q333;
--go
drop view if exists Q333.vPoints;
drop table if exists Q333.Points;
drop table if exists Q333.Z;
drop table if exists Q333.Y;
drop table if exists Q333.X;


-- Dimensions.

create table Q333.X(XID int, constraint PK_X primary key (XID));
create table Q333.Y(YID int, primary key (YID));
create table Q333.Z(ZID int, primary key (ZID));

insert Q333.X values (1),(2),(3),(4),(5),(6),(7),(8),(9);
insert Q333.Y values (1),(2),(3),(4),(5),(6),(7),(8),(9);
insert Q333.Z values (1),(2),(3),(4),(5),(6),(7),(8),(9);

-- Fact.

create table Q333.Points
(
	PointID int identity,
	XID int,
	YID int,
	ZID int,
	[Weight] decimal(8,4),
	Actual decimal(8,4), 
	[Target] decimal(8,4), 
	Performance decimal(8,4), 
	WeightedPerformance decimal(8,4),
	constraint PK_Points primary key (PointID)
);

insert Q333.Points (XID, YID, ZID)
select * from Q333.X, Q333.Y, Q333.Z order by XID, YID, ZID;

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