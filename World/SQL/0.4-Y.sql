use World;
go

create table Y
(
	YCode nchar(4),
	YPoints decimal(18,8) default 1,
	constraint PK_Y primary key (YCode)
);
go

declare @YCode int = 2000;
while @YCode <= 2022
begin
	insert Y (YCode) values (convert(char(4),@YCode));
	set @YCode = @YCode + 1;
end

--select * from Y;

select '0.4'
go