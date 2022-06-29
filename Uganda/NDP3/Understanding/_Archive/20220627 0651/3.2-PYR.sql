create table PR
(
	ProgrammeID nchar(25),
	YearID int,
	Budget float,
	KeyResultID nchar(3),
	Performance float,
	[Budget x Performance] float
)
go

insert PR (ProgrammeID, YearID, Budget, KeyResultID, Performance) values
	('Programme 1',2020,100,'1.1',0.25),
	('Programme 1',2020,100,'1.2',0.50),
	('Programme 1',2021,100,'1.1',0.50),
	('Programme 1',2021,100,'1.2',0.75),
	('Programme 2',2020,100,'2.1',0.25),
	('Programme 2',2020,100,'2.2',0.50),
	('Programme 2',2021,100,'2.1',0.50),
	('Programme 2',2021,100,'2.2',0.75);
go

update PR set [Budget x Performance] = Budget * Performance;
go

select * from PR;

select sum([Budget x Performance])/sum(Budget) Q from PR;