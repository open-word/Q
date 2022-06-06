-- -------------------------------------------------------------
-- Create 1000 records with random preformance in 3 dimensions.
-- -------------------------------------------------------------

use Q;
go

-- IDs
drop table if exists IDs;
declare @IDs table (ID int);
declare @ID int = 1;

while @ID <= 1000
begin
	insert @IDs(ID) values (@ID);
	set @ID = @ID+1;
end

create table IDs (ID int);
insert IDs (ID) select * from @IDs;
--select * from IDs;

-- RandomNumbers
drop table if exists RandomNumbers;
declare @RandomNumbers table (RandomNumberID int, RandomNumber float);
declare @RandomNumberID int = 1;
declare @RN float = rand(1); -- seed for reproducibility

while @RandomNumberID <= 1000
begin
	insert @RandomNumbers(RandomNumberID, RandomNumber) values (@RandomNumberID, rand())
	set @RandomNumberID = @RandomNumberID+1;
end

create table RandomNumbers (RandomNumberID int, RandomNumber decimal(3,2));
insert RandomNumbers (RandomNumberID, RandomNumber) select * from @RandomNumbers;
--select * from @RandomNumbers;

-- Districts
drop table if exists Districts;
create table Districts (DistrictID int, constraint PK_Districts primary key clustered (DistrictID));
insert Districts (DistrictID) select * from @IDs where ID <= 10;
--select * from Districts;

-- Services
drop table if exists Services;
create table Services (ServiceID int, constraint PK_Services primary key clustered (ServiceID));
insert Services (ServiceID) select * from @IDs where ID <= 10;
--select * from Services;

-- Periods
drop table if exists Periods;
create table Periods (PeriodID int, constraint PK_Periods primary key clustered (PeriodID));
insert Periods (PeriodID) select * from @IDs where ID <= 10;
--select * from Periods;

-- Q_1000
drop table if exists Q_1000;
create table Q_1000 (DistrictID int, ServiceID int, PeriodID int, Rel decimal(3,2) constraint PK_Q_1000 primary key clustered (DistrictID, ServiceID, PeriodID));
insert 
	Q_1000 (DistrictID, ServiceID, PeriodID, Rel)
select 
	dsp.DistrictID,
	dsp.ServiceID,
	dsp.PeriodID,
	convert(decimal(3,2),rn.RandomNumber)
from 
	(
		select 
			row_number() over (order by DistrictID, ServiceID, PeriodID) ID,
			t.DistrictID,
			t.ServiceID,
			t.PeriodID
		from 
			(select DistrictID, ServiceID, PeriodID from Districts, Services, Periods) t
	) dsp
	join RandomNumbers rn on dsp.ID = rn.RandomNumberID;

select * from Q_1000;