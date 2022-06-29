use Understanding;
go

create Table Y
(
	YearID int,
	constraint PK_Y primary key (YearID)
);
go

insert Y (YearID) values
	(2020),
	(2021);

--select * from Y;

select '4.1'
go