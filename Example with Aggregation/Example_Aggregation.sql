--drop database if exists Q;
--go

--create database Q;
--go

use Q;
go

drop table if exists Example_Aggregation;
go

create table Example_Aggregation (
	[j] int not null,
	[i] int identity not null,
	[wi] decimal(5,2) not null,
	[pi] decimal(5,2) not null,
	[wipi] decimal(5,2) not null,

	constraint PK_Example_Aggregation primary key clustered(i)
);

insert Example_Aggregation ([j], [wi], [pi], [wipi]) 
values 
	(1, 1, 0.1, 0.0),
	(1, 2, 0.2, 0.0),
	(1, 3, 0.3, 0.0),
	(2, 4, 0.4, 0.0),
	(2, 5, 0.5, 0.0),
	(2, 6, 0.6, 0.0),
	(3, 7, 0.7, 0.0),
	(3, 8, 0.8, 0.0),
	(3, 9, 0.9, 0.0);

update Example_Aggregation set [wipi] = [wi]*[pi];

select * from Example_Aggregation;