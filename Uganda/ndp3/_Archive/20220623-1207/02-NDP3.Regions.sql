use Uganda;
go

drop view if exists NDP3.vRegions; 
go

drop table if exists NDP3.Regions; 
go

create table NDP3.Regions
(
	RegionID int,
	Name nvarchar(250),
	constraint PK_Regions primary key (RegionID)
);
go

insert NDP3.Regions (RegionID, Name) values
(1,'Central'),
(2,'Eastern'),
(3,'Northern'),
(4,'Western');
go

--select * from NDP3.Regions;
--go

create view NDP3.vRegions as
select
 	RegionID			[Region ID],
	Name				[Region Name]
from NDP3.Regions;
go
 
--select
	--*
 --from NDP3.vRegions;
 --go

select '02';
go