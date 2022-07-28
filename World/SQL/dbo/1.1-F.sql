use World;
go

create table F
(
	FCode nvarchar(5),
	FName nvarchar(50),
	FPoints float,
	FWeight float,
	constraint PK_F primary key (FCode),
	constraint UQ_F_Name unique (FName)
);
go

insert F (FCode, FName, FPoints, FWeight) values
('01', '2030 Agenda for Sustainable Development', 1, 1);

--select * from F;

select '1.1'
go