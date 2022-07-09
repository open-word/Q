use Uganda;
go

 drop view if exists NDP3.vProgrammeKeyResults; 
 go

drop table if exists NDP3.ProgrammeKeyResults; 
go

create table NDP3.ProgrammeKeyResults
(
	ProgrammeKeyResultID int identity,
	Name nvarchar(250),
	NDP3Reference nvarchar(25),
	Baseline decimal (10,4),
	Units nvarchar(25),
	ProgrammeID int,
	constraint PK_ProgrammeKeyResults primary key (ProgrammeKeyResultID),
	constraint FK_ProgrammeKeyResults_Programmes foreign key (ProgrammeID) references NDP3.Programmes (ProgrammeID)
);
go

 --select * from NDP3.ProgrammeKeyResults;
 --go

 create view NDP3.vProgrammeKeyResults as
 select
 	ProgrammeKeyResultID	[PKR ID],
	Name					[PKR Name],
	NDP3Reference			[PKR NDP3 Reference],
	Baseline				[PKR Baseline],
	Units					[PKR Units],
	ProgrammeID				[Programme ID]
 from NDP3.ProgrammeKeyResults;
 go

 --select
	--*
 --from NDP3.vProgrammeKeyResults;
 --go

select '04';
go