use Uganda;
go

 drop view if exists NDP3.vProgrammeKeyResultTargets; 
 go

drop table if exists NDP3.ProgrammeKeyResultTargets; 
go

create table NDP3.ProgrammeKeyResultTargets
(
	ProgrammeKeyResultTargetID int identity,
	Name nvarchar(250),
	YearStart int,
	YearEnd int,
	Weight decimal (14,4),
	Actual decimal (14,4) null,
	Target decimal (14,4),
	Performance decimal (14,4) null,
	WeightedPerformance decimal (14,4) null,
	ProgrammeKeyResultID int,
	constraint PK_ProgrammeKeyResultTargets primary key (ProgrammeKeyResultTargetID),
	constraint FK_ProgrammeKeyResultTargets_ProgrammeKeyResults foreign key (ProgrammeKeyResultID) references NDP3.ProgrammeKeyResults (ProgrammeKeyResultID)
);
go

declare @ProgrammeKeyResultID int = 0;
-- 1
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '01.01.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 5.2, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 5.4, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 5.6, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 5.8, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 6.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '01.02.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 0.619, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 0.747, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 0.900, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 1.084, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 1.307, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '01.02.02');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 0.136, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 0.171, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 0.216, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 0.270, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 0.338, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '01.02.03');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 0.280, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 0.353, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 0.446, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 0.558, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 0.698, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '01.02.04');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 0.101, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 0.118, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 0.149, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 0.186, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 0.214, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '01.02.05');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 0.004, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 0.004, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 0.005, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 0.006, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 0.007, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '01.02.06');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 0.076, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 0.089, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 0.103, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 0.119, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 0.136, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '01.03.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 54.32, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 55.72, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 57.52, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 66.32, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 76.82, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '01.04.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 19776.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 19938.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 20200.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 23762.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 27424.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '01.05.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 87.7, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 88.2, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 88.7, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 89.2, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 89.7, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '01.06.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 75.20, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 80.16, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 84.13, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 87.30, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 89.84, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '01.07.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 67.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 65.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 60.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 57.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 55.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '01.08.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0,  50000.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0,  75000.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 100000.0, @ProgrammeKeyResultID), -- 150000 in NPA3
	('2023/24', 2023, 2024, 1.0, 125000.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 150000.0, @ProgrammeKeyResultID); -- 100000 in NPA3
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '01.09.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 2527.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 2656.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 2757.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 2919.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 3114.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '01.10.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 33.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 30.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 25.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 18.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 15.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '01.11.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0,  550000.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0,  750000.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 1050000.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 1350000.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 1500000.0, @ProgrammeKeyResultID);
-- 2
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '02.01.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0,  300.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0,  600.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 1000.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 1500.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 2000.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '02.02.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0,  550.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0,  700.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0,  800.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0,  900.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 1000.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '02.03.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 120.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 140.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 160.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 180.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 200.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '02.04.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 0.9, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 1.2, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 1.5, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 1.7, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 2.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '02.05.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 5.5, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 5.8, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 6.2, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 6.6, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 7.1, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '02.06.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 1.8, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 2.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 2.2, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 2.4, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 2.6, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '02.07.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 600000.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 450000.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 300000.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 200000.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 125000.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '02.08.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 253.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 214.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 175.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 136.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0,  97.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '02.09.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 49198.3, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 42169.9, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 36145.7, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 30982.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 18750.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '02.10.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 18.1, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 15.4, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 12.8, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 10.1, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0,  7.5, @ProgrammeKeyResultID);
-- 3
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '03.01.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 60.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 63.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 64.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 65.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 65.0, @ProgrammeKeyResultID);	-- 265 in NDP3
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '03.02.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 0.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 0.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 0.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 2.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 5.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '03.03.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 22.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 24.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 26.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 28.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 30.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '03.04.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0,  4250.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0,  5210.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0,  8300.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 15000.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 20000.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '03.05.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0,  70.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0,  80.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0,  90.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 150.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 200.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '03.06.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 4.4, @ProgrammeKeyResultID), -- 0.984.41 in NDP3
	('2021/22', 2021, 2022, 1.0, 4.2, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 4.6, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 2.2, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 1.1, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '03.07.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 3.800, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 3.925, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 4.050, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 4.175, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 4.300, @ProgrammeKeyResultID);
-- 4
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '04.01.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 7.8, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 7.9, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 8.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 8.1, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 8.5, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '04.02.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 1.5840, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 1.6310, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 1.6890, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 1.7740, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 1.8620, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '04.03.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 710709.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 767566.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 828971.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 895289.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 966912.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '04.04.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 1223.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 1292.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 1361.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 1431.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 1500.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '04.05.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 115000.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 171500.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 260000.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 281760.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 301483.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '04.06.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0,  8.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 10.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 12.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 14.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 15.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '04.07.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0,  785349.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 1126976.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 1706563.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 1877220.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 2102486.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '04.08.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 6.8, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 7.1, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 7.5, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 8.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 8.5, @ProgrammeKeyResultID)
-- 5
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '05.01.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 24.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 29.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 32.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 35.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 40.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '05.02.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 77, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 78, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 79, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 80, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 81, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '05.02.02');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 78.5, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 79.5, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 80.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 80.5, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 82.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '05.02.03');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 64, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 65, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 66, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 67, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 68, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '05.03.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 60.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 61.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 62.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 63.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 65.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '05.03.02');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 65.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 68.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 71.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 74.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 80.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '05.04.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 10.3, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 11.5, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 12.7, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 13.9, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 15.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '05.05.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 9.08, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 9.20, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 9.32, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 9.45, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 9.57, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '05.06.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 50.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 60.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 70.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 80.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 90.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '05.07.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 66.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 72.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 78.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 84.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 90.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '05.08.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 40.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 50.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 60.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 70.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 80.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '05.09.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 1.31, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 1.23, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 1.15, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 1.07, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 1.00, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '05.10.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 130.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 110.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0,  90.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0,  70.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0,  50.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '05.11.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 28.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 32.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 35.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 36.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 38.0, @ProgrammeKeyResultID);
-- 6
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '06.01.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 52.9, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 51.7, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 50.4, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 49.2, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 48.1, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '06.02.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 1.997, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 2.196, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 2.416, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 2.657, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 2.923, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '06.03.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 50.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 50.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 50.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 50.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 50.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '06.04.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 5952.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 6295.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 6674.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 7018.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 7356.0, @ProgrammeKeyResultID);
-- 7
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '07.01.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 13.53, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 14.88, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 16.37, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 18.01, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 19.81, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '07.02.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 27.6, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 27.8, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 28.1, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 28.3, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 28.6, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '07.03.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 15.8, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 15.9, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 16.1, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 16.3, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 16.4, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '07.04.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 9.7, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 9.9, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 10.1, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 10.3, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 10.4, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '07.05.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 12.9, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 13.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 13.2, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 13.3, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 13.4, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '07.06.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0,  8.6, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0,  9.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0,  9.4, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0,  9.6, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 10.0, @ProgrammeKeyResultID);
-- 8
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '08.01.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 3.98, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 3.86, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 3.74, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 3.62, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 3.65, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '08.01.02');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 2.4, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 2.3, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 2.2, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 2.1, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 2.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '08.01.03');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 1.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 1.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 1.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 1.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 1.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '08.01.04');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 1.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 1.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 1.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 1.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 1.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '08.01.05');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 16.8, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 15.6, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 14.4, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 13.2, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 12.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '08.01.06');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 0.70, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 0.65, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 0.60, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 0.55, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 0.50, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '08.01.07');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 17, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 15, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 13, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 13, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 10, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '08.02.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 1125, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 1120, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 1114, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 1109, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 1000, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '08.02.02');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 741.6, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 681.2, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 620.8, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 560.4, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 500.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '08.02.03');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 0.038, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 0.036, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 0.034, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 0.032, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 0.030, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '08.02.04');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 460, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 420, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 380, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 340, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 300, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '08.02.05');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 0.034, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 0.702, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 0.668, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 0.634, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 0.600, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '08.02.06');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 0.046, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 0.042, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 0.038, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 0.034, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 0.030, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '08.02.07');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 0.056, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 0.052, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 0.048, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 0.044, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 0.040, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '08.03.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 5717, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 6163, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 6609, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 7055, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 7500, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '08.03.02');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 1348, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 1448, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 1548, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 1648, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 1748, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '08.03.03');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 302, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 342, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 382, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 422, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 462, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '08.04.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 10084, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 11001, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 11918, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 12835, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 13752, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '08.04.02');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 4556, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 4969, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 5384, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 5798, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 6212, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '08.05.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 11268, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 12292, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 13317, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 14341, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 15365, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '08.05.02');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 27896, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 30433, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 32969, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 35505, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 38041, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '08.06.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 5, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 6, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 6, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 7, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 7, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '08.07.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 11, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 12, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 13, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 14, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 15, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '08.08.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 2.98, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 2.86, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 2.74, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 2.62, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 2.50, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '08.08.02');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 1.79, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 1.78, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 1.77, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 1.76, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 1.75, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '08.08.03');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 38, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 36, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 34, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 32, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 30, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '08.08.04');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 4.9, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 4.8, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 4.7, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 4.6, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 4.5, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '08.09.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 1, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 2, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 3, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 4, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 5, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '08.10.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 196000, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 192000, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 188000, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 184000, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 180000, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '08.11.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 20, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 20, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 20, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 20, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 20, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '08.11.02');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 2, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 2, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 2, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 2, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 2, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '08.12.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 25, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 24, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 23, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 22, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 21, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '08.13.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 138, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 116, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0,  94, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0,  72, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0,  50, @ProgrammeKeyResultID);
-- 9
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '09.01.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 30, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 35, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 40, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 50, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 60, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '09.02.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 16.00, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 17.00, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 18.00, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 19.00, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 21.74, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '09.03.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 150, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 200, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 300, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 400, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 578, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '09.04.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 2600, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 3000, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 3400, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 3800, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 4354, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '09.05.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 90, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 90, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 90, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 90, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 90, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '09.06.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 1884.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 1990.4, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 2493.6, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 2996.8, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 3500.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '09.07.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 20, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 25, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 30, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 40, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 50, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '09.08.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 80, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 75, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 70, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 60, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 50, @ProgrammeKeyResultID);
-- 10
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '10.01.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 30, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 35, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 43, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 46, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 50, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '10.01.02');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 79, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 79, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 83, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 87, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 95, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '10.01.03');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 79, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 79, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 83, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 87, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 90, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '10.02.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 200, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 140, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 100, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0,  90, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0,  70, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '10.02.02');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 95000, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 87000, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 75000, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 70000, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 60000, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '10.02.03');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 1550000, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 1300000, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 1000000, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0,  900000, @ProgrammeKeyResultID), -- 9,000,000 in NDP3
	('2024/25', 2024, 2025, 1.0,  800000, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '10.03.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 177000, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 225000, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 270000, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 300000, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 322000, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '10.04.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 2.67, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 2.89, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 3.13, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 3.40, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 3.69, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '10.05.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 6000, @ProgrammeKeyResultID),	-- Estimate as 30000/5 
	('2021/22', 2021, 2022, 1.0, 6000, @ProgrammeKeyResultID),	-- Estimate as 30000/5
	('2022/23', 2022, 2023, 1.0, 6000, @ProgrammeKeyResultID),	-- Estimate as 30000/5
	('2023/24', 2023, 2024, 1.0, 6000, @ProgrammeKeyResultID),	-- Estimate as 30000/5
	('2024/25', 2024, 2025, 1.0, 6000, @ProgrammeKeyResultID);	-- Estimate as 30000/5
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '10.06.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 25, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 40, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 61, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 72, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 80, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '10.07.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0,  41, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0,  51, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0,  61, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0,  71, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 100, @ProgrammeKeyResultID);
-- 11
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '11.01.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 3.98, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 3.86, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 3.74, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 3.62, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 3.50, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '11.02.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 24, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 29, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 32, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 35, @ProgrammeKeyResultID),	-- 3 in NDP3
	('2024/25', 2024, 2025, 1.0, 40, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '11.03.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 1348, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 1448, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 1548, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 1648, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 1748, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '11.04.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0,  7.32, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0,  8.54, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0,  9.76, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 10.98, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 12.20, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '11.05.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 13.5, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 12.3, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 11.3, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 10.3, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0,  9.4, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '11.06.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 58, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 55, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 50, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 44, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 40, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '11.07.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 2.112, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 2.024, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 1.936, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 1.848, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 1.760, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '11.08.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 33.2, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 36.8, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 40.8, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 45.2, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 50.1, @ProgrammeKeyResultID);
