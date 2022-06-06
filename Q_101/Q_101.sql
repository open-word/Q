--drop database if exists Q;
--go

--create database Q;
--go

use Q;
go

drop table if exists Q_101;
go

create table Q_101 (
	[Q_101ID] int identity not null,
	[Service] nchar(1) not null,
	[Purpose] nvarchar(50) not null,
	[District] int not null,
	[Budget_m] decimal(8,2) not null,
	[Actual_k] decimal(8,2) not null,
	[Target_k] decimal(8,2) not null,
	[Relative] decimal(5,2) not null,
	
	[w] decimal(5,2) not null,
	[p] decimal(5,2) not null,
	[wp] decimal(5,2) not null,

	constraint PK_Q_101 primary key clustered(Q_101ID)
);

insert Q_101 ([Service], [Purpose], [District], [Budget_m], [Actual_k], [Target_k], [Relative], [w], [p], [wp]) 
values 
	('A', 'Clean Water', 1, 300, 15, 20, 0, 0, 0, 0),
	('A', 'Clean Water', 2, 300, 15, 20, 0, 0, 0, 0),
	('B', 'Literacy',	 1, 450, 50, 40, 0, 0, 0, 0),
	('B', 'Literacy',	 2, 450, 50, 40, 0, 0, 0, 0);

update Q_101 
set 
	[Relative] = [Actual_k]/[Target_k],
	[p] = [Actual_k]/[Target_k],
	[w] = [Budget_m],
	[wp] = [Budget_m] * [Actual_k]/[Target_k];

select * from Q_101;