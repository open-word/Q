use Uganda;
go

create table FG
(
	FrameworkRef nchar(3),
	GoalRef nchar(6),
	constraint PK_FG primary key (FrameworkRef, GoalRef),
	constraint FK_FG_F foreign key (FrameworkRef) references F (Ref),
	constraint FK_FG_G foreign key (GoalRef) references G (Ref)
);

insert FG (FrameworkRef, GoalRef) values
('SDG','SDG 01'),
('SDG','SDG 02'),
('SDG','SDG 03'),
('SDG','SDG 04'),
('SDG','SDG 05'),
('SDG','SDG 06'),
('SDG','SDG 07'),
('SDG','SDG 08'),
('SDG','SDG 09'),
('SDG','SDG 10'),
('SDG','SDG 11'),
('SDG','SDG 12'),
('SDG','SDG 13'),
('SDG','SDG 14'),
('SDG','SDG 15'),
('SDG','SDG 16'),
('SDG','SDG 17'),

('AfU','AfU 01'),
('AfU','AfU 02'),
('AfU','AfU 03'),
('AfU','AfU 04'),
('AfU','AfU 05'),
('AfU','AfU 06'),
('AfU','AfU 07'),
--('AfU','AfU 08'),
--('AfU','AfU 09'),
('AfU','AfU 10'),
('AfU','AfU 11'),
('AfU','AfU 12'),
('AfU','AfU 13'),
('AfU','AfU 14'),
('AfU','AfU 15'),
('AfU','AfU 16'),
('AfU','AfU 17'),
('AfU','AfU 18'),
--('AfU','AfU 19'),
('AfU','AfU 20'),

('EAC','EAC 01'),
('EAC','EAC 02'),
('EAC','EAC 03'),
('EAC','EAC 04'),
('EAC','EAC 05'),
('EAC','EAC 06'),
('EAC','EAC 07'),
('EAC','EAC 08'),
('EAC','EAC 09'),
('EAC','EAC 10'),
('EAC','EAC 11');

--select * from FG;

select '9.3'
go

--select 
--	f.Ref,
--	f.Name,
--	g.Ref,
--	g.Name
--from
--	FG join
--	F on fg.FrameworkRef = f.Ref join
--	G on fg.GoalRef = g.Ref
--order by
--	f.FrameworkID,
--	g.GoalID;