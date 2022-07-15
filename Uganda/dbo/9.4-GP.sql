use Uganda;
go

create table GP
(
	GoalRef nchar(5),
	ProgrammeRef nchar(2),
	constraint PK_GP primary key (GoalRef, ProgrammeRef),
	constraint FK_GP_G foreign key (GoalRef) references G (Ref),
	constraint FK_GP_P foreign key (ProgrammeRef) references P (Reference)
);

insert GP (GoalRef, ProgrammeRef) values
-- UN
('UN 02', '01'),
('UN 09', '01'),
('UN 12', '01'),
('UN 09', '02'),
('UN 12', '02'),
('UN 09', '03'),
('UN 12', '03'),
('UN 08', '04'),
('UN 12', '05'),
('UN 13', '05'),
('UN 14', '05'),
('UN 15', '05'),
('UN 08', '06'),
('UN 09', '06'),
('UN 07', '07'),
('UN 08', '07'),
('UN 09', '07'),
('UN 12', '07'),
('UN 13', '07'),
('UN 09', '08'),
('UN 12', '08'),
('UN 07', '09'),
('UN 12', '09'),
('UN 09', '10'),
('UN 17', '10'),
('UN 11', '11'),
('UN 03', '12'),
('UN 04', '12'),
('UN 05', '12'),
('UN 06', '12'),
('UN 08', '12'),
('UN 10', '12'),
('UN 17', '13'),
('UN 16', '14'),
('UN 16', '15'),
('UN 16', '16'),
('UN 17', '16'),
('UN 01', '17'),
('UN 02', '17'),
('UN 08', '17'),
('UN 16', '18'),
('UN 17', '18'),
-- AU
('AU 04', '01'),
('AU 05', '01'),
('AU 04', '02'),
('AU 07', '02'),
('AU 04', '03'),
('AU 07', '03'),
('AU 04', '04'),
('AU 01', '05'),
('AU 07', '05'),
('AU 04', '06'),
('AU 04', '07'),
('AU 04', '08'),
('AU 06', '08'),
('AU 10', '08'),
('AU 01', '09'),
('AU 07', '09'),
('AU 10', '10'),
('AU 01', '11'),
('AU 01', '12'),
('AU 02', '12'),
('AU 03', '12'),
('AU 17', '12'),
('AU 18', '12'),
('AU 04', '13'),
('AU 12', '14'),
('AU 16', '14'),
('AU 11', '15'),
('AU 13', '15'),
('AU 14', '15'),
('AU 15', '15'),
('AU 12', '16'),
('AU 01', '17'),
('AU 05', '17'),
('AU 12', '18'),
('AU 20', '18'),
-- EA
('EA 02', '01'),
('EA 03', '01'),
('EA 03', '02'),
('EA 03', '03'),
('EA 05', '04'),
('EA 04', '05'),
('EA 03', '06'),
('EA 03', '07'),
('EA 01', '08'),
('EA 01', '09'),
('EA 01', '10'),
('EA 06', '11'),
('EA 09', '12'),
('EA 12', '12'),
('EA 01', '13'),
('EA 11', '14'),
('EA 07', '15'),
('EA 08', '15'),
('EA 10', '16'),
('EA 02', '17'),
('EA 10', '18');

--select * from GP;

--select '9.4'
--go

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