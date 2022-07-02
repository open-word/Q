use Uganda;
go

create Table Y
(
	YearID int,
	Name nchar(7),
	constraint PK_Y primary key (YearID)
);
go

insert Y (YearID, Name) values
	(1,'2020/21'),
	(2,'2021/22'),
	(3,'2022/23'),
	(4,'2023/24'),
	(5,'2024/25');

--select * from Y;

select '4.1'
go