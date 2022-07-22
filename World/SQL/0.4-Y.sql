use World;
go

create table Y
(
	YearCode nchar(4),
	constraint PK_Y primary key (YearCode)
);
go

declare @YearCode int = 2000;
while @YearCode <= 2022
begin
	insert Y (YearCode) values (convert(char(4),@YearCode));
	set @YearCode = @YearCode + 1;
end

--select * from Y;

select '0.4'
go