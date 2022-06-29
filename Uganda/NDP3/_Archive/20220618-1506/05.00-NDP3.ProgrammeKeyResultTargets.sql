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
	Weight decimal (10,4),
	Actual decimal (10,4) null,
	Target decimal (10,4),
	Performance decimal (10,4) null,
	WeightedPerformance decimal (10,4) null,
	ProgrammeKeyResultID int,
	constraint PK_ProgrammeKeyResultTargets primary key (ProgrammeKeyResultTargetID),
	constraint FK_ProgrammeKeyResultTargets_ProgrammeKeyResults foreign key (ProgrammeKeyResultID) references NDP3.ProgrammeKeyResults (ProgrammeKeyResultID)
);
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