use Uganda;
go

drop table NDP3.ProgrammesMinistries

create table NDP3.ProgrammesMinistries
(
	ProgrammeID int,
	MinistryID int,
	constraint PK_ProgrammesMinistries primary key (ProgrammeID, MinistryID),
	constraint FK_ProgrammesMinistries_Programmes foreign key (ProgrammeID) references NDP3.Programmes (ProgrammeID),
	constraint FK_ProgrammesMinistries_Ministries foreign key (MinistryID) references NDP3.Ministries (MinistryID)
);
go

declare @MoAAIF int =  1;
declare @MoDVA int =  2;
declare @MoEACA int =  3;
declare @MoES int =  4;
declare @MoEMD int =  5;
declare @MoFPED int =  6;
declare @MoFA int =  7;
declare @MoGLSD int =  8;
declare @MoH int =  9;
declare @MoICTNG int = 10;
declare @MoIA int = 11;
declare @MoJCA int = 12;
declare @MoLHUD int = 13;
declare @MoLG int = 14;
declare @MoPS int = 15;
declare @MoSTI int = 16;
declare @MoTWA int = 17;
declare @MoTIC int = 18;
declare @MoWE int = 19;
declare @MoWT int = 20;

insert NDP3.ProgrammesMinistries (ProgrammeID, MinistryID) values
	(1,@MoAAIF),
	(1,@MoES),
	(1,@MoEMD),
	(1,@MoFPED),
	(1,@MoFA),
	(1,@MoGLSD),
	(1,@MoH),
	(1,@MoICTNG),
	(1,@MoLG),
	(1,@MoWT);
insert NDP3.ProgrammesMinistries (ProgrammeID, MinistryID) values
	(2,@MoES),
	(2,@MoEMD),
	(2,@MoFPED),
	(2,@MoFA),
	(2,@MoGLSD),
	(2,@MoIA),
	(2,@MoJCA),
	(2,@MoPS),
	(2,@MoSTI),
	(2,@MoTWA),
	(2,@MoWE);
insert NDP3.ProgrammesMinistries (ProgrammeID, MinistryID) values
	(3,@MoAAIF),
	(3,@MoES),
	(3,@MoEMD),
	(3,@MoFPED),
	(3,@MoGLSD),
	(3,@MoH),
	(3,@MoICTNG),
	(3,@MoIA),
	(3,@MoJCA),
	(3,@MoLHUD),
	(3,@MoWT);
insert NDP3.ProgrammesMinistries (ProgrammeID, MinistryID) values
	(4,@MoAAIF),
	(4,@MoDVA),
	(4,@MoES),
	(4,@MoFPED),
	(4,@MoFA),
	(4,@MoGLSD),
	(4,@MoH),
	(4,@MoICTNG),
	(4,@MoIA),
	(4,@MoLG),
	(4,@MoWT);
insert NDP3.ProgrammesMinistries (ProgrammeID, MinistryID) values
	(5,@MoAAIF),
	(5,@MoES),
	(5,@MoEMD),
	(5,@MoFPED),
	(5,@MoFA),
	(5,@MoH),
	(5,@MoICTNG),
	(5,@MoIA),
	(5,@MoJCA),
	(5,@MoLHUD),
	(5,@MoLG),
	(5,@MoSTI),
	(5,@MoTWA),
	(5,@MoTIC),
	(5,@MoWT);
insert NDP3.ProgrammesMinistries (ProgrammeID, MinistryID) values
	(6,@MoEMD),
	(6,@MoFPED),
	(6,@MoFA),
	(6,@MoGLSD),
	(6,@MoJCA),
	(6,@MoLG),
	(6,@MoSTI),
	(6,@MoTWA),
	(6,@MoTIC),
	(6,@MoWT);
insert NDP3.ProgrammesMinistries (ProgrammeID, MinistryID) values
	(7,@MoAAIF),
	(7,@MoEMD),
	(7,@MoFA),
	(7,@MoH),
	(7,@MoIA),
	(7,@MoJCA),
	(7,@MoSTI),
	(7,@MoTWA),
	(7,@MoWE),
	(7,@MoWT);
