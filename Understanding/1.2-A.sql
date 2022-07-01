use Understanding;
go

create table A
(
	ActorID nvarchar(25),
	constraint PK_A primary key (ActorID)
);
go

insert A (ActorID) values
	('Actor 01'),
	('Actor 02');

--select * from A;

select '1.2'
go