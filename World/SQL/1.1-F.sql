use World;
go

create table F
(
	FCode nchar(5),
	constraint PK_F primary key (FCode),
);
go

insert F (FCode) values
('World');

--select * from F;

select '1.1'
go