insert NDP3.ProgrammesMinistries (ProgrammeID, MinistryID) values
	(8,@MoEMD),
	(8,@MoFPED),
	(8,@MoGLSD),
	(8,@MoICTNG),
	(8,@MoJCA),
	(8,@MoLHUD),
	(8,@MoLG),
	(8,@MoWT);
insert NDP3.ProgrammesMinistries (ProgrammeID, MinistryID) values
	(9,@MoAAIF),
	(9,@MoES),
	(9,@MoEMD),
	(9,@MoFPED),
	(9,@MoFA),
	(9,@MoH),
	(9,@MoICTNG),
	(9,@MoLHUD),
	(9,@MoSTI),
	(9,@MoTWA),
	(9,@MoWT);
insert NDP3.ProgrammesMinistries (ProgrammeID, MinistryID) values
	(10,@MoES),
	(10,@MoEMD),
	(10,@MoICTNG),
	(10,@MoLG),
	(10,@MoPS),
	(10,@MoWE),
	(10,@MoWT);
insert NDP3.ProgrammesMinistries (ProgrammeID, MinistryID) values
	(11,@MoAAIF),
	(11,@MoES),
	(11,@MoFPED),
	(11,@MoH),
	(11,@MoLHUD),
	(11,@MoLG),
	(11,@MoTIC),
	(11,@MoWE),
	(11,@MoWT);
insert NDP3.ProgrammesMinistries (ProgrammeID, MinistryID) values
	(12,@MoAAIF),
	(12,@MoDVA),
	(12,@MoES),
	(12,@MoEMD),
	(12,@MoFPED),
	(12,@MoFA),
	(12,@MoGLSD),
	(12,@MoH),
	(12,@MoICTNG),
	(12,@MoIA),
	(12,@MoJCA),
	(12,@MoLG),
	(12,@MoPS),
	(12,@MoSTI),
	(12,@MoTWA),
	(12,@MoTIC),
	(12,@MoWE);
insert NDP3.ProgrammesMinistries (ProgrammeID, MinistryID) values
	(13,@MoAAIF),
	(13,@MoES),
	(13,@MoEMD),
	(13,@MoFPED),
	(13,@MoFA),
	(13,@MoH),
	(13,@MoICTNG),
	(13,@MoIA),
	(13,@MoSTI),
	(13,@MoTWA),
	(13,@MoWT);
insert NDP3.ProgrammesMinistries (ProgrammeID, MinistryID) values
	(14,@MoDVA),
	(14,@MoES),
	(14,@MoFA),
	(14,@MoGLSD),
	(14,@MoH),
	(14,@MoICTNG),
	(14,@MoJCA),
	(14,@MoLG),
	(14,@MoPS),
	(14,@MoWE);
insert NDP3.ProgrammesMinistries (ProgrammeID, MinistryID) values
	(15,@MoDVA),
	(15,@MoFPED),
	(15,@MoGLSD),
	(15,@MoH),
	(15,@MoICTNG),
	(15,@MoIA),
	(15,@MoJCA),
	(15,@MoLG),
	(15,@MoSTI),
	(15,@MoTWA);
insert NDP3.ProgrammesMinistries (ProgrammeID, MinistryID) values
	(16,@MoES),
	(16,@MoFPED),
	(16,@MoH),
	(16,@MoICTNG),
	(16,@MoJCA),
	(16,@MoLG),
	(16,@MoPS);
insert NDP3.ProgrammesMinistries (ProgrammeID, MinistryID) values
	(17,@MoAAIF),
	(17,@MoEMD),
	(17,@MoLG),
	(17,@MoWT);
insert NDP3.ProgrammesMinistries (ProgrammeID, MinistryID) values
	(18,@MoFPED),
	(18,@MoGLSD),
	(18,@MoICTNG),
	(18,@MoLHUD),
	(18,@MoLG),
	(18,@MoPS),
	(18,@MoSTI),
	(18,@MoTWA),
	(18,@MoWT);
go

--select * from ndp3.Ministries;
--go

create view NDP3.vProgrammesMinistries
as
select
	*
from
	ndp3.ProgrammesMinistries;
go

select '220';
go