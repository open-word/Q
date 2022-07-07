use Uganda
go

drop table if exists NDP3.Interventions
go

create table NDP3.Interventions
(
	InterventionID int identity,
	ProgrammeNumber int,
	ObjectiveNumber int,
	InterventionNumber int, 
	Actors nvarchar(1000),
	constraint PK_Interventions primary key (InterventionID),
	constraint UQ_Interventions_POI unique (ProgrammeNumber,ObjectiveNumber,InterventionNumber)
)

insert NDP3.Interventions (ProgrammeNumber, ObjectiveNumber, InterventionNumber, Actors) values
(1  ,1  ,1  ,'MAAIF, MoICTNG, NITAU,  NARO, Universities,  Academic and Vocational  Institutions, Professional  Bodies, International  Research Organizations,  CSOs, Public Research Organizations'),
(1  ,1  ,2  ,'MAAIF, NARO,  MoICTNG, MoLG,  UCDA, DDA,  NAGRCDB, CDO, LGs,  Extension Service Providers, Private Sector, MDAs, NGOs'),
(1  ,1  ,3  ,'MAAIF, OWC, NAADS,  UNBS, LGs, UCDA,  DDA, NAGRCDB,  CDO'),
(1  ,1  ,4  ,'MAAIF, MoWE, MEMD,  Farmers, Cooperatives and Associations, UIA, Private  Sector, MoTIC, MoFPED,  UMFSC, BOU'),
(1  ,1  ,5  ,'MAAIF, MoTIC,  Universities, Private  Sector, Vocational  Institutions'),
(1  ,1  ,6  ,'MAAIF, MoICTNG, NITA-U,  UCC, UCDA, DDA,  NAGRCDB, CDO,  NARO, NAADS'),
(1  ,1  ,7  ,'MAAIF, MoLHUD, ULC,  NARO, NAGRC, UCDA,  CDO, DDA, NAADS'),
(1  ,1  ,8  ,'MAAIF, MoTIC, UCDA,  DDA, NAGRCDB,  CDO, NAADS, OWC,  LGs, Farmers,  Cooperatives and Associations'),
(1  ,1  ,9  ,'MAAIF, MOH, NARO,  Private Sector'),
(1  ,1  ,10 ,'MAAIF, NFA, MoLHUD,  UCDA, CDO, NAADS,  NARO, NAGRCDB,  OWC, LGs'),
(1  ,1  ,11 ,'MAAIF, MoES, MoTIC,  UCDA, CDO, NAADS,  NARO, NAGRCDB,  OWC, DDA, LGs'),
(1  ,1  ,12 ,'UNMA, MAAIF '),
(1  ,1  ,13 ,'MOGLSD, MAAIF, NAC,  LGs'),
(1  ,2  ,1  ,'MAAIF, MoTIC, UWRSA,  NAADS, OWC, DDA,  UCDA, CDO,  NAGRCDB, LGs,  Private Sector '),
(1  ,2  ,2  ,'MAAIF, MoTIC, UWRSA,  NAADS, OWC, DDA,  UCDA, CDO,  NAGRCDB, TGCU,  LGs'),
(1  ,2  ,3  ,'MAAIF, MoTIC, UWRSA,  NAADS, OWC, MoWT,  Private Sector'),
(1  ,3  ,1  ,'UIA, FZA, MAAIF,  MoTIC, Private Sector'),
(1  ,3  ,2  ,'MAAIF, MoES, MoTIC,  MDAs,  MAAIF, MoES, MoTIC, MAAIF, Parliament, LRC,  UIA, MOFPED '),
(1  ,3  ,3  ,'MAAIF, DDA, MoTIC,  LGs, UDC, NAADS,  PSFU, OWC, UCDA,  CDO, MoTIC, MOH, NDA,  NAGRCDB, NARO,  Acade, MoIA, MoFPED,  UDC, UDB, Private Sector'),
(1  ,3  ,4  ,'UEDCL, ERA '),
(1  ,3  ,5  ,'MoWT, MAAIF'),
(1  ,3  ,6  ,'MoES, MAAIF,  MoTIC, UCDA, CDO, DDA,  NAGRCDB, NAADS,  OWC'),
(1  ,4  ,1  ,'UNBS, MAAIF, MoTIC'),
(1  ,4  ,2  ,'MAAIF, MoICTNG, MoTIC,  MOGLSD, UEPB, NITAU'),
(1  ,4  ,3  ,'MAAIF, MoLG, MoTIC,  UWRSA, UCE '),
(1  ,4  ,4  ,'MAAIF, MoTIC, MoWT,  URC, Private Sector, LGs'),
(1  ,4  ,5  ,'UEPB, MAAIF, MoFA,  UCDA, CDO, DDA'),
(1  ,5  ,1  ,'MAAIF, MOFPED, BOU,  UIRA, UDB, Financial Institutions, MoTIC, LGs'),
(1  ,5  ,2  ,'MOFPED, MAAIF, UIRA'),
(1  ,5  ,3  ,'MAAIF, MoTIC, UCA,  UNFFE '),
(1  ,5  ,4  ,'MOFPED, MAAIF,  MoTIC, UWRSA, UCE,  MAAIF, USE, MoTIC,  MOFPED, LGs, Private  Sector '),
(1  ,5  ,5  ,'UDB, MOFPED, UIA,  UDC, MAAIF, MoTIC'),
(1  ,5  ,6  ,'MAAIF, MoTIC'),
(1  ,6  ,1  ,'MAAIF, MOFPED,  MoTIC, NAADS, PSFU,  CSOs, Private Sector,  OWC'),
(1  ,6  ,2  ,'MAAIF, OPM, NPA,  Private Sector'),
(2  ,1  ,1  ,'MEMD, MoFPED, MoPS,  DPs'),
(2  ,1  ,2  ,'MEMD, MoFPED, Private  Sector, DPs'),
(2  ,1  ,3  ,'MEMD, DPs'),
(2  ,1  ,4  ,'MEMD, MoTIC, MoFPED,  NEMA, NPA, Acade, MoIA,  DPs'),
(2  ,2  ,1  ,'MEMD, MoTIC, LGs,  CSOs, DPs '),
(2  ,2  ,2  ,'MEMD, MoFPED, UIA,  URA'),
(2  ,2  ,3  ,'MEMD, MoSTI, UIRI,  MoES, UNCST, NCHE,  Acade, MoIA, DPs'),
(2  ,2  ,4  ,'MEMD, MoTIC, LGs,  BTVET, NCHE,  Acade, MoIA, CSOs, DPs'),
(2  ,3  ,1  ,'MEMD, MoTIC, MoJCA,  Parliament, Private  Sector, CSOs'),
(2  ,3  ,2  ,'MEMD, MoPS, LGs'),
(2  ,3  ,3  ,'MEMD, MoTIC, MoES,  MoGLSD, UMA, USSIA,  DIT, PSFU, CSOs, DPs,  Academic Institutions'),
(2  ,3  ,4  ,'MEMD, MoFPED, UMA,  UCMP, Private Sector,  DPs'),
(2  ,3  ,5  ,'MEMD, MoJCA,  Parliament, Cabinet Secretariat  '),
(2  ,3  ,6  ,'MEMD, MoTIC, MoWE,  NEMA, LGs, MoIA,  URA, UNBS, UPF,  UNCE'),
(2  ,3  ,7  ,'MEMD, MoPS, LGs'),
(2  ,3  ,8  ,'MEMD, LGs'),
(2  ,3  ,9  ,'MEMD, MoJCA,  MoGLSD, LGs,  Development Partners,  Parliament'),
(2  ,3  ,10 ,'MEMD'),
(2  ,3  ,11 ,'OPM, MEMD'),
(2  ,3  ,12 ,'MEMD'),
(2  ,4  ,1  ,'MEMD, MoTIC, MoFPED,  LGs, UIA'),
(2  ,4  ,2  ,'MEMD, MoFPED, DPs'),
(2  ,4  ,3  ,'MEMD, MoFPED, DPs'),
(2  ,4  ,4  ,'MEMD, MoSTI, MoFPED,  MoTIC, MoES, UNCST,  NCHE, Acade, MoIA, UIRI,  DPs, Private Sector, UMA'),
(2  ,4  ,5  ,'MEMD, MoFPED, MoTIC,  UDC, UDB'),
(2  ,4  ,6  ,'MEMD, MoFPED,  MoJCA, UDC, MoTIC,  UIA, Private Sector,  Financial Institutions'),
(2  ,4  ,7  ,'MEMD'),
(2  ,4  ,8  ,'MEMD, UDC, MoFPED'),
(2  ,4  ,9  ,'MEMD, UNES'),
(2  ,5  ,1  ,'MEMD, MoFA, MoTIC,  MoFPED, MoJCA,  UEPB, DPs'),
(2  ,5  ,2  ,'MEMD, MoTIC, MoFPED,  UIA, UDC, UDB,  Financial Institutions,  Private Sector'),
(2  ,5  ,3  ,'MEMD'),
(2  ,5  ,4  ,'URA, MoFPED, NPA'),
(2  ,5  ,5  ,'UNBS, MoFPED'),
(2  ,5  ,6  ,'MEMD, MoFA, MoFPED'),
(3  ,1  ,1  ,'MEMD, MoFPED, PAU,  UNOC, Joint Venture Partners'),
(3  ,1  ,2  ,'MEMD, MoWT, UCAA,  UNRA, MoLHUD, PAU,  MoWE, MoFPED, UNOC,  MoICTNG, LGs'),
(3  ,1  ,3  ,'MEMD'),
(3  ,1  ,4  ,'MEMD, MOFPED, NEMA,  PAU, NPA, LGs'),
(3  ,1  ,5  ,'MEMD'),
(3  ,2  ,1  ,'MEMD, MoJCA, PAU,  UNOC, Parliament, Joint Venture Partners'),
(3  ,2  ,2  ,'MEMD, MoJCA, PAU,  UNOC, Parliament, Joint Venture Partners'),
(3  ,2  ,3  ,'MEMD'),
(3  ,2  ,4  ,'MEMD, MoJCA, MoES, PAU,  UNOC, Acade, MoIA, Joint Venture Partners, NCHE'),
(3  ,2  ,5  ,'MEMD, URA,  MoICTNG'),
(3  ,2  ,6  ,'PAU, UNOC, BOU, MEMD,  MOFPED'),
(3  ,3  ,1  ,'MEMD, MoFPED, UDB'),
(3  ,3  ,2  ,'MEMD, MoFPED, UNOC,  PAU, Parliament'),
(3  ,3  ,3  ,'MEMD, MoJCA, MoES,  PAU, UNOC, Acade, MoIA,  NCHE, Joint Venture Partners'),
(3  ,3  ,4  ,'MEMD, PAU, Other MDAs'),
(3  ,3  ,5  ,'MEMD'),
(3  ,3  ,6  ,'MEMD, PAU, UNOC,  PSFU, Joint Venture Partners'),
(3  ,3  ,7  ,'MEMD'),
(3  ,3  ,8  ,'MEMD, MAAIF'),
(3  ,4  ,1  ,'MOFPED, PSFU, UDB, UNOC'),
(3  ,4  ,2  ,'MEMD, UNOC, ICT, NITA,  PAU'),
(3  ,4  ,3  ,'MEMD, UNOC, ICT, NITA,  PAU'),
(3  ,5  ,1  ,'MEMD, MoGLSD, MoH,  MODVA, MoIA, MoWE, PAU,  UNOC, UNBS, NEMA,  Joint Venture Partners'),
(3  ,5  ,2  ,'MEMD, MoGLSD, MoH,  MODVA, MoIA, MoWE, PAU,  UNOC, UNBS, NEMA,  Joint Venture Partners'),
(3  ,5  ,3  ,'MEMD, MoGLSD, MoH,  MODVA, MoIA, MoWE,  MoLHUD, PAU, UNOC,  UNBS, OPM, NEMA, LGs,  Joint Venture Partners'),
(3  ,5  ,4  ,'MEMD, UNOC, MoGLSD,  MoH, MODVA, MoIA, MoWE,  PAU, UNOC, NEMA, LGs,  Joint Venture Partners'),
(3  ,5  ,5  ,'MEMD, MoGLSD, MoH,  MoWE, PAU, UNOC,  NEMA, UWA, LGs, Joint Venture Partners'),
(3  ,5  ,6  ,'MEMD, UNBS'),
(3  ,6  ,1  ,'MEMD, UNBS, UNOC'),
(3  ,6  ,2  ,'MEMD, MoWT, UNBS'),
(3  ,6  ,3  ,'MEMD, MoWT, UNBS'),
(3  ,6  ,4  ,'UNOC, MoFPED'),
(4  ,1  ,1  ,'UTB, MoTWA, LGs,  MoFA, UIA, Private  Sector, Cultural and Religious Institutions,  UWA, Media/UBC,  MoICTNG'),
(4  ,1  ,2  ,'MoWT, UNRA,  UCAA, Uganda Airlines, UTB, CAA'),
(4  ,1  ,3  ,'Uganda Airlines,  Private Sector'),
(4  ,1  ,4  ,'Uganda Airlines,  MoFA, MOIA, MoTIC,  MoTWA, UEPB, UTB'),
(4  ,2  ,1  ,'MoWT, UNRA,  UCAA'),
(4  ,2  ,2  ,'MoLHUD, UWA,  MoWT, Private Sector,  MoTWA, MoWE,  MoFPED, UIA, KCCA'),
(4  ,2  ,3  ,'MoTWA, Private Sector'),
(4  ,2  ,4  ,'UCC, ICT'),
(4  ,2  ,5  ,'MoWE, UWA'),
(4  ,2  ,6  ,'MoTIC, UWA, Private  Sector, MoTWA,  MOES, MoFPED,  IRA, UEPB, NCS,  MoGLSD'),
(4  ,2  ,7  ,'MoWT, UNRA,  UCAA, Uganda Airlines, UTB'),
(4  ,3  ,1  ,'MoTWA, UWA, LGs,  UTB, MoICTNG,  MoLHUD, MoWE,  Cultural and Religious Institutions, UWEC,  MAAIF'),
(4  ,3  ,2  ,'MoTWA, UWA, LGs,  UTB, MoICTNG,  MoLHUD, MoWE,  Cultural and Religious Institutions, UWEC,  MAAIF'),
(4  ,3  ,3  ,'NUL, MoTWA, OPM, LGs'),
(4  ,3  ,4  ,'UTB, MoTWA, MoH,  KCCA, LGs, Tourism  Police, Private Sector,  UWA'),
(4  ,3  ,5  ,'Private Sector,  MoTWA, MoFPED,  MoTIC, UTB, UWA'),
(4  ,3  ,6  ,'MoDVA'),
(4  ,3  ,7  ,'MoTWA, UWA, UPDF,  LGs'),
(4  ,3  ,8  ,'MoTWA, UWA, UPDF,  LGs'),
(4  ,3  ,9  ,'UTB, MoTWA,  MAAIF, MoTIC,  Private Sector, UIA,  UCDA, UWA, UEPB,  MoWT, UNRA,  MoLG, LGs'),
(4  ,4  ,1  ,'UHTTI, UWRTI,  MOES, NCDC'),
(4  ,4  ,2  ,'MoTWA, MOES'),
(4  ,4  ,3  ,'MoTWA'),
(4  ,4  ,4  ,'MoTWA'),
(4  ,4  ,5  ,'MoFPED, MoTWA,  MoTIC, UTB,  Enterprise Uganda'),
(4  ,4  ,6  ,'MOGLSD, MoTWA'),
(4  ,5  ,1  ,'MoTWA, UTB'),
(4  ,5  ,2  ,'MoFPED, MoTWA,  MoTIC, UTB,  Enterprise Uganda,  UDB'),
(4  ,5  ,3  ,'MoTWA, UTB'),
(4  ,5  ,4  ,'UTB, MoTWA, MoH,  KCCA, LGs, Tourism  Police, Private Sector,  UWA'),
(4  ,5  ,5  ,'OPM, MoTWA, LGs,  UWA, UTB, Private Sector'),
(5  ,1  ,1  ,'MoWE, LGs, NEMA,  NFA, MEMD,  MoFA, KCCA, OPM'),
(5  ,1  ,2  ,'MoLG, MoWE, LGs,  NEMA, NFA,  MoLHUD, KCCA,  Communities, CSOs,  Private Sector, DPs,  UWA, Cultural Institutions'),
(5  ,2  ,1  ,'MoWE, NEMA, NFA,  MoLG, DLG, UWA,  MoLHUD, OPM '),
(5  ,2  ,2  ,'MoWE, NEMA,  MoFPED, NPA, UDB'),
(5  ,2  ,3  ,'MEMD, MoFPED'),
(5  ,2  ,4  ,'NFA, MoWE, DLG,  CSOs, Private Sector,  Cultural Institutions, FBOs'),
(5  ,3  ,1  ,'MoLHUD, NPA,  MoLG, MoTIC, DPs,  PSFU, CSOs, Local Communities, LGs'),
(5  ,3  ,2  ,'MoLHUD, MOLG,  MoJCA'),
(5  ,3  ,3  ,'ULC, MoLHUD,  MOLG, KCCA'),
(5  ,3  ,4  ,'MoLHUD, MOFPED,  ULC'),
(5  ,3  ,5  ,'MoLHUD, MOLG,  ULC, DLBs,  Cultural and Religious Institutions'),
(5  ,3  ,6  ,'MoLHUD, MDA�s,  LGs, Local Communities, Private  Sector, DPs, CSOs'),
(5  ,3  ,7  ,'MoLHUD, MoWT,  MoFPED, MEMD,  UNOC, NITA,  MoLG, MoJCA,  UEDCL, UETCL,  PAU, UNRA, URC,  CAA, URF'),
(5  ,3  ,8  ,'MOLHUD, MOLG,  ULC'),
(5  ,3  ,9  ,'NPA, MoLHUD,  MOLG, UBOS,  UNBOS, MUK'),
(5  ,3  ,10 ,'MoLHUD, MOLG'),
(5  ,3  ,11 ,'MOLHUD, NPA, All MDAs, LGs, Private  Sector'),
(5  ,4  ,1  ,'MEMD, MOWT,  NEMA, MoTIC,  MOLHUD, KCCA,  MoWE'),
(5  ,4  ,2  ,'MEMD, MoTIC,  Urban Centres,  NEMA '),
(5  ,4  ,3  ,'MoWE, MoTIC,  UBOS, UNBS,  MoFPED, NPA, NEMA, CSOs , Acade, MoIA, DPs,  MOWT'),
(5  ,4  ,4  ,'MoWE, MoES,  MoTIC, OPM'),
(5  ,4  ,5  ,'MoTIC, MoWE,  UCPC, Acade, MoIA,  MoSTI, UNCST'),
(5  ,5  ,1  ,'MoWE, MoLG,  MoFPED, NPA, LGs,  NEMA, NFA, OPM,  KCCA, Communities,  CSOs, Private Sector,  DPs, UWA'),
(5  ,5  ,2  ,'MoWE, MoLG, LGs,  NEMA, NFA,  MoLHUD, UBOS,  Communities, CSOs,  Private Sector, DPs,  UWA, Cultural Institutions'),
(5  ,5  ,3  ,'MoWE, MoWT,  MoLHUD, NPA,  MoFPED, MoLG, LGs,  All Programme Leads'),
(5  ,5  ,4  ,'MoWE, NFA,  NEMA, MEMD  '),
(5  ,5  ,5  ,'UDB, MoWE,  MOFPED, NPA,  Private Sector'),
(5  ,5  ,6  ,'UDB, MoWE,  MOFPED, NPA, DPs'),
(5  ,6  ,1  ,'OPM, MoLG, LGs,  MoJCA, Parliament,  Office of the  President, MoFPED,  MoIA, UPF, MODVA,  UPDF'),
(5  ,6  ,2  ,'NPA, OPM, UNMA,  UPF, NEMA, MoWE,  MAAIF, MEMD,  DLG, MOH, MoLG,  MoTIC, UPDF,  MoFPED, MoJCA,  MoLHUD, LGs '),
(5  ,6  ,3  ,'OPM, MoFPED,  DLG, MAAIF,  MoTIC, MoWE, MOH'),
(5  ,6  ,4  ,'OPM, MoLHUD,  MoLG, DLG,  MoWT, MoFPED,  MoICTNG'),
(5  ,6  ,5  ,'UNMA, MoICTNG,  MAAIF, DLG, MoLG, MoSTI, OPM'),
(5  ,6  ,6  ,'UNMA'),
(5  ,7  ,1  ,'MoLG, MoWE,  MoFPED, LGs, NEMA,  NFA, KCCA,  Communities, CSOs,  Private Sector, DPs,UWA, Cultural Institutions, MoTIC,  MoSTI'),
(5  ,7  ,2  ,'MoWE, NEMA, NFA,  MoES, MoICTNG,  MoTWA, CSOs, Private Sector Cultural, FBOs'),
(5  ,7  ,3  ,'MoWE, MoSTI,  Acade, MoIA/research  institutions, NEMA,  NFA, MoWE'),
(5  ,7  ,4  ,'NFA, MoWE, MoTIC,  UIA'),
(5  ,7  ,5  ,'NEMA, MoWE, NFA,  MoTWA, MAAIF,  MoTIC, UDB, MoSTI,  UNCST'),
(5  ,7  ,6  ,'MoWE'),
(6  ,1  ,1  ,'MoFPED, Parliament, UDB,  Post Bank, Housing Finance,  Pride-Micro Finance,  Microfinance Support Centre'),
(6  ,1  ,2  ,'MoFPED, UDB, UDC,  Parliament, Post Bank, Housing Finance, Pride-Micro Finance,  Microfinance Support Centre'),
(6  ,1  ,3  ,'MoFPED, MoTIC, UDB, USE,  UDC, POST BANK, CMA, UIA,  NPA'),
(6  ,1  ,4  ,'UIA, PSFU, IRA, BOU,  Telecom Companies,  USE, MOFPED, CMA,  MEMD, MoWT, MOFA, MoTIC,NSSF, BOU, URBRA, MoJCA,  LGs'),
(6  ,2  ,1  ,'MoTIC, UIA, Enterprise Uganda, PSFU,  Microfinance Support Centre, UMA, UDB,  USSIA, LGs, Farmers associations/cooperatives'),
(6  ,2  ,2  ,'MoTIC, UIRI, MOSTI, UNCSI,  EPRC, URSB, LGs, Acade, MoIA,  Private Sector, PSFU, UIA'),
(6  ,3  ,1  ,'MoFPED, MOTIC, MOGLSD,  PPDA, UNBS, MEMD, LGs'),
(6  ,3  ,2  ,'MoWT, MOTIC, MOGLSD,  PPDA, UNBS, MEMD, LGs'),
(6  ,3  ,3  ,'MoFPED, MoWT, UDC, NPA'),
(6  ,3  ,4  ,'MoFPED, MOTIC, UIA'),
(6  ,4  ,1  ,'MoFPED, MOTIC, UDC, UIA,  UFZA'),
(6  ,4  ,2  ,'MoSTI, UNCST, UIRI,  Acade, MoIA, NPA, Private Sector'),
(6  ,4  ,3  ,'MoFPED, MoTIC, MoFA'),
(6  ,5  ,1  ,'MoTIC, MoFPED, UNBS,  Development Partners'),
(6  ,5  ,2  ,'MoTIC, UIA, UNBS, PSFU,  UMA, URSB'),
(6  ,5  ,3  ,'PARLIAMENT, PPDA, UIA,  MOJCA, UDB, UDC'),
(6  ,5  ,4  ,'UBOS, PSFU, NPA, MoFPED'),
(6  ,5  ,5  ,'MOFPED, MoWE, MoTIC, NPA,  PSFU, UDC, UMA, MoLG, LGs'),
(6  ,5  ,6  ,'UIA, MoFPED, MoTIC, UMA'),
(6  ,5  ,7  ,'UFZA, MoTIC, UEPB, UMA,  MoFPED'),
(7  ,1  ,1  ,'MoTIC, MoFPED, MoWT,  MEMD, MoWE, MAAIF,  MoICTNG, UIA, UFZA,  UIRI, NEMA, LGs, Development Partners'),
(7  ,1  ,2  ,'MoTIC, MoFPED, UDB, MoWE'),
(7  ,1  ,3  ,'MoTIC, MoFPED, MoWT,  MEMD, MoWE,  Development Partners'),
(7  ,1  ,4  ,'MoTIC, MoFPED, MoWT'),
(7  ,1  ,5  ,'MoTIC, MoWE, UIRI, NEMA'),
(7  ,2  ,1  ,'MoH, Medical Related Manufacturers, Academic and Research Institutions, Health Workers� Professional  Associations, NCRI,  International Health Agencies'),
(7  ,2  ,2  ,'MoTIC, UNBS, UMA, UDB,  Private Sector'),
(7  ,2  ,3  ,'MoTIC, MOSTI, UIA,  Acade, MoIA, Private Sector'),
(7  ,2  ,4  ,'MoTIC, UMA, UDB, Private Sector'),
(7  ,3  ,1  ,'MoTIC, MoFA, UNBS, UEPB'),
(7  ,3  ,2  ,'MoTIC, MoFPED, URA, UMA'),
(7  ,3  ,3  ,'MoTIC, MoFPED, URA, UEPB,  UMA'),
(7  ,3  ,4  ,'MoTIC, MoFPED, URA, UEPB,  UMA, Development Partners'),
(7  ,3  ,5  ,'MoTIC, MoFA, URA, UMA,  UEPB, Development Partners'),
(7  ,3  ,6  ,'MoTIC, MoFA, MoJCA,  Cabinet, Parliament '),
(7  ,3  ,7  ,'MoTIC, MoFA, UEPB'),
(7  ,3  ,8  ,'MoTIC, MoFPED, UNBS,  Development Partners '),
(7  ,3  ,9  ,'MoTIC, MoFA, UEPB'),
(7  ,4  ,1  ,'MoTIC, MoJCA, Cabinet,  Parliament '),
(7  ,4  ,2  ,'MoTIC, MoIA, UNBS, UPF'),
(7  ,4  ,3  ,'MoTIC, MoJCA, URA,  Cabinet, Parliament, UMA'),
(7  ,4  ,4  ,'MoWE, MoTIC, UNBS, UIA'),
(8  ,1  ,1  ,'MoWT, MoFPED, MoLHUD, PPDA,  MoLG, MoJCA, LGs, UNRA, URC,  CAA, URF'),
(8  ,1  ,2  ,'MoWT, MoFPED, MoLHUD, PPDA,  MoLG, LGs, MoJCA, UNRA, URC,  CAA, URF'),
(8  ,1  ,3  ,'MoWT, MoFPED, MoLHUD, PPDA,  MoLG, MoJCA, UNRA, URC, CAA,  URF'),
(8  ,1  ,4  ,'MoWT, MoFPED, MoLHUD, PPDA,  MoLG, MoJCA, UNRA, URC, CAA,  URF'),
(8  ,1  ,5  ,'MoWT, MoFPED, MoLHUD, PPDA,  MoLG, MoJCA, UNRA, URC, CAA,  URF'),
(8  ,1  ,6  ,'MoWT, MoFPED, MoLHUD, PPDA,  MoLG, MoJCA, UNRA, URC, CAA,  URF'),
(8  ,2  ,1  ,'MoWT, MoFPED, MoLHUD, PPDA,  MoLG, MoJCA, UNRA, URC, CAA,  URF'),
(8  ,2  ,2  ,'MoWT, MoFPED, MoLHUD, PPDA,  MoLG, MoJCA, UNRA, URC, CAA,  URF'),
(8  ,2  ,3  ,'URA, UNRA, UPF, URC, CAA'),
(8  ,2  ,4  ,'MoWT, UNRA, URC, CAA, '),
(8  ,2  ,5  ,'MoFPED, MoWT'),
(8  ,2  ,6  ,'MoWT, UNRA, URC, CAA, MoICTNG,  NITA'),
(8  ,3  ,1  ,'MoWT, MoFPED, MEMD,  MoLHUD, UNOC, NITA, MoLG,  MoJCA, UEDCL, UETCL, PAU, UNRA, URC, CAA, URF'),
(8  ,3  ,2  ,'UNRA, URC, CAA, URF, MoFPED,  MoWT, MoLG'),
(8  ,3  ,3  ,'MoWT, MoLHUD, UNRA, URC,  CAA, URF'),
(8  ,3  ,4  ,'MoWT, MoFPED, MoLHUD, PPDA,  MoLG, MoJCA, UNRA, URC, CAA,  URF'),
(8  ,4  ,1  ,'MoWT, UNRA, URC, CAA, '),
(8  ,4  ,2  ,'MoWT,UNRA, URC, CAA, '),
(8  ,4  ,3  ,'UNRA, URC, CAA, URF, MoFPED,  MoWT, MoLHUD, PPDA, MoLG,  MoJCA'),
(8  ,5  ,1  ,'MoWT'),
(8  ,5  ,2  ,'MoWT, MoLG, MoLHUD, UPF,  UNRA, CAA, URC'),
(8  ,5  ,3  ,'MoWT, MoFPED, MoLHUD, PPDA,  MoLG, MoJCA, UNRA, URC, CAA,  URF'),
(8  ,5  ,4  ,'MoWT, MoFPED, MoLHUD, PPDA,  MoLG, MoJCA, UNRA, URC, CAA,  URF'),
(8  ,5  ,5  ,'MoWT, MoFPED, MoLHUD, PPDA,  MoLG, MoJCA, UNRA, URC, CAA,  URF, UAC, MoGLSD, LGs'),
(8  ,6  ,1  ,'MoWT, MoFPED, MoLHUD, PPDA,  MoLG, MoJCA, UNRA, URC, CAA,  URF'),
(8  ,6  ,2  ,'MoWT, MoFPED, MoLHUD, PPDA,  MoLG, MoJCA, UNRA, URC, CAA,  URF'),
(8  ,6  ,3  ,'MoWT, MoFPED, MoLHUD, PPDA,  MoLG, MoJCA, UNRA, URC, CAA,  URF'),
(8  ,6  ,4  ,'MoWT, MoFPED, MoLHUD, PPDA,  MoLG, MoJCA, UNRA, URC, CAA,  URF'),
(8  ,6  ,5  ,'MoWT, UNRA, URC'),
(9  ,1  ,1  ,'MEMD, UETCL, LGs'),
(9  ,1  ,2  ,'MEMD, UETCL, MOLHUD,  UIA, UFZA, UMA, ERA,  MOFPED, DPs'),
(9  ,1  ,3  ,'MEMD, UETCL, MoFPED,  MoFA'),
(9  ,1  ,4  ,'UEDCL, UMEME, MEMD,  ERA, REA, MOLHUD, LGs,  DPs, MoFPED'),
(9  ,1  ,5  ,'ERA, MEMD, LGs, DPs,  UEDCL, MOFPED'),
(9  ,1  ,6  ,'ERA, MOFPED, '),
(9  ,1  ,7  ,'MoICTNG, MoSTI, REA,  MEMD'),
(9  ,1  ,8  ,'UNBS, MEMD,  ERA, UEGCL, UEDCL,  UETCL, REA, PSFU'),
(9  ,1  ,9  ,'ERA, MEMD, UEGCL,  UETCL, UEDCL, REA'),
(9  ,2  ,1  ,'UEGCL, ERA, MEMD,  MOLHUD, MOFPED, DPs,  MoWE, NEMA'),
(9  ,2  ,2  ,'UEGCL, ERA, MEMD,  MOFPED, MoWE, UWA,  NEMA'),
(9  ,2  ,3  ,'MEMD'),
(9  ,3  ,1  ,'ERA, MEMD, LGs, DPs,  UEDCL, MOFPED'),
(9  ,3  ,2  ,'MEMD, ERA, CSOS,  LGs, MOFPED, MoH,  MAAIF, MoES'),
(9  ,3  ,3  ,'MEMD, CSOs, MoWT,  MoH'),
(9  ,3  ,4  ,'ERA, MEMD, PSFU,  UETCL, UEDCL'),
(9  ,3  ,5  ,'MEMD'),
(9  ,4  ,1  ,'MEMD, ERA, CSOS,  LGs, MOFPED, MoH,  MAAIF, MoES, UECCC'),
(9  ,4  ,2  ,'MEMD, UNOC'),
(9  ,4  ,3  ,'MEMD, ERA, LGs,  CSOs, DPs'),
(9  ,4  ,4  ,'UNBS, MEMD, ERA,  UEGCL, UEDCL,  UETCL, REA, PSFU'),
(10 ,1  ,1  ,'MoICTNG, NITAU,  UCC, POSTA, UTL,  MEMD, UETCL,  UEDCL, UBC/SIGNET,  Other Utility Service Providers, MoWE,  MoWT, Communication Service  Providers'),
(10 ,1  ,2  ,'MoICTNG, NITAU,  UCC, UBC/SIGNET,  Broadcast Service  Providers'),
(10 ,1  ,3  ,'NITA, MoICTNG,  UCC, Private Sector'),
(10 ,2  ,1  ,'All MDAs'),
(10 ,2  ,2  ,'MoICTNG, NITAU,  UCC, Private Sector, Security  Agencies'),
(10 ,2  ,3  ,'MoICTNG, NITAU,  UCC, Private Sector'),
(10 ,2  ,4  ,'POSTA, MoICTNG,  NITAU, MoPS'),
(10 ,2  ,5  ,'All MDAs, Private  Sector'),
(10 ,2  ,6  ,'POSTA, MoICTNG,  NITAU, MOLG, LGs,  KCCA'),
(10 ,3  ,1  ,'MoICTNG, UICT,  MoSTI, UCC, NITAU,  Acade, MoIA, PRIVATE  SECTOR'),
(10 ,3  ,2  ,'MoICTNG, UICT,  MoSTI, PRIVATE  SECTOR, Civil Society, Acade, MoIA'),
(10 ,3  ,3  ,'MoICTNG, NITAU,  UCC, PRIVATE  SECTOR, Acade, MoIA'),
(10 ,3  ,4  ,'MoICTNG, UCC,  NITA, MoSTI, PRIVATE  SECTOR'),
(10 ,3  ,5  ,'MoICTNG, NITAU,  UCC, PRIVATE  SECTOR, Acade, MoIA,  NEMA, MoWE, LGs'),
(10 ,4  ,1  ,'MoICTNG, UICT,  MoES, NCDC, NCHE,  Acade, MoIA'),
(10 ,4  ,2  ,'MoICTNG, UICT,  NITA, MoES, NCDC,  NCHE'),
(10 ,4  ,3  ,'MoICTNG, UICT,  UCC, NITA, NCHE, Acade, MoIA'),
(10 ,4  ,4  ,'MoICTNG, UICT,  UCC, MoES, NCHE'),
(10 ,4  ,5  ,'MoICTNG, UICT,  UCC, NITA, MoES,  NCDC, NCHE,  Acade, MoIA'),
(10 ,4  ,6  ,'MoICTNG, UICT,  MoES, NITAU, NCHE'),
(10 ,5  ,1  ,'MoICTNG, UCC,  NITAU'),
(10 ,5  ,2  ,'MoICTNG, UCC,  NITAU'),
(11 ,1  ,1  ,'MoLHUD, MoLG, NPA, MDA�s,  Private Sector, DPs'),
(11 ,1  ,2  ,'MoGLSD, MoFPED, MoES,  MoLHUD, MOLG'),
(11 ,1  ,3  ,'MOTIC, URA, MoFPED,  MoLHUD, MoLG, Private Sector'),
(11 ,1  ,4  ,'MoWT, KCCA, MoLHUD,  MDA�s, Private Sector, DPs,  CSOs, Local Communities, LGs'),
(11 ,1  ,5  ,'MoWE, KCCA, MoLHUD, MoLG,  MoWT, NWSC, MDA�s, private  sector, DPs, CSOs, Local Communities'),
(11 ,1  ,6  ,'MoWE, KCCA, MoLHUD, MoLG,  MoWT, MoH, MoES, NEMA,  Private Sector, DPs, CSOs, Local Communities'),
(11 ,2  ,1  ,'MoLHUD, MoLG, MoFPED, NPA,  MDAs, MoTIC'),
(11 ,2  ,2  ,'MoLHUD, MoLG, MoFPED, NPA,  MDAs, MoTIC, MoWT'),
(11 ,2  ,3  ,'MOFPED, KCCA, MA,  MoLHUD, NPA, DPs, Private  Sector, Civil Society, Local Communities'),
(11 ,2  ,4  ,'UIA, MoLHUD, Private Sector'),
(11 ,2  ,5  ,'UIA, MoTIC, Uganda Free zones  Authority, MoWT, MoLG,  MoLHUD, MAAIF, LGs'),
(11 ,2  ,6  ,'UNHCC, MoLHUD, MOLG,  KCCA, MA, Housing Finance Bank'),
(11 ,2  ,7  ,'MoTIC, MoLHUD, Private Sector '),
(11 ,3  ,1  ,'MoLHUD, MoWE, NEMA, Private  Sector'),
(11 ,3  ,2  ,'MoGLSD, MOWE, memd,  MoLHUD'),
(11 ,3  ,3  ,'MoLHUD, MOFPED, OPM,  MEMD, KCCA, MA'),
(11 ,3  ,4  ,'MOWT, MoLHUD, MOWE'),
(11 ,3  ,5  ,'MoLHUD, MOWT, MOWE, OPM'),
(11 ,3  ,6  ,'MoLHUD, NEMA, MOWE'),
(11 ,3  ,7  ,'MoLHUD, MOWE'),
(11 ,4  ,1  ,'MoLHUD, MOLG, Other MDAs and Private Sector'),
(11 ,4  ,2  ,'KCCA, MA, MoLHUD, MOLG,  Other MDAs and Private Sector'),
(11 ,5  ,1  ,'MoLHUD, MoWE, PSFU, CSOs,  Local Communities, MoLG, LGs'),
(11 ,5  ,2  ,'MoLHUD, KCCA, MoWE, MoLG,  PSFU, CSOs, Local Communities,  LGs'),
(11 ,5  ,3  ,'MoLHUD, NPA, MoLG, MoTIC,  DPs, PSFU, CSOs, Local Communities, LGs'),
(12 ,1  ,1  ,'MoES, MoGLSD,  MoFPED, MoLG, Private  Sector, DPs'),
(12 ,1  ,2  ,'MoH, MoES, MoGLSD,  MoTIC, MoFPED, MoLG,  MAAIF, Private Sector,  DPs'),
(12 ,1  ,3  ,'MOH, MoGLSD'),
(12 ,1  ,4  ,'MOH, MoGLSD, Private  Sector, CSOs'),
(12 ,1  ,5  ,'MoGLSD, MoJCA, MoIA,  MoFPED, MoLG, Private  Sector, CSOs'),
(12 ,1  ,6  ,'MoES, MoH, MoGLSD,  MoFPED, MoLG, NCHE,  MoWE, Private Sector,  DPs'),
(12 ,1  ,7  ,'MoES, MoLG, LGs,  Private Sector, CSOs'),
(12 ,1  ,8  ,'MoES, MoICTNG,  MoLG, MoFPED'),
(12 ,1  ,9  ,'MOES, MoICTNG,  Telecom Companies,  HEIs, ICT Entrepreneurs,  LGs'),
(12 ,1  ,10 ,'MoES, NITA-U, LGs,  UBOS'),
(12 ,1  ,11 ,'MoES, NCDC, MoLG'),
(12 ,1  ,12 ,'MOH, MoES, MoGLSD,  MoLG, LGs, NPC, NPA'),
(12 ,2  ,1  ,'MoGLSD, MoES, UMA,  PSFU, MoTIC, MoLG,  NCHE, UBOS'),
(12 ,2  ,2  ,'MoES, UMA, PSFU,  MoTIC, MoGLSD, DIT,  IndustryL'),
(12 ,2  ,3  ,'MoES, Training  Institutions, Accreditation  Bodies, Industry'),
(12 ,2  ,4  ,'MoES, MoTIC, MoGLSD,  NCHE, UMA, PSFU, Industry'),
(12 ,2  ,5  ,'MoPS, MOFPED, MOES,  NCHE'),
(12 ,2  ,6  ,'MOES, LGs, MoGLSD'),
(12 ,2  ,7  ,'MoPS, MoES, MoFPED,  NCHE, MoGLSD, MoTIC,  DIT, UMA, PSFU, MoFA,  MoIA, NPA, Tertiary Institutions, HESFEB,  Industry'),
(12 ,2  ,8  ,'MoES, MoFPED, NCHE,  Universities'),
(12 ,2  ,9  ,'MoES, MoFPED, Industry'),
(12 ,2  ,10 ,'NPA, MoPS, MoGLSD,  Sectors and LGs, MoES,  MoFPED, NCHE,  Universities'),
(12 ,2  ,11 ,'NCDC, MoES'),
(12 ,3  ,1  ,'MoES, MoSTI, MoFPED,  MoLG, NCDC'),
(12 ,3  ,2  ,'MoES, MoFPED, MoSTI'),
(12 ,3  ,3  ,'MoES, UNEB, NCDC,  MoSTI'),
(12 ,3  ,4  ,'MoES, MoSTI, Private  sector, UMA, HESFEB,  NCHE, HEIs, Universities,  Industry'),
(12 ,3  ,5  ,'MoES, MoSTI,  Universities, NCHE'),
(12 ,4  ,1  ,'MoH, UCI, UHI, MoES,  MoGLSD, MoLG,  MoWT, MoPS, Private  Sector, CSOs,  HDPss, OPM, UAC,  Cultural and Religious Institutions'),
(12 ,4  ,2  ,'MoH, UCI, UHI, MoES,  MoGLSD, MoLG,  MoWT, MoPS, Private  Sector, CSOs,  HDPss, OPM, UAC, LGs,  Communities, Cultural and Religious Institutions'),
(12 ,4  ,3  ,'MoFPED, MoH, MoLG,  MoPS, MoICTNG, NPC,  NMS / JMS, Professional  Councils, Professional  Associations, Medical Bureaus, Private Health Providers, HDPs'),
(12 ,4  ,4  ,'MoH, UCI, UHI, MoES,  MoGLSD, MoLG,  MoWT, MoPS, Private  Sector, CSOs,  HDPss, OPM, UAC, LGs,  Communities, Cultural and Religious Institutions'),
(12 ,4  ,5  ,'MoWE, OPM, MoH,  MoLG, MoWT,  MoGLSD, MoES, MEMD,  MoIA, Medical Bureaus,  Private Health Providers,  HDPs'),
(12 ,4  ,6  ,'MoH, MoWE, NPC, MoLG,  MoGLSD, Private Sector,  CSOs, HDPss, Communities,  Religious leaders, DPs'),
(12 ,4  ,7  ,'MOH, Parliament,  MoFPED'),
(12 ,4  ,8  ,'MOH, Research &  academic Institutions,  Health MDAs, MoSTI,  Private Sector'),
(12 ,4  ,9  ,'OPM, MoH, MoLG,  MoWE, MoWT,  MoGLSD, MoES, MEMD,  MoIA, Medical Bureaus,  Private Health Providers,  HDPs'),
(12 ,4  ,10 ,'OPM, MoH, MoLG,  MAAIF, MoWE, MoGLSD,  MoES'),
(12 ,4  ,11 ,'MoGLSD, MoH, MoLG,  MoWT, MoGLSD,  MoES, MoIA'),
(12 ,4  ,12 ,'MoH, MoES, MoGLSD,  MoLG, LGs'),
(12 ,4  ,13 ,'MoH, MoLG, MoWT,  MoGLSD, MoES'),
(12 ,4  ,14 ,'MoFPED, NPC, NPA,  UBOS, NIRA, URSB,  MoIA, MoDVA, MoLG'),
(12 ,4  ,15 ,'OPM, MoH, MoLG,  MoWE, MoGLSD, MoES,  MAAIF, MoFPED, NDA,  MoTIC, Private Sector,  Host LGs, Development Partners'),
(12 ,4  ,16 ,'UAC, MoH, All MDAs,  Civil Society, Private  Sector, Development Partners'),
(12 ,5  ,1  ,'MoGLSD, OPM'),
(12 ,5  ,2  ,'MoGLSD, UNMA, OPM,  MoFPED, NEMA, MoH,  LGs'),
(12 ,5  ,3  ,'MoGLSD, MoLG'),
(12 ,5  ,4  ,'MoGLSD, MoFPED,  URBRA'),
(12 ,5  ,5  ,'MoGLSD, MoES, MoLG,  LGs, DPs, CSOs'),
(12 ,5  ,6  ,'MoGLSD, MoES,  MoFPED, LGs, NPC, DPs,  CSOs, UPF, Judiciary,  MoJCA'),
(12 ,5  ,7  ,'MoGLSD, EOC,  MoFPED, LGs, NPC, DPs,  CSOs'),
(12 ,5  ,8  ,'MoGLSD, MoH, MoES,  MoLG, LGs'),
(12 ,5  ,9  ,'MoGLSD, CSOs, Private  Sector, LGs, All MDAs'),
(12 ,5  ,10 ,'MoGLSD, CSOs, Private  Sector, LGs'),
(12 ,6  ,1  ,'MoES, MoGLSD, MoLG,  NCS, Sports Clubs'),
(12 ,6  ,2  ,'MoES, NCDC, NCS,  MoLG, Universities'),
(12 ,6  ,3  ,'MoES, MoFPED, NCS,  Sports Clubs'),
(12 ,6  ,4  ,'MoES, MoFPED, NCS,  Sports Clubs, FUFA,  Private Sector'),
(12 ,6  ,5  ,'Private Sector, MoES,  MoFPED, NCS, Sports Clubs'),
(12 ,6  ,6  ,'MoES, MoFPED, NCS,  Sports Clubs'),
(13 ,1  ,1  ,'MoSTI, MoFPED,  MoLHUD, LGs, Private  Sector, DPs'),
(13 ,1  ,2  ,'MoSTI, MoFPED,  MoLHUD, MoTIC, LGs,  Private Sector, UMA,  DPs'),
(13 ,1  ,3  ,'MoSTI, MoFPED,  MoLHUD, MoTIC, MoES,  LGs, Private Sector, DPs'),
(13 ,1  ,4  ,'MoSTI'),
(13 ,1  ,5  ,'MoSTI, MoH, MAAIF,  UVRI, UMA, Research  Institutions, Acade, MoIA,  Private Sector, DPs'),
(13 ,1  ,6  ,'MoSTI, MoH, MAAIF'),
(13 ,1  ,7  ,'MoSTI, MoFPED'),
(13 ,2  ,1  ,'MoSTI'),
(13 ,2  ,2  ,'MoSTI, MoES, NCDC,  NCHE, Acade, MoIA,  Private Sector, DPs'),
(13 ,2  ,3  ,'MoSTI, MoES, NCHE,  Acade, MoIA, Private  Sector, DPs'),
(13 ,2  ,4  ,'MoSTI, MEMD, MoH,  MAAIF, MoFPED,  NCHE, NPA, Acade, MoIA,  Private Sector, All MDAs, DPs'),
(13 ,2  ,5  ,'MoSTI'),
(13 ,3  ,1  ,'MoSTI, MoICTNG,  MoH, MAAIF, MoTIC,  NPA, EPRC, Acade, MoIA,  Private Sector, DPs'),
(13 ,3  ,2  ,'MoSTI, MoICTNG,  MoH, MAAIF, LGs,  UIRI, UNCST, UMA,  Private Sector, DPs'),
(13 ,3  ,3  ,'MoSTI, MoICTNG,  MoH, MoJCA, MAAIF,  MoIA, LGs, URSB'),
(13 ,3  ,4  ,'MoSTI, MoICTNG,  MoFPED, MoH, MAAIF,  UBoS, NPA, All MDAs,  Private Sector, DPs'),
(13 ,3  ,5  ,'MoSTI, MEMD, MoH,  MAAIF, MoWT,MoFPED, NARO,  NaGRIC, Acade, MoIA,  Private Sector, DPs'),
(13 ,3  ,6  ,'MoSTI, MEMD, MoH,  MAAIF, MoWT,  MoFPED, NARO,  NaGRIC, Acade, MoIA,  Private Sector, DPs'),
(13 ,3  ,7  ,'MoSTI, MEMD, MoH,  MAAIF, MoFPED, NPA,  Acade, MoIA, Private  Sector, All Sectors, DPs'),
(13 ,3  ,8  ,'MoSTI'),
(13 ,3  ,9  ,'MoSTI, OPM'),
(13 ,3  ,10 ,'MoSTI, MAAIF, MoH,  MoICTNG'),
(13 ,4  ,1  ,'MoSTI, MoICTNG,  NITA-U'),
(13 ,4  ,2  ,'MoSTI, Acade, MoIA,  Private Sector, All Sectors, DPs'),
(13 ,4  ,3  ,'MoSTI, MoTIC, UNBS,  Private Sector'),
(13 ,4  ,4  ,'MoSTI, NPA, UMA,  Universities'),
(13 ,4  ,5  ,'MoSTI, MoFPED,  MoTIC'),
(13 ,4  ,6  ,'MoSTI'),
(13 ,5  ,1  ,'MoSTI, MoFA'),
(13 ,5  ,2  ,'MoSTI, MoICTNG,  MoJCA, Parliament,  Cabinet Secretariat'),
(13 ,5  ,3  ,'MoSTI, MoJCA,  Parliament, Cabinet Secretariat'),
(13 ,5  ,4  ,'MoSTI, MoFA'),
(14 ,1  ,1  ,'OP, MOGLSD, MoICTNG,  UBC, MoLG, Uganda Media Centre, GCIC'),
(14 ,1  ,2  ,'MOGLSD, JSC, MoICTNG,  UHRC, EC, OP, MoLG,  LGs'),
(14 ,1  ,3  ,'MOGLSD, UBC, OP,  MoLG'),
(14 ,1  ,4  ,'MOGLSD, MOFA'),
(14 ,1  ,5  ,'National Women Councils,  Local Council Women  Leaders, MOGLSD,  MoLG, Youth Councils,  PWD Councils, CSOs'),
(14 ,2  ,1  ,'MOGLSD, MoLG, OP,  LGs, Religious and  Cultural institutions, Other Non-State Actors'),
(14 ,2  ,2  ,'MOGLSD, LGs, OP,  MoLG'),
(14 ,2  ,3  ,'MOGLSD, LGs, OP,  MoLG, Religious and  Cultural Institutions, Other Non-State Actors'),
(14 ,3  ,1  ,'MOGLSD, MOPS, UCSC,MOES,  MODVA, MoLG, MoICTNG'),
(14 ,3  ,2  ,'MoICTNG, MOGLSD,  NPA, UBC, MoLG'),
(14 ,3  ,3  ,'MoPS, OP (Ethics & Integrity), MoLG'),
(14 ,3  ,4  ,'MoGLSD, MoLG, OP (Ethics & Integrity)'),
(14 ,3  ,5  ,'LGs, MoGLSD, MoLG,  OP (Ethics & Integrity),  MoJCA, UPF'),
(14 ,4  ,1  ,'MOGLSD, MoLG, NPC,  JLOS, LGs, OP, DPs,  UBC, Religious and  Cultural institutions, Other Non-State Actors'),
(14 ,4  ,2  ,'OPM, MOGLSD, MoLG,  LGs, MOH, OP, MOES,  MoICTNG, MOGLSD,  MOWE, MoLG, LGs,  Non-State Actors, DPs'),
(15 ,1  ,1  ,'MODVA, ISO, ESO,  MoIA, UPF, UPS'),
(15 ,1  ,2  ,'MODVA, ISO, ESO,  MoIA, UPF, UPS'),
(15 ,1  ,3  ,'MODVA, MoIA, UPF'),
(15 ,1  ,4  ,'MODVA, ISO, ESO,  MoIA, MoSTI, '),
(15 ,1  ,5  ,'MODVA'),
(15 ,1  ,6  ,'MoIA, UPF'),
(15 ,1  ,7  ,'NIRA, DCIC'),
(15 ,1  ,8  ,'MODVA, MoIA, DCIC,  UPF, MoH, LGs'),
(15 ,1  ,9  ,'MODVA, MoIA, DCIC,  UPF'),
(15 ,1  ,10 ,'MODVA, MoIA, DCIC,  UPF, OP, MoH, LGs'),
(15 ,1  ,11 ,'MoIA, DCIC, MODVA,  UPF, OP, LGs'),
(15 ,1  ,12 ,'MoIA, DCIC, MODVA,  UPF, OP'),
(15 ,2  ,1  ,'Parliament, MDAs'),
(15 ,2  ,2  ,'MoDVA, OP, MoIA,  MoJCA, UPF, ULRC'),
(15 ,2  ,3  ,'Parliament, ULRC,  MDAs, DEI'),
(15 ,2  ,4  ,'Parliament, LGs'),
(15 ,3  ,1  ,'Parliament, MoJCA,, MoDVA'),
(15 ,3  ,2  ,'MoJCA, Judiciary,  ULRC, UHRC, DGAL,  LDC, UPS, UPF'),
(15 ,3  ,3  ,'MoJCA, LGs, Courts'),
(15 ,3  ,4  ,'UPF, MoLG, LGs'),
(15 ,3  ,5  ,'UPF, UPS, Judiciary,  MoJCA'),
(15 ,3  ,6  ,'NIRA, MoIA, DCIC,  URSB, LGs'),
(15 ,4  ,1  ,'MoJCA, MoIA, URSB,  DCIC, MoICTNG,  NITA-U, UPS, Judiciary'),
(15 ,5  ,1  ,'Parliament'),
(15 ,5  ,2  ,'Citizenry, URA, OPM, MDAS, LGs'),
(15 ,5  ,3  ,'IG, OAG, DEI, PPDA,  FIA, JLOS,  Media, CSOs'),
(15 ,5  ,4  ,'OAG, MoFPED,  Parliament'),
(15 ,5  ,5  ,'DEI, IG, OP, UPF,  Judiciary, MoJCA'),
(15 ,5  ,6  ,'Anti-corruption  institutions, NPA,  MDAs, LGs, MOFPED'),
(15 ,6  ,1  ,'EC, Parliament, CSOs,  UHRC'),
(15 ,6  ,2  ,'Parliament, LGs'),
(15 ,7  ,1  ,'UHRC, DPs, OPM, NPA,  UPF, MoGLSD'),
(15 ,7  ,2  ,'NPA, UHRC'),
(15 ,8  ,1  ,'OPM, MoLG, LGs, DPs'),
(15 ,8  ,2  ,'OPM, MoLG, LGs'),
(15 ,8  ,3  ,'OPM, MoLG'),
(16 ,1  ,1  ,'OP, OPM, MoPS'),
(16 ,1  ,2  ,'MoPS, OPM, NPA'),
(16 ,1  ,3  ,'MoPS, OP, OPM,  MoFPED, NPA'),
(16 ,1  ,4  ,'OP, OPM, MoLG'),
(16 ,2  ,1  ,'OP, MoPS, OPM,  MoFPED, NPA, '),
(16 ,2  ,2  ,'MoPS, OPM, MoLG'),
(16 ,2  ,3  ,'OPM, MoPS, MoLG,  MoFPED, NPA'),
(16 ,3  ,1  ,'MoPS, OP, OPM, UPDF,  NPA, LGs '),
(16 ,3  ,2  ,'MoPS, OP, OPM, IGG,  MoFPED'),
(16 ,3  ,3  ,'MoPS, OPM, MoFPED,  MoLG'),
(16 ,3  ,4  ,'MoPS, MoFPED, MoLG'),
(16 ,3  ,5  ,'MoPS'),
(16 ,3  ,6  ,'MoPS, MoFPED, MoJCA,  Parliament'),
(16 ,3  ,7  ,'MoPS, MoES, NCHE,  Tertiary Institutions'),
(16 ,4  ,1  ,'OP, MoLG, MoFPED,  LGs, PSFU, DPs'),
(16 ,4  ,2  ,'MoFPED, NPA, MoLG,  LGs'),
(16 ,4  ,3  ,'MOLG, OPM, OP, LGs,  UBC, NPA'),
(16 ,4  ,4  ,'MoFPED, MoLG, LGFC,  NPA, OP, OPM, URA,  LGs'),
(16 ,5  ,1  ,'MoICTNG, NITA-U,  MoPS, UBC '),
(16 ,5  ,2  ,'MoICTNG, NIRA,  NITA, OP, OPM, URA,  MoH, MoES, Security  Agencies, UBC'),
(16 ,5  ,3  ,'MoICTNG, Uganda Media Centre, UBC, UCC,  GCIC'),
(17 ,1  ,1  ,'LGs, MoGLSD,  Farmers  Groupings'),
(17 ,1  ,2  ,'MAAIF'),
(17 ,1  ,3  ,'MoWE, MAAIF'),
(17 ,1  ,4  ,'LGs, CSOs, Farmers  Groupings'),
(17 ,1  ,5  ,'NARO, OWC,  Cooperatives'),
(17 ,1  ,6  ,'MAAIF, MoFPED'),
(17 ,1  ,7  ,'UIA, OWC'),
(17 ,1  ,8  ,'MoTIC, MAAIF'),
(17 ,1  ,9  ,'MAAIF'),
(17 ,1  ,10 ,'MoTIC, MAAIF'),
(17 ,1  ,11 ,'LGs, OPM, DPs'),
(17 ,2  ,1  ,'LGs'),
(17 ,2  ,2  ,'MoWT, MOLG,  UNRA, LGs'),
(17 ,2  ,3  ,'MEMD, MOLG,  REA, LGs'),
(17 ,2  ,4  ,'MoICTNG, NITA'),
(17 ,3  ,1  ,'NPA, MoLG, LGs'),
(17 ,3  ,2  ,'MoTWA, UTB'),
(17 ,3  ,3  ,'MoTWA, UTB'),
(17 ,3  ,4  ,'MoTWA, UTB'),
(17 ,3  ,5  ,'MoTWA, UTB'),
(17 ,3  ,6  ,'MoTWA, UTB'),
(17 ,3  ,7  ,'MoTWA, UTB'),
(17 ,3  ,8  ,'MEMD'),
(17 ,3  ,9  ,'MEMD'),
(17 ,3  ,10 ,'MEMD'),
(17 ,3  ,11 ,'MoFPED, MoTIC'),
(17 ,3  ,12 ,'MoTWA, UNRA'),
(17 ,3  ,13 ,'MEMD'),
(17 ,3  ,14 ,'MoWE'),
(17 ,3  ,15 ,'MEMD'),
(17 ,3  ,16 ,'MoWE, NEMA'),
(17 ,3  ,17 ,'TBD'),
(17 ,3  ,18 ,'MoWE'),
(17 ,4  ,1  ,'MOLG'),
(17 ,4  ,2  ,'MOLG'),
(18 ,1  ,1  ,'MOFPED, NPA,  NPC, NIRA,  MoLHUD, UBOS'),
(18 ,1  ,2  ,'MOLG, MOPS'),
(18 ,1  ,3  ,'MOGLSD, NPA,  UBOS'),
(18 ,1  ,4  ,'OPM, OP,  MOFPED, NPA,  MoLG, Universities'),
(18 ,2  ,1  ,'MOFPED, URA,  NIRA, MOICTNG'),
(18 ,2  ,2  ,'MOFPED'),
(18 ,2  ,3  ,'MOFPED'),
(18 ,2  ,4  ,'MOFPED, URA,  URSB'),
(18 ,2  ,5  ,'URA, MOLG, LGs'),
(18 ,2  ,6  ,'MOFPED, URA'),
(18 ,2  ,7  ,'MOFPED'),
(18 ,2  ,8  ,'Parliament,  MOFPED, NPA'),
(18 ,2  ,9  ,'MOFPED'),
(18 ,2  ,10 ,'MOFPED, OAG'),
(18 ,2  ,11 ,'MOFPED, MOPS,  MOWT, MOLG'),
(18 ,2  ,12 ,'Parliament,  MOFPED, NPA,  Sectors, MOLG'),
(18 ,2  ,13 ,'MOFPED, NPA,  Sectors, MOLG'),
(18 ,2  ,14 ,'MoFPED, PPDA'),
(18 ,2  ,15 ,'Parliament,  MOFPED'),
(18 ,2  ,16 ,'MoFPED, AGO'),
(18 ,2  ,17 ,'MoFPED'),
(18 ,2  ,18 ,'MoFPED, PPDA,  Parliament'),
(18 ,2  ,19 ,'MoFPED, NPA,  Research organs'),
(18 ,3  ,1  ,'MoPS, MoLG,  MoGLSD'),
(18 ,3  ,2  ,'MoFPED, MoLG'),
(18 ,3  ,3  ,'MoFPED, LGFC,  NPA'),
(18 ,3  ,4  ,'OPM, NPA'),
(18 ,3  ,5  ,'MoLG, LGs'),
(18 ,4  ,1  ,'OP, OPM,  MoFPED, NPA'),
(18 ,4  ,2  ,'MoFPED,  Parliament'),
(18 ,4  ,3  ,'NPA, OPM'),
(18 ,4  ,4  ,'OPM, NPA, UBOS'),
(18 ,4  ,5  ,'MoFPED, NPA'),
(18 ,4  ,6  ,'OAG'),
(18 ,4  ,7  ,'MoFPED, NPA'),
(18 ,5  ,1  ,'NPA, UBOS'),
(18 ,5  ,2  ,'UBOS'),
(18 ,5  ,3  ,'UBOS'),
(18 ,5  ,4  ,'UBOS'),
(18 ,5  ,5  ,'UBOS'),
(18 ,5  ,6  ,'UBOS'),
(18 ,5  ,7  ,'UBOS'),
(18 ,5  ,8  ,'UBOS'),
(18 ,5  ,9  ,'UBOS'),
(18 ,5  ,10 ,'UBOS'),
(18 ,5  ,11 ,'UBOS, NIRA, LGs'),
(18 ,6  ,1  ,'NPA, OP, OPM,  MoSTI, MoFPED,  Acade, MoIA, CSOs,Religious Entities,  Cultural Institutions'),
(18 ,6  ,2  ,'MOFPED, OAG'),
(18 ,6  ,3  ,'MoFPED, OAG'),
(18 ,6  ,4  ,'OP, OPM,  Parliament, NPA'),
(18 ,6  ,5  ,'MoICTNG, NITA,  MOFPED, OAG'),
(18 ,6  ,6  ,'Parliament, OP,  OPM, OAG,  MOFPED, NPA'),
(18 ,6  ,7  ,'OP, OPM,  MOFPED, MoPS,  NPA')
go

select * from ndp3.Interventions

--select distinct
--	i.Actor
--from
--	ndp3.Acronyms a right join
--	(
--		select
--			trim(value) Actor
--		from 
--			ndp3.Interventions
--			cross apply string_split(Actors,',')
--	) i on a.Acronym = i.Actor
--where
--	a.Acronym is null
--order by
--	i.Actor;