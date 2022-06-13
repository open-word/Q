use Q;
go

drop table if exists Records;
go

create table Records (
	[RecordId] int identity not null,
	[Year] int not null,
	[Month] int not null,

	[Service] int not null,

	[Indicator 1 Actual] decimal(5,2) not null,
	[Indicator 1 Target] decimal(5,2) not null,
	[Indicator 1 Budget] decimal(5,2) not null,
	[Indicator 1 Weight] decimal(5,2) not null,

	[Indicator 2 Actual] decimal(5,2) not null,
	[Indicator 2 Target] decimal(5,2) not null,
	[Indicator 2 Budget] decimal(5,2) not null,
	[Indicator 2 Weight] decimal(5,2) not null,

	constraint PK_Records primary key clustered(RecordId)
);

insert Records ([Year], [Month], [Service], [Indicator 1 Actual], [Indicator 1 Target], [Indicator 1 Budget], [Indicator 1 Weight], [Indicator 2 Actual], [Indicator 2 Target], [Indicator 2 Budget], [Indicator 2 Weight]) 
values 
	(2020, 1, 1,	10, 100, 50, 0,		50, 200, 100, 0),
	(2020, 1, 2,	20, 100, 60, 0,		50, 200, 100, 0),
	(2020, 2, 1,	30, 100, 70, 0,		50, 200, 100, 0),
	(2020, 2, 2,	40, 100, 80, 0,		50, 200, 100, 0);

select * from Records;