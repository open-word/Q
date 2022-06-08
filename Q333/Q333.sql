use Q;
go

-- Dimensions.

declare @X table (XID int, primary key (XID));
declare @Y table (YID int, primary key (YID));
declare @Z table (ZID int, primary key (ZID));

insert @X values (1),(2),(3),(4),(5),(6),(7),(8),(9);
insert @Y values (1),(2),(3),(4),(5),(6),(7),(8),(9);
insert @Z values (1),(2),(3),(4),(5),(6),(7),(8),(9);

-- Fact.

declare @Points table 
(
	PointID int identity,
	XID int,
	YID int,
	ZID int,
	[Weight] decimal(8,2),
	Actual decimal(8,2), 
	[Target] decimal(8,2), 
	Performance decimal(8,2), 
	WeightedPerformance decimal(8,2),
	primary key (PointID)
);

insert @Points (XID, YID, ZID)
select * from @X, @Y, @Z order by XID, YID, ZID;

-- Data.

declare @Rand float = rand(1) -- for reproducibility.
declare @Weight decimal(8,2), @Actual decimal(8,2), @Target decimal(8,2), @Performance decimal(8,2), @WeightedPerformance decimal(8,2);
declare @PointID int = 1;

while @PointID <= 729
begin
	set @Weight = round(900*rand(),0)+100;		-- between 100 and 1000
	set @Target = round(99*rand(),0)+1;			-- between 1 and 100
	set @Actual = @Target * (rand()/2+0.75);	-- multiplier between 0.75 and 1.25
	set @Performance = @Actual / @Target;
	set @WeightedPerformance = @Weight * @Performance;
	
	update @Points
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

select * from @Points;