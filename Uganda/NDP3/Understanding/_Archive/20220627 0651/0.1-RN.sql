use Understanding;
go

create table RN
(
	RNID int,
	RN_000_100 float,
	RN_010_090 float,
	RN_075_125 float,
	constraint PK_RN primary key (RNID)
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

insert into RN (
	RNID, 
	RN_000_100,
	RN_010_090,
	RN_075_125
) 
select 
	RandomNumberID,
	RandomNumber,
	0.10 + RandomNumber * 0.80,	--[0.10,0.90] for allocating budget
	0.75 + RandomNumber * 0.50	--[0.75,1.25] for performance
from 
	@RandomNumbers

--select * from RN;

select '0.1';
go