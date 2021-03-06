use Uganda;
go

create table BP
(
	BottleneckRef nchar(2),
	ProgrammeReference nchar(2),
	constraint PK_BP primary key (BottleneckRef, ProgrammeReference),
	constraint FK_BP_B foreign key (BottleneckRef) references B (Ref),
	constraint FK_BP_P foreign key (ProgrammeReference) references P (Reference)
);

insert BP (BottleneckRef, ProgrammeReference) values
('01','14'),

('02','06'),
('02','07'),
('02','10'),

('03','08'),
('03','09'),
('03','11'),

('04','15'),
('04','16'),
('04','18'),

('05','01'),
('05','02'),
('05','03'),
('05','04'),
('05','08'),

('06','01'),
('06','02'),
('06','03'),
('06','07'),
('06','04'),
('06','13'),

('07','12'),
('07','14'),
('07','13'),

('08','01'),
('08','13'),

('09','18'),
('09','06'),
('09','04'),

('10','15'),

('11','16'),

('12','18'),

('13','17'),
('13','14'),
('13','12');

--select * from BP;

--select '8.2'
--go

--select 
--	b.Name, 
--	p.Name
--from
--	BP join
--	B on bp.BottleneckRef = b.Ref join
--	P on bp.ProgrammeReference = p.Reference
--order by
--	b.BottleneckID;
