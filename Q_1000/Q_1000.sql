use Q;

drop table if exists Q_1000;
go

declare @Q_1000 table (ID int, Num float );

declare @i int = 1
declare @r float = (select rand(1)) -- optionally seed the randoms

while @i <= 1000000
begin
	insert @Q_1000 (ID, Num) values (@i,convert(decimal(3,2),rand()))
	set @i = @i+1;
end

create table Q_1000 (ID int, Num decimal(3,2));

insert Q_1000 select * from @Q_1000;

select * from Q_1000 order by Num desc;

