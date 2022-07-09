use Uganda;
go

drop table if exists NDP3.RandomNumbers;
go

create table NDP3.RandomNumbers
(
	RandomNumberID int,
	RN_000_100 float,
	RN_075_125 float,
	constraint PK_RandomNumbers primary key (RandomNumberID)
);
go

declare @RandomNumbers table
(
	RandomNumberID int,
	RandomNumber float
);

declare @ID int = 1;
declare @Rand float = rand(1) -- for reproducibility
while @ID <= 2000
begin
	insert @RandomNumbers (RandomNumberID, RandomNumber) values (@ID, rand());
	set @ID = @ID+1;
end

insert into NDP3.RandomNumbers (
	RandomNumberID, 
	RN_000_100,
	RN_075_125
) 
select 
	RandomNumberID,
	RandomNumber,
	0.75 + RandomNumber/2.0	-- [0.75,1.25]
from 
	@RandomNumbers

--select * from NDP3.RandomNumbers order by RandomNumberID;

--select min(RN_075_125), max(RN_075_125) from ndp3.RandomNumbers;

select '01';
go