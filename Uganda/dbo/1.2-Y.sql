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
	( 1,'2020/21'),
	( 2,'2021/22'),
	( 3,'2022/23'),
	( 4,'2023/24'),
	( 5,'2024/25');

--select * from Y;

select '1.2'
go