use Understanding;
go

drop table if exists YB;
go

create Table YB
(
	YearID int,
	Budget decimal(18,4),
	constraint PK_YB primary key (YearID),
	constraint FK_YB_Y foreign key (YearID) references Y (YearID)
);
go

declare @Allocation table
(
	YearID int,
	Entitlement float,
	Share float
);

insert @Allocation (YearID,Entitlement)
select YearID, RN_010_090 from 
(select YearID, 100+row_number() over(order by YearID) RNID from Y) t join RN on t.RNID = RN.RNID

update @Allocation
set Share = t2.Allocation from 
@Allocation a join
(select YearID, Entitlement / sum(Entitlement) over() Allocation from @Allocation) t2 on a.YearID = t2.YearID


select * from @Allocation;

--insert YB (YearID, BudgetID) values
--	(2020),
--	(2021);

---- select * from YB;

--select '5.2'
--go