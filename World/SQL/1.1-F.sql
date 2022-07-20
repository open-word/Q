use World;
go

create table F
(
	FrameworkID int,
	Code nvarchar(5),
	constraint PK_F primary key (FrameworkID),
	constraint UQ_F_Code unique (Code)
);
go

insert F (FrameworkID, Code) values
(1,'World');

--select * from F;

select '1.1'
go