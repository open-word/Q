use Uganda;
go

create table NDP3.ProgrammeYearlyBudgets
(
	ProgrammeYearlyBudgetID int identity,
	YearName nchar(7),
	YearStart int,
	YearEnd int,
	Budget decimal (18,8),
	ProgrammeID int,
	constraint PK_ProgrammeYearlyBudgets primary key (ProgrammeYearlyBudgetID),
	constraint FK_ProgrammeYearlyBudgets_Programmes foreign key (ProgrammeID) references NDP3.Programmes (ProgrammeID)
);
go

insert NDP3.ProgrammeYearlyBudgets (YearName, YearStart, YearEnd, Budget, ProgrammeID) values
	('2020/21', 2020, 2021, 3942.0, 1),
	('2021/22', 2021, 2022, 3438.0, 1),
	('2022/23', 2022, 2023, 3431.0, 1),
	('2023/24', 2023, 2024, 3361.0, 1),
	('2024/25', 2024, 2025, 4484.0, 1);
insert NDP3.ProgrammeYearlyBudgets (YearName, YearStart, YearEnd, Budget, ProgrammeID) values
	('2020/21', 2020, 2021, 1011.00, 2),
	('2021/22', 2021, 2022,  904.00, 2),
	('2022/23', 2022, 2023, 1157.00, 2),
	('2023/24', 2023, 2024,  992.00, 2),
	('2024/25', 2024, 2025, 1068.00, 2);
insert NDP3.ProgrammeYearlyBudgets (YearName, YearStart, YearEnd, Budget, ProgrammeID) values
	('2020/21', 2020, 2021, 1337.20, 3),
	('2021/22', 2021, 2022, 1146.20, 3),
	('2022/23', 2022, 2023, 1441.20, 3),
	('2023/24', 2023, 2024, 1168.20, 3),
	('2024/25', 2024, 2025, 1262.20, 3);
insert NDP3.ProgrammeYearlyBudgets (YearName, YearStart, YearEnd, Budget, ProgrammeID) values
	('2020/21', 2020, 2021, 1776.00, 4),
	('2021/22', 2021, 2022, 1910.00, 4),
	('2022/23', 2022, 2023, 2271.00, 4),
	('2023/24', 2023, 2024, 2507.00, 4),
	('2024/25', 2024, 2025, 2881.00, 4);
insert NDP3.ProgrammeYearlyBudgets (YearName, YearStart, YearEnd, Budget, ProgrammeID) values
	('2020/21', 2020, 2021, 2264.00, 5),
	('2021/22', 2021, 2022, 2313.00, 5),
	('2022/23', 2022, 2023, 2537.00, 5),
	('2023/24', 2023, 2024, 2283.00, 5),
	('2024/25', 2024, 2025, 2505.00, 5);
insert NDP3.ProgrammeYearlyBudgets (YearName, YearStart, YearEnd, Budget, ProgrammeID) values
	('2020/21', 2020, 2021, 1345.80, 6),
	('2021/22', 2021, 2022, 1305.80, 6),
	('2022/23', 2022, 2023, 1565.80, 6),
	('2023/24', 2023, 2024, 1563.80, 6),
	('2024/25', 2024, 2025, 1804.80, 6);
insert NDP3.ProgrammeYearlyBudgets (YearName, YearStart, YearEnd, Budget, ProgrammeID) values
	('2020/21', 2020, 2021, 1482.80, 7),
	('2021/22', 2021, 2022, 1498.80, 7),
	('2022/23', 2022, 2023, 1792.80, 7),
	('2023/24', 2023, 2024, 1862.80, 7),
	('2024/25', 2024, 2025, 2063.80, 7);
insert NDP3.ProgrammeYearlyBudgets (YearName, YearStart, YearEnd, Budget, ProgrammeID) values
	('2020/21', 2020, 2021,  8403.80, 8),
	('2021/22', 2021, 2022,  8466.80, 8),
	('2022/23', 2022, 2023, 11917.80, 8),
	('2023/24', 2023, 2024, 11537.80, 8),
	('2024/25', 2024, 2025, 11922.80, 8);
insert NDP3.ProgrammeYearlyBudgets (YearName, YearStart, YearEnd, Budget, ProgrammeID) values
	('2020/21', 2020, 2021, 1822.20, 9),
	('2021/22', 2021, 2022, 1514.20, 9),
	('2022/23', 2022, 2023, 1869.20, 9),
	('2023/24', 2023, 2024, 1436.20, 9),
	('2024/25', 2024, 2025, 1539.20, 9);