-- 12
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.01.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 4.6, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 5.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 5.3, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 6.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 7.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.02.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0,  6.8, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0,  7.3, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0,  8.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0,  9.5, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 11.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.03.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 27, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 25, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 23, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 21, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 19, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.04.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0,  9, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 11, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 12, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 17, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 20, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.05.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 35.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 35.5, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 36.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 40.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 55.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.06.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 44.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 48.4, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 52.6, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 58.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 65.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.07.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 3./8., @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 3./8., @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 3./8., @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 3./8., @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 3./8., @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.08.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 311.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 286.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 261.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 236.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 211.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.09.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 42.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 39.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 35.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 33.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 30.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.10.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 5.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 4.9, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 4.8, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 4.6, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 4.5, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.11.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 11.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 10.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0,  8.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0,  7.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0,  6.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.11.02');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 4.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 3.5, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 3.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 2.5, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 2.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.11.03');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 3.5, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 3.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 2.5, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 1.8, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 1.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.12.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 3.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 2.8, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 2.6, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 2.4, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 2.5, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.12.02');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 2.4, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 2.3, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 2.2, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 2.1, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 2.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.12.03');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 1.6, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 1.5, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 1.4, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 1.3, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 1.2, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.12.04');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 5.6, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 5.4, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 5.2, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 5.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 4.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.13.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 22.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 20.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 18.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 16.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 15.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.14.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 75.4, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 77.8, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 80.3, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 82.6, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 85.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.14.02');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0,  79.2, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0,  84.4, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0,  89.6, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0,  94.8, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 100.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.15.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 23.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 28.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 32.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 37.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 45.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.15.02');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 36.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 38.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 42.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 46.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 50.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.16.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 12.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 11.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 10.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 09.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 08.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.17.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 26.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 22.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 18.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 14.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 10.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.18.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 25.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 30.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 35.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 40.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 45.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.19.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 0.57, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 0.60, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 0.65, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 0.70, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 0.80, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.20.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 50.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 45.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 40.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 35.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 30.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.21.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 100.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 100.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 100.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 100.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 100.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.22.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 48.2, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 52.4, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 56.6, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 60.8, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 65.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.23.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0,  7.5, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 10.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 12.5, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 15.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 20.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.24.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 76.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 74.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 72.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 70.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 65.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.24.02');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 6.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 5.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 4.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 4.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 1.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.24.03');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 8.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 7.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 6.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 6.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 4.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.24.04');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 18.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 17.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 16.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 15.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 14.0, @ProgrammeKeyResultID);	-- 5 in NDP3
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.25.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 25.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 30.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 35.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 40.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 45.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.26.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 36.7, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 34.9, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 33.2, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 31.5, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 29.9, @ProgrammeKeyResultID);
-- 13
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '13.01.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 27.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 29.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 31.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 33.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 35.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '13.02.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 0.5, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 0.6, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 0.7, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 0.8, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 1.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '13.03.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 0.05, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 0.09, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 0.13, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 0.16, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 0.21, @ProgrammeKeyResultID);
-- 14
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '14.01.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 70, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 75, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 80, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 85, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 90, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '14.02.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 50, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 60, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 70, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 80, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 90, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '14.03.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0,  2.6, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0,  3.7, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0,  5.2, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0,  7.8, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 10.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '14.04.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 80, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 85, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 85, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 90, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 95, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '14.04.02');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 20, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 30, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 40, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 50, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 60, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '14.05.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 86, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 88, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 90, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 92, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 94, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '14.05.02');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 88, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 90, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 92, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 94, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 96, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '14.06.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 28.7, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 30.1, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 31.6, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 33.2, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 35.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '14.06.02');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 460, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 400, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 350, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 306, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 306, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '14.07.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 60, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 70, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 80, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 90, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 90, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '14.08.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, -0.39, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, -0.11, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 0.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 0.004, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 0.01, @ProgrammeKeyResultID);
-- 15
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '15.01.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 14.2, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 13.2, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 12.2, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 11.3, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 10.4, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '15.02.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 64.6, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 67.1, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 69.7, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 72.3, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 75.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '15.03.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 76.3, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 79.5, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 82.8, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 86.3, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 90.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '15.04.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 28.7, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 30.1, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 31.6, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 33.2, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 35.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '15.05.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 0.05, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 0.05, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 0.08, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 0.09, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 0.10, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '15.06.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0,  7.6, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0,  8.2, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0,  8.8, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0,  9.5, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 10.3, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '15.07.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 7.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 7.3, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 7.6, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 7.9, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 8.6, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '15.08.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0,  5, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 10, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 15, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 20, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 25, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '15.09.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 90, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 90, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 90, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 90, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 90, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '15.10.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 90, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 90, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 90, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 90, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 90, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '15.11.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 1.90, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 1.90, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 1.80, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 1.80, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 1.72, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '15.12.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0,  50, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0,  70, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0,  80, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0,  90, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 100, @ProgrammeKeyResultID);
-- 16
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '16.01.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, -0.08, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0,  0.08, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0,  0.05, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0,  0.03, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0,  0.01, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '16.02.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 51.0, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 52.0, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 53.1, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 54.2, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 55.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '16.03.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 28.7, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 30.1, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 31.6, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 33.2, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 20.0, @ProgrammeKeyResultID); -- NDP3 may have a typo
-- 17
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '17.01.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 40.7, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 37.7, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 34.8, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 31.8, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 25.8, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '17.01.02');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 34.4, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 31.4, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 28.3, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 25.2, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 19.1, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '17.01.03');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 32.7, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 30.8, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 29.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 27.2, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 23.5, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '17.01.04');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 33.4, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 31.9, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 30.5, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 29.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 26.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '17.01.05');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 57.2, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 54.2, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 51.2, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 48.1, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 42.1, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '17.01.06');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 30.9, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 28.4, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 25.9, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 23.3, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 18.3, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '17.01.07');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 24.2, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 23.3, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 22.4, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 21.5, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 19.7, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '17.01.08');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 15.5, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 13.6, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 11.8, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 10.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0,  6.3, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '17.02.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 401667, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 482297, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 548408, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 587840, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 632044, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '17.03.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 50, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 55, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 60, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 65, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 70, @ProgrammeKeyResultID);
-- 18
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '18.01.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 100, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 100, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 100, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 100, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 100, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '18.02.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 20, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 40, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 60, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 70, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 80, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '18.03.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 5.49, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 6.08, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 5.66, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 5.29, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 5.00, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '18.04.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 13.62, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 16.28, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 16.45, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 16.98, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 17.01, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '18.05.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 4.51, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 5.99, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 6.38, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 7.00, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 7.20, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '18.06.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 13.08, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 13.29, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 13.69, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 14.38, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 15.43, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '18.07.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 15.6, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 18.4, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 25.0, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 28.0, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 30.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '18.08.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 75.20, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, 76.64, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0, 77.76, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0, 78.88, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 80.00, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '18.09.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, -0.390, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0, -0.110, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0,  0.000, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0,  0.004, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0,  0.010, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '18.10.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0,  65, @ProgrammeKeyResultID),
	('2021/22', 2021, 2022, 1.0,  74, @ProgrammeKeyResultID),
	('2022/23', 2022, 2023, 1.0,  85, @ProgrammeKeyResultID),
	('2023/24', 2023, 2024, 1.0,  90, @ProgrammeKeyResultID),
	('2024/25', 2024, 2025, 1.0, 100, @ProgrammeKeyResultID);
go

 --select * from NDP3.ProgrammeKeyResultTargets;
 --go

 create view NDP3.vProgrammeKeyResultTargets as
 select
 	ProgrammeKeyResultTargetID	[PKRT ID],
	Name						[PKRT Name],
	YearStart					[PKRT Year Start],
	YearEnd						[PKRT Year End],
	Weight						[PKRT Weight],
	Actual						[PKRT Actual],
	Target						[PKRT Target],
	Performance					[PKRT Performance],
	WeightedPerformance			[PKRT Weighted Performance]	,
	ProgrammeKeyResultID		[PKR ID]
 from NDP3.ProgrammeKeyResultTargets;
 go

 --select
	--*
 --from NDP3.vProgrammeKeyResultTargets;
 --go

select '05.00';
go