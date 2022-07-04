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
	(2,'2021/22','02');

--select * from Y;

select '2.1'
go