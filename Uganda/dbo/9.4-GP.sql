use Uganda;
go

create table GP
(
	GoalRef nchar(6),
	ProgrammeRef nchar(2),
	constraint PK_GP primary key (GoalRef, ProgrammeRef),
	constraint FK_GP_G foreign key (GoalRef) references G (Ref),
	constraint FK_GP_P foreign key (ProgrammeRef) references P (Reference)
);

insert GP (GoalRef, ProgrammeRef) values
-- SDG
('SDG 02', '01'),
('SDG 09', '01'),
('SDG 12', '01'),
('SDG 09', '02'),
('SDG 12', '02'),
('SDG 09', '03'),
('SDG 12', '03'),
('SDG 08', '04'),
('SDG 12', '05'),
('SDG 13', '05'),
('SDG 14', '05'),
('SDG 15', '05'),
('SDG 08', '06'),
('SDG 09', '06'),
('SDG 07', '07'),
('SDG 08', '07'),
('SDG 09', '07'),
('SDG 12', '07'),
('SDG 13', '07'),
('SDG 09', '08'),
('SDG 12', '08'),
('SDG 07', '09'),
('SDG 12', '09'),
('SDG 09', '10'),
('SDG 17', '10'),
('SDG 11', '11'),
('SDG 03', '12'),
('SDG 04', '12'),
('SDG 05', '12'),
('SDG 06', '12'),
('SDG 08', '12'),
('SDG 10', '12'),
('SDG 17', '13'),
('SDG 16', '14'),
('SDG 16', '15'),
('SDG 16', '16'),
('SDG 17', '16'),
('SDG 01', '17'),
('SDG 02', '17'),
('SDG 08', '17'),
('SDG 16', '18'),
('SDG 17', '18'),
-- AfU
('AfU 04', '01'),
('AfU 05', '01'),
('AfU 04', '02'),
('AfU 07', '02'),
('AfU 04', '03'),
('AfU 07', '03'),
('AfU 04', '04'),
('AfU 01', '05'),
('AfU 07', '05'),
('AfU 04', '06'),
('AfU 04', '07'),
('AfU 04', '08'),
('AfU 06', '08'),
('AfU 10', '08'),
('AfU 01', '09'),
('AfU 07', '09'),
('AfU 10', '10'),
('AfU 01', '11'),
('AfU 01', '12'),
('AfU 02', '12'),
('AfU 03', '12'),
('AfU 17', '12'),
('AfU 18', '12'),
('AfU 04', '13'),
('AfU 12', '14'),
('AfU 16', '14'),
('AfU 11', '15'),
('AfU 13', '15'),
('AfU 14', '15'),
('AfU 15', '15'),
('AfU 12', '16'),
('AfU 01', '17'),
('AfU 05', '17'),
('AfU 12', '18'),
('AfU 20', '18'),
-- EAC
('EAC 02', '01'),
('EAC 03', '01'),
('EAC 03', '02'),
('EAC 03', '03'),
('EAC 05', '04'),
('EAC 04', '05'),
('EAC 03', '06'),
('EAC 03', '07'),
('EAC 01', '08'),
('EAC 01', '09'),
('EAC 01', '10'),
('EAC 06', '11'),
('EAC 09', '12'),
('EAC 12', '12'),
('EAC 01', '13'),
('EAC 11', '14'),
('EAC 07', '15'),
('EAC 08', '15'),
('EAC 10', '16'),
('EAC 02', '17'),
('EAC 10', '18');

--select * from GP;

select '9.4'
go

--select 
--	p.Reference,
--	p.Name,
--	g.Ref,
--	g.Name
--from
--	GP join
--	G on gp.GoalRef = g.Ref join
--	P on gp.ProgrammeRef = p.Reference
--order by
--	p.Reference,
--	g.Ref;