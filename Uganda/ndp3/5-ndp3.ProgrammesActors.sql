use Uganda;
go
drop table if exists ndp3.ProgrammesActors;
create table ndp3.ProgrammesActors
(
	ProgrammeID int,
	ActorID int,
	constraint PK_ProgrammesActors primary key (ProgrammeID, ActorID),
	constraint FK_ProgrammesActors_Programmes foreign key (ProgrammeID) references ndp3.Programmes (ProgrammeID),
	constraint FK_ProgrammesActors_Actors foreign key (ActorID) references ndp3.Actors (ActorID),
	index IX_ProgrammesActors_ActorID (ActorID)
);

-- ------------------------------------------------------------------------------------------------------------
-- Stage 4: Insert the data.
-- ------------------------------------------------------------------------------------------------------------

insert ndp3.ProgrammesActors(ProgrammeID, ActorID) values
(1  ,1  ),
(1  ,3  ),
(1  ,11 ),
(1  ,17 ),
(1  ,24 ),
(1  ,26 ),
(1  ,30 ),
(1  ,41 ),
(1  ,43 ),
(1  ,44 ),
(1  ,49 ),
(1  ,51 ),
(1  ,68 ),
(1  ,78 ),
(1  ,81 ),
(1  ,83 ),
(1  ,89 ),
(1  ,91 ),
(1  ,92 ),
(1  ,93 ),
(1  ,94 ),
(1  ,95 ),
(1  ,96 ),
(1  ,97 ),
(1  ,98 ),
(1  ,100),
(1  ,101),
(1  ,104),
(1  ,106),
(1  ,108),
(1  ,110),
(1  ,111),
(1  ,112),
(1  ,113),
(1  ,115),
(1  ,121),
(1  ,123),
(1  ,124),
(1  ,127),
(1  ,128),
(1  ,131),
(1  ,139),
(1  ,144),
(1  ,145),
(1  ,152),
(1  ,155),
(1  ,157),
(1  ,158),
(1  ,174),
(1  ,181),
(1  ,183),
(1  ,184),
(1  ,185),
(1  ,190),
(1  ,191),
(1  ,193),
(1  ,195),
(1  ,203),
(1  ,205),
(1  ,207),
(1  ,211),
(1  ,213),
(1  ,219),
(1  ,221),
(1  ,222),
(1  ,231),
(1  ,234),
(1  ,241),
(1  ,243),
(2  ,1  ),
(2  ,4  ),
(2  ,13 ),
(2  ,16 ),
(2  ,26 ),
(2  ,33 ),
(2  ,36 ),
(2  ,49 ),
(2  ,78 ),
(2  ,91 ),
(2  ,92 ),
(2  ,93 ),
(2  ,94 ),
(2  ,95 ),
(2  ,97 ),
(2  ,99 ),
(2  ,102),
(2  ,103),
(2  ,104),
(2  ,106),
(2  ,118),
(2  ,122),
(2  ,131),
(2  ,139),
(2  ,145),
(2  ,152),
(2  ,157),
(2  ,187),
(2  ,190),
(2  ,191),
(2  ,195),
(2  ,203),
(2  ,206),
(2  ,209),
(2  ,213),
(2  ,214),
(2  ,216),
(2  ,218),
(2  ,226),
(2  ,228),
(2  ,235),
(3  ,1  ),
(3  ,11 ),
(3  ,61 ),
(3  ,72 ),
(3  ,78 ),
(3  ,89 ),
(3  ,90 ),
(3  ,91 ),
(3  ,92 ),
(3  ,94 ),
(3  ,95 ),
(3  ,96 ),
(3  ,97 ),
(3  ,98 ),
(3  ,99 ),
(3  ,101),
(3  ,106),
(3  ,108),
(3  ,118),
(3  ,122),
(3  ,126),
(3  ,131),
(3  ,139),
(3  ,140),
(3  ,145),
(3  ,146),
(3  ,157),
(3  ,182),
(3  ,190),
(3  ,213),
(3  ,223),
(3  ,224),
(3  ,228),
(3  ,239),
(4  ,14 ),
(4  ,27 ),
(4  ,38 ),
(4  ,61 ),
(4  ,69 ),
(4  ,75 ),
(4  ,78 ),
(4  ,85 ),
(4  ,89 ),
(4  ,90 ),
(4  ,92 ),
(4  ,93 ),
(4  ,94 ),
(4  ,95 ),
(4  ,96 ),
(4  ,97 ),
(4  ,98 ),
(4  ,100),
(4  ,101),
(4  ,104),
(4  ,105),
(4  ,106),
(4  ,108),
(4  ,117),
(4  ,120),
(4  ,134),
(4  ,139),
(4  ,152),
(4  ,175),
(4  ,182),
(4  ,183),
(4  ,184),
(4  ,190),
(4  ,195),
(4  ,198),
(4  ,202),
(4  ,203),
(4  ,224),
(4  ,225),
(4  ,236),
(4  ,239),
(4  ,240),
(4  ,242),
(5  ,1  ),
(5  ,7  ),
(5  ,8  ),
(5  ,14 ),
(5  ,22 ),
(5  ,26 ),
(5  ,27 ),
(5  ,28 ),
(5  ,34 ),
(5  ,35 ),
(5  ,36 ),
(5  ,47 ),
(5  ,75 ),
(5  ,78 ),
(5  ,79 ),
(5  ,83 ),
(5  ,89 ),
(5  ,90 ),
(5  ,91 ),
(5  ,92 ),
(5  ,93 ),
(5  ,94 ),
(5  ,96 ),
(5  ,97 ),
(5  ,98 ),
(5  ,99 ),
(5  ,100),
(5  ,101),
(5  ,103),
(5  ,104),
(5  ,105),
(5  ,106),
(5  ,107),
(5  ,108),
(5  ,109),
(5  ,122),
(5  ,123),
(5  ,126),
(5  ,131),
(5  ,137),
(5  ,139),
(5  ,145),
(5  ,146),
(5  ,152),
(5  ,153),
(5  ,157),
(5  ,165),
(5  ,180),
(5  ,188),
(5  ,190),
(5  ,193),
(5  ,196),
(5  ,203),
(5  ,207),
(5  ,212),
(5  ,213),
(5  ,216),
(5  ,222),
(5  ,223),
(5  ,224),
(5  ,225),
(5  ,226),
(5  ,229),
(5  ,231),
(5  ,232),
(5  ,239),
(6  ,1  ),
(6  ,11 ),
(6  ,20 ),
(6  ,36 ),
(6  ,38 ),
(6  ,40 ),
(6  ,45 ),
(6  ,59 ),
(6  ,69 ),
(6  ,78 ),
(6  ,88 ),
(6  ,91 ),
(6  ,93 ),
(6  ,94 ),
(6  ,95 ),
(6  ,97 ),
(6  ,99 ),
(6  ,100),
(6  ,103),
(6  ,104),
(6  ,106),
(6  ,108),
(6  ,131),
(6  ,133),
(6  ,145),
(6  ,147),
(6  ,149),
(6  ,150),
(6  ,152),
(6  ,157),
(6  ,172),
(6  ,180),
(6  ,190),
(6  ,191),
(6  ,195),
(6  ,197),
(6  ,203),
(6  ,206),
(6  ,209),
(6  ,213),
(6  ,215),
(6  ,216),
(6  ,230),
(6  ,233),
(6  ,234),
(6  ,235),
(7  ,1  ),
(7  ,2  ),
(7  ,15 ),
(7  ,36 ),
(7  ,55 ),
(7  ,67 ),
(7  ,78 ),
(7  ,87 ),
(7  ,89 ),
(7  ,91 ),
(7  ,93 ),
(7  ,94 ),
(7  ,96 ),
(7  ,97 ),
(7  ,98 ),
(7  ,99 ),
(7  ,103),
(7  ,104),
(7  ,106),
(7  ,108),
(7  ,119),
(7  ,122),
(7  ,145),
(7  ,152),
(7  ,190),
(7  ,195),
(7  ,197),
(7  ,203),
(7  ,206),
(7  ,209),
(7  ,213),
(7  ,226),
(7  ,228),
(8  ,14 ),
(8  ,78 ),
(8  ,91 ),
(8  ,94 ),
(8  ,95 ),
(8  ,98 ),
(8  ,99 ),
(8  ,100),
(8  ,101),
(8  ,108),
(8  ,126),
(8  ,146),
(8  ,149),
(8  ,177),
(8  ,193),
(8  ,196),
(8  ,223),
(8  ,224),
(8  ,226),
(8  ,228),
(8  ,231),
(8  ,232),
(9  ,26 ),
(9  ,36 ),
(9  ,41 ),
(9  ,78 ),
(9  ,89 ),
(9  ,91 ),
(9  ,92 ),
(9  ,93 ),
(9  ,94 ),
(9  ,96 ),
(9  ,98 ),
(9  ,101),
(9  ,103),
(9  ,106),
(9  ,108),
(9  ,122),
(9  ,157),
(9  ,160),
(9  ,192),
(9  ,193),
(9  ,194),
(9  ,196),
(9  ,197),
(9  ,203),
(9  ,209),
(9  ,210),
(9  ,213),
(9  ,223),
(9  ,239),
(10 ,1  ),
(10 ,7  ),
(10 ,12 ),
(10 ,19 ),
(10 ,21 ),
(10 ,75 ),
(10 ,78 ),
(10 ,91 ),
(10 ,92 ),
(10 ,97 ),
(10 ,98 ),
(10 ,100),
(10 ,102),
(10 ,103),
(10 ,106),
(10 ,108),
(10 ,117),
(10 ,118),
(10 ,122),
(10 ,126),
(10 ,127),
(10 ,143),
(10 ,148),
(10 ,152),
(10 ,169),
(10 ,179),
(10 ,183),
(10 ,193),
(10 ,196),
(10 ,204),
(10 ,237),
(11 ,19 ),
(11 ,26 ),
(11 ,36 ),
(11 ,60 ),
(11 ,75 ),
(11 ,78 ),
(11 ,79 ),
(11 ,82 ),
(11 ,83 ),
(11 ,89 ),
(11 ,91 ),
(11 ,92 ),
(11 ,94 ),
(11 ,95 ),
(11 ,96 ),
(11 ,100),
(11 ,101),
(11 ,104),
(11 ,106),
(11 ,108),
(11 ,122),
(11 ,131),
(11 ,135),
(11 ,139),
(11 ,141),
(11 ,152),
(11 ,157),
(11 ,197),
(11 ,203),
(11 ,220),
(11 ,228),
(12 ,5  ),
(12 ,7  ),
(12 ,19 ),
(12 ,22 ),
(12 ,26 ),
(12 ,27 ),
(12 ,33 ),
(12 ,36 ),
(12 ,39 ),
(12 ,50 ),
(12 ,53 ),
(12 ,54 ),
(12 ,56 ),
(12 ,57 ),
(12 ,58 ),
(12 ,62 ),
(12 ,65 ),
(12 ,66 ),
(12 ,74 ),
(12 ,78 ),
(12 ,86 ),
(12 ,89 ),
(12 ,90 ),
(12 ,91 ),
(12 ,92 ),
(12 ,93 ),
(12 ,94 ),
(12 ,95 ),
(12 ,96 ),
(12 ,97 ),
(12 ,98 ),
(12 ,99 ),
(12 ,100),
(12 ,102),
(12 ,103),
(12 ,104),
(12 ,106),
(12 ,108),
(12 ,117),
(12 ,118),
(12 ,120),
(12 ,121),
(12 ,122),
(12 ,125),
(12 ,128),
(12 ,129),
(12 ,131),
(12 ,132),
(12 ,139),
(12 ,145),
(12 ,151),
(12 ,152),
(12 ,154),
(12 ,156),
(12 ,157),
(12 ,163),
(12 ,164),
(12 ,168),
(12 ,170),
(12 ,172),
(12 ,173),
(12 ,176),
(12 ,177),
(12 ,180),
(12 ,186),
(12 ,200),
(12 ,209),
(12 ,217),
(12 ,221),
(12 ,222),
(12 ,226),
(12 ,230),
(12 ,233),
(13 ,1  ),
(13 ,7  ),
(13 ,9  ),
(13 ,16 ),
(13 ,36 ),
(13 ,40 ),
(13 ,78 ),
(13 ,89 ),
(13 ,91 ),
(13 ,92 ),
(13 ,93 ),
(13 ,94 ),
(13 ,96 ),
(13 ,97 ),
(13 ,98 ),
(13 ,99 ),
(13 ,101),
(13 ,103),
(13 ,104),
(13 ,108),
(13 ,114),
(13 ,115),
(13 ,117),
(13 ,118),
(13 ,128),
(13 ,131),
(13 ,139),
(13 ,145),
(13 ,152),
(13 ,165),
(13 ,180),
(13 ,206),
(13 ,209),
(13 ,213),
(13 ,216),
(13 ,221),
(13 ,233),
(13 ,238),
(14 ,26 ),
(14 ,36 ),
(14 ,37 ),
(14 ,52 ),
(14 ,71 ),
(14 ,73 ),
(14 ,78 ),
(14 ,80 ),
(14 ,90 ),
(14 ,92 ),
(14 ,93 ),
(14 ,95 ),
(14 ,96 ),
(14 ,98 ),
(14 ,99 ),
(14 ,100),
(14 ,102),
(14 ,106),
(14 ,116),
(14 ,130),
(14 ,131),
(14 ,132),
(14 ,137),
(14 ,138),
(14 ,139),
(14 ,142),
(14 ,159),
(14 ,161),
(14 ,178),
(14 ,189),
(14 ,199),
(14 ,201),
(14 ,226),
(14 ,244),
(15 ,10 ),
(15 ,18 ),
(15 ,25 ),
(15 ,26 ),
(15 ,29 ),
(15 ,31 ),
(15 ,32 ),
(15 ,36 ),
(15 ,37 ),
(15 ,42 ),
(15 ,48 ),
(15 ,63 ),
(15 ,70 ),
(15 ,71 ),
(15 ,74 ),
(15 ,76 ),
(15 ,78 ),
(15 ,83 ),
(15 ,84 ),
(15 ,90 ),
(15 ,94 ),
(15 ,95 ),
(15 ,96 ),
(15 ,97 ),
(15 ,98 ),
(15 ,99 ),
(15 ,100),
(15 ,103),
(15 ,125),
(15 ,128),
(15 ,131),
(15 ,136),
(15 ,137),
(15 ,139),
(15 ,145),
(15 ,149),
(15 ,201),
(15 ,208),
(15 ,226),
(15 ,227),
(15 ,228),
(15 ,233),
(16 ,36 ),
(16 ,52 ),
(16 ,64 ),
(16 ,77 ),
(16 ,78 ),
(16 ,92 ),
(16 ,94 ),
(16 ,96 ),
(16 ,98 ),
(16 ,99 ),
(16 ,100),
(16 ,102),
(16 ,118),
(16 ,125),
(16 ,126),
(16 ,128),
(16 ,131),
(16 ,137),
(16 ,139),
(16 ,145),
(16 ,157),
(16 ,169),
(16 ,173),
(16 ,178),
(16 ,183),
(16 ,199),
(16 ,225),
(16 ,228),
(17 ,23 ),
(17 ,26 ),
(17 ,36 ),
(17 ,46 ),
(17 ,78 ),
(17 ,89 ),
(17 ,91 ),
(17 ,94 ),
(17 ,95 ),
(17 ,98 ),
(17 ,100),
(17 ,104),
(17 ,105),
(17 ,106),
(17 ,108),
(17 ,115),
(17 ,122),
(17 ,126),
(17 ,131),
(17 ,139),
(17 ,144),
(17 ,160),
(17 ,171),
(17 ,203),
(17 ,224),
(17 ,236),
(18 ,1  ),
(18 ,6  ),
(18 ,26 ),
(18 ,28 ),
(18 ,77 ),
(18 ,78 ),
(18 ,94 ),
(18 ,95 ),
(18 ,97 ),
(18 ,98 ),
(18 ,100),
(18 ,101),
(18 ,102),
(18 ,103),
(18 ,108),
(18 ,125),
(18 ,126),
(18 ,131),
(18 ,132),
(18 ,136),
(18 ,137),
(18 ,139),
(18 ,145),
(18 ,149),
(18 ,162),
(18 ,166),
(18 ,167),
(18 ,180),
(18 ,221),
(18 ,228),
(18 ,233);

-- ------------------------------------------------------------------------------------------------------------
-- Stage 5: Have a look.
-- ------------------------------------------------------------------------------------------------------------

--select * from ndp3.ProgrammesActors;

select '5';
go

--select distinct 
--	i.ProgrammeNumber,
--	a.ActorID
--from 
--	ndp3.Interventions i 
--		cross apply 
--	string_split(i.Actors,',') ia
--		full outer join 
--	ndp3.Actors a on trim(ia.value) = a.NameInIntervention
--order by 
--	i.ProgrammeNumber, 
--	a.ActorID;

--select
--	'('+convert(nchar(3),ProgrammeID)+','+convert(nchar(3),ActorID)+'),'
--from
--	ndp3.ProgrammesActors
--order by
--	ProgrammeID,
--	ActorID;