insert NDP3.ProgrammeYearlyBudgets (YearName, YearStart, YearEnd, Budget, ProgrammeID) values
	('2020/21', 2020, 2021, 2392.0, 10),
	('2021/22', 2021, 2022, 2440.0, 10),
	('2022/23', 2022, 2023, 2717.0, 10),
	('2023/24', 2023, 2024, 3208.0, 10),
	('2024/25', 2024, 2025, 5108.0, 10);
insert NDP3.ProgrammeYearlyBudgets (YearName, YearStart, YearEnd, Budget, ProgrammeID) values
	('2020/21', 2020, 2021, 1366.0, 11),
	('2021/22', 2021, 2022, 1341.0, 11),
	('2022/23', 2022, 2023, 1536.0, 11),
	('2023/24', 2023, 2024, 1431.0, 11),
	('2024/25', 2024, 2025, 1568.0, 11);
insert NDP3.ProgrammeYearlyBudgets (YearName, YearStart, YearEnd, Budget, ProgrammeID) values
	('2020/21', 2020, 2021, 10163.80, 12),
	('2021/22', 2021, 2022, 10357.80, 12),
	('2022/23', 2022, 2023, 10166.80, 12),
	('2023/24', 2023, 2024, 11144.80, 12),
	('2024/25', 2024, 2025, 12835.80, 12);
insert NDP3.ProgrammeYearlyBudgets (YearName, YearStart, YearEnd, Budget, ProgrammeID) values
	('2020/21', 2020, 2021,  927.20, 13),
	('2021/22', 2021, 2022,  978.20, 13),
	('2022/23', 2022, 2023,  983.20, 13),
	('2023/24', 2023, 2024, 1034.20, 13),
	('2024/25', 2024, 2025, 1238.20, 13);
insert NDP3.ProgrammeYearlyBudgets (YearName, YearStart, YearEnd, Budget, ProgrammeID) values
	('2020/21', 2020, 2021, 3031.80, 14),
	('2021/22', 2021, 2022, 3265.80, 14),
	('2022/23', 2022, 2023, 3709.80, 14),
	('2023/24', 2023, 2024, 4168.80, 14),
	('2024/25', 2024, 2025, 4808.80, 14);
insert NDP3.ProgrammeYearlyBudgets (YearName, YearStart, YearEnd, Budget, ProgrammeID) values
	('2020/21', 2020, 2021, 8020.20, 15),
	('2021/22', 2021, 2022, 7464.20, 15),
	('2022/23', 2022, 2023, 7978.20, 15),
	('2023/24', 2023, 2024, 8654.20, 15),
	('2024/25', 2024, 2025, 9935.20, 15);
insert NDP3.ProgrammeYearlyBudgets (YearName, YearStart, YearEnd, Budget, ProgrammeID) values
	('2020/21', 2020, 2021, 3333.80, 16),
	('2021/22', 2021, 2022, 3475.80, 16),
	('2022/23', 2022, 2023, 3846.80, 16),
	('2023/24', 2023, 2024, 4157.80, 16),
	('2024/25', 2024, 2025, 5466.80, 16);
insert NDP3.ProgrammeYearlyBudgets (YearName, YearStart, YearEnd, Budget, ProgrammeID) values
	('2020/21', 2020, 2021, 6218.20, 17),
	('2021/22', 2021, 2022, 5706.20, 17),
	('2022/23', 2022, 2023, 6201.20, 17),
	('2023/24', 2023, 2024, 6599.20, 17),
	('2024/25', 2024, 2025, 7779.20, 17);
insert NDP3.ProgrammeYearlyBudgets (YearName, YearStart, YearEnd, Budget, ProgrammeID) values
	('2020/21', 2020, 2021, 1960.0, 18),
	('2021/22', 2021, 2022, 1883.0, 18),
	('2022/23', 2022, 2023, 1916.0, 18),
	('2023/24', 2023, 2024, 1926.0, 18),
	('2024/25', 2024, 2025, 2888.0, 18);
go

 --select * from NDP3.ProgrammeYearlyBudgets;
 --go

 --select ProgrammeID, convert(decimal, sum(budget)) from ndp3.ProgrammeYearlyBudgets group by ProgrammeID order by ProgrammeID

 create view NDP3.vProgrammeYearlyBudgets as
 select
 	ProgrammeYearlyBudgetID	[PYB ID],
	YearName				[PYB Year Name],	
	YearStart				[PYB Year Start],
	YearEnd					[PYB Year End],
	Budget					[PYB Budget],
	ProgrammeID				[Programme ID]
 from NDP3.ProgrammeYearlyBudgets;
 go

select '160';
go