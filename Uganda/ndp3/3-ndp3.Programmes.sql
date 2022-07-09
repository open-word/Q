use Uganda;
go

create table ndp3.Programmes
(
	ProgrammeID int,
	constraint PK_Programmes primary key (ProgrammeID)
);

-- ------------------------------------------------------------------------------------------------------------
-- Stage 4: Insert the data.
-- ------------------------------------------------------------------------------------------------------------

insert ndp3.Programmes (ProgrammeID) values
(1 ),
(2 ),
(3 ),
(4 ),
(5 ),
(6 ),
(7 ),
(8 ),
(9 ),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18);

-- ------------------------------------------------------------------------------------------------------------
-- Stage 5: Have a look.
-- ------------------------------------------------------------------------------------------------------------

--select * from ndp3.Programmes;

select '3';
go

--select distinct 
--	i.ProgrammeNumber
--from 
--	ndp3.Interventions i
--order by 
--	i.ProgrammeNumber;

--select 
--	'('+convert(nchar(2),ProgrammeID) + '),'
--from
--	ndp3.Programmes
--order by 
--	ProgrammeID;