use World;
go

create table F
(
	FrameworkCode nchar(5),
	constraint PK_F primary key (FrameworkCode),
);
go

insert F (FrameworkCode) values
('World');

--select * from F;

select '1.1'
go