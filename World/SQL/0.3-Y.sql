use World;
go

create table Y
(
	YearID int,
	Code nchar(4),
	constraint PK_Y primary key (YearID),
	constraint UQ_Y_Code unique (Code)
);
go

declare @YearID int = 2000;
while @YearID <= 2022
begin
	insert Y (YearID, Code) values (@YearID, convert(char(4),@YearID));
	set @YearID = @YearID + 1;
end

--select * from Y;

select '0.3'
go