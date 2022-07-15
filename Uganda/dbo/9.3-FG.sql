use Uganda;
go

create table FG
(
	FrameworkRef nchar(2),
	GoalRef nchar(5),
	constraint PK_FG primary key (FrameworkRef, GoalRef),
	constraint FK_FG_F foreign key (FrameworkRef) references F (Ref),
	constraint FK_FG_G foreign key (GoalRef) references G (Ref)
);

insert FG (FrameworkRef, GoalRef) values
('UN','UN 01'),
('UN','UN 02'),
('UN','UN 03'),
('UN','UN 04'),
('UN','UN 05'),
('UN','UN 06'),
('UN','UN 07'),
('UN','UN 08'),
('UN','UN 09'),
('UN','UN 10'),
('UN','UN 11'),
('UN','UN 12'),
('UN','UN 13'),
('UN','UN 14'),
('UN','UN 15'),
('UN','UN 16'),
('UN','UN 17'),

('AU','AU 01'),
('AU','AU 02'),
('AU','AU 03'),
('AU','AU 04'),
('AU','AU 05'),
('AU','AU 06'),
('AU','AU 07'),
--('AU','AU 08'),
--('AU','AU 09'),
('AU','AU 10'),
('AU','AU 11'),
('AU','AU 12'),
('AU','AU 13'),
('AU','AU 14'),
('AU','AU 15'),
('AU','AU 16'),
('AU','AU 17'),
('AU','AU 18'),
--('AU','AU 19'),
('AU','AU 20'),

('EA','EA 01'),
('EA','EA 02'),
('EA','EA 03'),
('EA','EA 04'),
('EA','EA 05'),
('EA','EA 06'),
('EA','EA 07'),
('EA','EA 08'),
('EA','EA 09'),
('EA','EA 10');

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