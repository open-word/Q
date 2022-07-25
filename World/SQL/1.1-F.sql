use World;
go

create table F
(
	FCode nvarchar(5),
	FPoints float,
	FWeight float,
	constraint PK_F primary key (FCode),
);
go

insert F (FCode, FPoints, FWeight) values
('World', 1, 1);

--select * from F;

select '1.1'
go