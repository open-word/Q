use Uganda;
go

create Table B
(
	BID nchar(25),
	Budget decimal(18,8),
	constraint PK_B primary key (BID)
);
go

insert
	B
values
	(1,337439);

-- select * from B;

select '5.1'
go