use Q;
go

--ID DistrictID ServiceID PeriodID Weight Target Actual Performance WeightedPerformance
drop table if exists Q1000;
go

create table Q1000
(
	Q1000ID int identity,
	DistrictID int,
	ServiceID int,
	PeriodID int,
	[Weight] decimal(8,2),
	Actual decimal(8,2),
	[Target] decimal(8,2),
	Performance decimal(8,2),
	WeightedPerformance decimal(8,2),
	constraint PK_Q1000 primary key clustered (Q1000ID)
)

declare @Rand float = rand(1) -- for reproducibility.

declare @DistrictID int, @ServiceID int, @PeriodID int;
declare @Weight decimal(8,2), @Actual decimal(8,2), @Target decimal(8,2), @Performance decimal(8,2), @WeightedPerformance decimal(8,2);

set @DistrictID = 1;
while @DistrictID <= 10
begin 
	set @ServiceID = 1
	while @ServiceID <= 10
	begin
	set @PeriodID = 1
		while @PeriodID <= 10
		begin
			set @Weight = round(900*rand(),0)+100;		-- between 100 and 1000
			set @Target = round(99*rand(),0)+1;			-- between 1 and 100
			set @Actual = @Target * (rand()/2+0.75);	-- multiplier between 0.75 and 1.25
			set @Performance = @Actual / @Target;
			set @WeightedPerformance = @Weight * @Performance;
			insert Q1000 
			(
				DistrictID,
				ServiceID,
				PeriodID,
				[Weight],
				Actual,
				[Target],
				Performance,
				WeightedPerformance
			)
			values
			(
				@DistrictID,
				@ServiceID,
				@PeriodID,
				@Weight,
				@Actual,
				@Target,
				@Performance,
				@WeightedPerformance
			)
			set @PeriodID = @PeriodID+1;
		end
		set @ServiceID = @ServiceID+1;
	end
	set @DistrictID = @DistrictID+1;
end

select * from Q1000;