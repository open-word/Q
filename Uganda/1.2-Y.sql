use Uganda;
go

create Table Y
(
	YearID int,
	Name nvarchar(7),
	Reference nvarchar(10),
	ReferenceName as Reference + '-' + Name,
	constraint PK_Y primary key (YearID)
);
go

insert Y (YearID, Name, Reference) values
	(1,'2020/21','01'),
	(2,'2021/22','02'),
	(3,'2022/23','03'),
	(4,'2023/24','04'),
	(5,'2024/25','05');

--select * from Y;

select '1.2'
go