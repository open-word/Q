use Q;
go

drop table if exists Test;
go

create table Test (
	YY int not null,
	Service nvarchar(10) not null,
	Budget decimal(5,2) not null
);

insert Test (YY, Service, Budget) values
	(2020, 'A1', 1),
	(2020, 'A2', 2),
	(2020, 'B1', 3),
	(2020, 'B2', 4),
	(2021, 'A1', 10),
	(2021, 'A2', 20),
	(2021, 'B1', 30),
	(2021, 'B2', 40);

-- ---------------------------------------------------------
-- Approach 1: In-line Filter
-- ---------------------------------------------------------

select
	t.YY,
	t.Service,
	t.Budget / b.SumBudget
from 
	Test t
	join 
	(
		select 
			YY,
			sum(budget) SumBudget
		from 
			test
		where
			Service like '%A%'
		group by YY
	) b on t.YY = b.YY
where
	Service like '%A%';

-- ---------------------------------------------------------
-- Approach 1: Pre-filter
-- ---------------------------------------------------------

declare @Filtered table 
(
	YY int not null,
	Service nvarchar(10) not null,
	Budget decimal(5,2) not null
);

insert @filtered select * from Test where Service like '%A%';

select
	t.YY,
	t.Service,
	t.Budget / b.SumBudget
from 
	@Filtered t
	join 
	(
		select 
			YY,
			sum(budget) SumBudget
		from 
			@Filtered
		group by YY
	) b on t.YY = b.YY;