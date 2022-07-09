use Uganda;
go

declare @ProgrammeKeyResultID int = 0;

-- 12 Human Capital Devlopment
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.01');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 4.6, @ProgrammeKeyResultID),
	('2021/22', 2020, 2021, 1.0, 5.0, @ProgrammeKeyResultID),
	('2022/23', 2020, 2021, 1.0, 5.3, @ProgrammeKeyResultID),
	('2023/24', 2020, 2021, 1.0, 6.0, @ProgrammeKeyResultID),
	('2024/25', 2020, 2021, 1.0, 7.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.02');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0,  6.8, @ProgrammeKeyResultID),
	('2021/22', 2020, 2021, 1.0,  7.3, @ProgrammeKeyResultID),
	('2022/23', 2020, 2021, 1.0,  8.0, @ProgrammeKeyResultID),
	('2023/24', 2020, 2021, 1.0,  9.5, @ProgrammeKeyResultID),
	('2024/25', 2020, 2021, 1.0, 11.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.03');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 27, @ProgrammeKeyResultID),
	('2021/22', 2020, 2021, 1.0, 25, @ProgrammeKeyResultID),
	('2022/23', 2020, 2021, 1.0, 23, @ProgrammeKeyResultID),
	('2023/24', 2020, 2021, 1.0, 21, @ProgrammeKeyResultID),
	('2024/25', 2020, 2021, 1.0, 19, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.04');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0,  9, @ProgrammeKeyResultID),
	('2021/22', 2020, 2021, 1.0, 11, @ProgrammeKeyResultID),
	('2022/23', 2020, 2021, 1.0, 12, @ProgrammeKeyResultID),
	('2023/24', 2020, 2021, 1.0, 17, @ProgrammeKeyResultID),
	('2024/25', 2020, 2021, 1.0, 20, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.05');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 35.0, @ProgrammeKeyResultID),
	('2021/22', 2020, 2021, 1.0, 35.5, @ProgrammeKeyResultID),
	('2022/23', 2020, 2021, 1.0, 36.0, @ProgrammeKeyResultID),
	('2023/24', 2020, 2021, 1.0, 40.0, @ProgrammeKeyResultID),
	('2024/25', 2020, 2021, 1.0, 55.0, @ProgrammeKeyResultID);

set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.06');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 44.0, @ProgrammeKeyResultID),
	('2021/22', 2020, 2021, 1.0, 48.4, @ProgrammeKeyResultID),
	('2022/23', 2020, 2021, 1.0, 52.6, @ProgrammeKeyResultID),
	('2023/24', 2020, 2021, 1.0, 58.0, @ProgrammeKeyResultID),
	('2024/25', 2020, 2021, 1.0, 65.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.07');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 3./8., @ProgrammeKeyResultID),
	('2021/22', 2020, 2021, 1.0, 3./8., @ProgrammeKeyResultID),
	('2022/23', 2020, 2021, 1.0, 3./8., @ProgrammeKeyResultID),
	('2023/24', 2020, 2021, 1.0, 3./8., @ProgrammeKeyResultID),
	('2024/25', 2020, 2021, 1.0, 3./8., @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.08');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 311.0, @ProgrammeKeyResultID),
	('2021/22', 2020, 2021, 1.0, 286.0, @ProgrammeKeyResultID),
	('2022/23', 2020, 2021, 1.0, 261.0, @ProgrammeKeyResultID),
	('2023/24', 2020, 2021, 1.0, 236.0, @ProgrammeKeyResultID),
	('2024/25', 2020, 2021, 1.0, 211.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.09');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 42.0, @ProgrammeKeyResultID),
	('2021/22', 2020, 2021, 1.0, 39.0, @ProgrammeKeyResultID),
	('2022/23', 2020, 2021, 1.0, 35.0, @ProgrammeKeyResultID),
	('2023/24', 2020, 2021, 1.0, 33.0, @ProgrammeKeyResultID),
	('2024/25', 2020, 2021, 1.0, 30.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.10');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 5.0, @ProgrammeKeyResultID),
	('2021/22', 2020, 2021, 1.0, 4.9, @ProgrammeKeyResultID),
	('2022/23', 2020, 2021, 1.0, 4.8, @ProgrammeKeyResultID),
	('2023/24', 2020, 2021, 1.0, 4.6, @ProgrammeKeyResultID),
	('2024/25', 2020, 2021, 1.0, 4.5, @ProgrammeKeyResultID);

set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.11');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 18.5, @ProgrammeKeyResultID),
	('2021/22', 2020, 2021, 1.0, 16.5, @ProgrammeKeyResultID),
	('2022/23', 2020, 2021, 1.0, 13.5, @ProgrammeKeyResultID),
	('2023/24', 2020, 2021, 1.0, 11.3, @ProgrammeKeyResultID),
	('2024/25', 2020, 2021, 1.0, 10.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.12');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 12.6, @ProgrammeKeyResultID),
	('2021/22', 2020, 2021, 1.0, 12.0, @ProgrammeKeyResultID),
	('2022/23', 2020, 2021, 1.0, 11.4, @ProgrammeKeyResultID),
	('2023/24', 2020, 2021, 1.0, 10.8, @ProgrammeKeyResultID),
	('2024/25', 2020, 2021, 1.0,  9.7, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.13');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 22.0, @ProgrammeKeyResultID),
	('2021/22', 2020, 2021, 1.0, 20.0, @ProgrammeKeyResultID),
	('2022/23', 2020, 2021, 1.0, 18.0, @ProgrammeKeyResultID),
	('2023/24', 2020, 2021, 1.0, 16.0, @ProgrammeKeyResultID),
	('2024/25', 2020, 2021, 1.0, 15.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.14');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 154.6, @ProgrammeKeyResultID),
	('2021/22', 2020, 2021, 1.0, 162.2, @ProgrammeKeyResultID),
	('2022/23', 2020, 2021, 1.0, 169.9, @ProgrammeKeyResultID),
	('2023/24', 2020, 2021, 1.0, 177.4, @ProgrammeKeyResultID),
	('2024/25', 2020, 2021, 1.0, 185.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.15');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 59.0, @ProgrammeKeyResultID),
	('2021/22', 2020, 2021, 1.0, 66.0, @ProgrammeKeyResultID),
	('2022/23', 2020, 2021, 1.0, 74.0, @ProgrammeKeyResultID),
	('2023/24', 2020, 2021, 1.0, 83.0, @ProgrammeKeyResultID),
	('2024/25', 2020, 2021, 1.0, 95.0, @ProgrammeKeyResultID);

set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.16');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 12.0, @ProgrammeKeyResultID),
	('2021/22', 2020, 2021, 1.0, 11.0, @ProgrammeKeyResultID),
	('2022/23', 2020, 2021, 1.0, 10.0, @ProgrammeKeyResultID),
	('2023/24', 2020, 2021, 1.0, 09.0, @ProgrammeKeyResultID),
	('2024/25', 2020, 2021, 1.0, 08.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.17');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 26.0, @ProgrammeKeyResultID),
	('2021/22', 2020, 2021, 1.0, 22.0, @ProgrammeKeyResultID),
	('2022/23', 2020, 2021, 1.0, 18.0, @ProgrammeKeyResultID),
	('2023/24', 2020, 2021, 1.0, 14.0, @ProgrammeKeyResultID),
	('2024/25', 2020, 2021, 1.0, 10.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.18');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 25.0, @ProgrammeKeyResultID),
	('2021/22', 2020, 2021, 1.0, 30.0, @ProgrammeKeyResultID),
	('2022/23', 2020, 2021, 1.0, 35.0, @ProgrammeKeyResultID),
	('2023/24', 2020, 2021, 1.0, 40.0, @ProgrammeKeyResultID),
	('2024/25', 2020, 2021, 1.0, 45.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.19');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 0.57, @ProgrammeKeyResultID),
	('2021/22', 2020, 2021, 1.0, 0.60, @ProgrammeKeyResultID),
	('2022/23', 2020, 2021, 1.0, 0.65, @ProgrammeKeyResultID),
	('2023/24', 2020, 2021, 1.0, 0.70, @ProgrammeKeyResultID),
	('2024/25', 2020, 2021, 1.0, 0.80, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.20');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 50.0, @ProgrammeKeyResultID),
	('2021/22', 2020, 2021, 1.0, 45.0, @ProgrammeKeyResultID),
	('2022/23', 2020, 2021, 1.0, 40.0, @ProgrammeKeyResultID),
	('2023/24', 2020, 2021, 1.0, 35.0, @ProgrammeKeyResultID),
	('2024/25', 2020, 2021, 1.0, 30.0, @ProgrammeKeyResultID);

set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.21');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 100.0, @ProgrammeKeyResultID),
	('2021/22', 2020, 2021, 1.0, 100.0, @ProgrammeKeyResultID),
	('2022/23', 2020, 2021, 1.0, 100.0, @ProgrammeKeyResultID),
	('2023/24', 2020, 2021, 1.0, 100.0, @ProgrammeKeyResultID),
	('2024/25', 2020, 2021, 1.0, 100.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.22');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 48.2, @ProgrammeKeyResultID),
	('2021/22', 2020, 2021, 1.0, 52.4, @ProgrammeKeyResultID),
	('2022/23', 2020, 2021, 1.0, 56.6, @ProgrammeKeyResultID),
	('2023/24', 2020, 2021, 1.0, 60.8, @ProgrammeKeyResultID),
	('2024/25', 2020, 2021, 1.0, 65.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.23');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0,  7.5, @ProgrammeKeyResultID),
	('2021/22', 2020, 2021, 1.0, 10.0, @ProgrammeKeyResultID),
	('2022/23', 2020, 2021, 1.0, 12.5, @ProgrammeKeyResultID),
	('2023/24', 2020, 2021, 1.0, 15.0, @ProgrammeKeyResultID),
	('2024/25', 2020, 2021, 1.0, 20.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.24');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 108.0, @ProgrammeKeyResultID),
	('2021/22', 2020, 2021, 1.0, 103.0, @ProgrammeKeyResultID),
	('2022/23', 2020, 2021, 1.0,  98.0, @ProgrammeKeyResultID),
	('2023/24', 2020, 2021, 1.0,  95.0, @ProgrammeKeyResultID),
	('2024/25', 2020, 2021, 1.0,  84.0, @ProgrammeKeyResultID);
set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.25');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 25.0, @ProgrammeKeyResultID),
	('2021/22', 2020, 2021, 1.0, 30.0, @ProgrammeKeyResultID),
	('2022/23', 2020, 2021, 1.0, 35.0, @ProgrammeKeyResultID),
	('2023/24', 2020, 2021, 1.0, 40.0, @ProgrammeKeyResultID),
	('2024/25', 2020, 2021, 1.0, 45.0, @ProgrammeKeyResultID);

set @ProgrammeKeyResultID = (select ProgrammeKeyResultID from NDP3.ProgrammeKeyResults where NDP3Reference = '12.26');
insert NDP3.ProgrammeKeyResultTargets (Name, YearStart, YearEnd, Weight, Target, ProgrammeKeyResultID) values
	('2020/21', 2020, 2021, 1.0, 36.7, @ProgrammeKeyResultID),
	('2021/22', 2020, 2021, 1.0, 34.9, @ProgrammeKeyResultID),
	('2022/23', 2020, 2021, 1.0, 33.2, @ProgrammeKeyResultID),
	('2023/24', 2020, 2021, 1.0, 31.5, @ProgrammeKeyResultID),
	('2024/25', 2020, 2021, 1.0, 29.9, @ProgrammeKeyResultID);

go

select '05.12';
go