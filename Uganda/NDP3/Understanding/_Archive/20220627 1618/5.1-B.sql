use Understanding;
go

create Table B
(
	BID nchar(25),
	Budget decimal(18,4),
	constraint PK_B primary key (BID)
);
go

insert
	B
values
	(1,1000000.0000);

-- select * from B;

select '5.1'
go