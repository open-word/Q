use Uganda;
go

create Table Y
(
	YearID int,
	Name nvarchar(7),
	Reference as format(YearID,'D2'),
	ReferenceName as format(YearID,'D2') + ' - ' + Name,
	constraint PK_Y primary key (YearID),
	constraint UQ_Y_Name unique (Name)
);
go

insert Y (YearID, Name) values
	(11,'2020/21'),
	(12,'2021/22'),
	(13,'2022/23'),
	(14,'2023/24'),
	(15,'2024/25');

--select * from Y;

select '1.3'
go