use Uganda;
go

drop table if exists NDP3.Actors;
go

create table NDP3.Actors
(
	ActorID int identity,
	NameInIntervention nvarchar(100),
	Acronym nvarchar(100),
	Description nvarchar(100),
	Name nvarchar(100),
	ShortName nvarchar(10),
	constraint PK_Actors primary key (ActorID)
);

--insert NDP3.Actors (NameInIntervention, Acronym, Description, Name, ShortName)
--select distinct 
--	trim(value),
--	a.Acronym,
--	a.Description,
--	coalesce(Description,trim(value)),
--	a.Acronym
--from 
--	ndp3.Interventions cross apply string_split(Actors,',') i 
--		full outer join
--	ndp3.Acronyms a on trim(i.value) = a.Acronym 
--where
--	trim(value) <> ''
--order by 
--	trim(value);

insert NDP3.Actors (NameInIntervention, Acronym, Description, Name, ShortName) values
('Acade','NULL','NULL','Acade','ACA'),
('Academic and Research Institutions','NULL','NULL','Academic and Research Institutions','ARIs'),
('Academic and Vocational Institutions','NULL','NULL','Academic and Vocational Institutions','AVIs'),
('Academic Institutions','NULL','NULL','Academic Institutions','ACAIs'),
('Accreditation Bodies','NULL','NULL','Accreditation Bodies','ACBs'),
('AGO','NULL','NULL','AGO','AGO'),
('All MDAs','NULL','NULL','All MDAs','ALLMDAs'),
('All Programme Leads','NULL','NULL','All Programme Leads','ALLPLs'),
('All Sectors','NULL','NULL','All Sectors','ALLS'),
('Anti-corruption Institutions','NULL','NULL','Anti-corruption Institutions','ACIs'),
('BOU','BOU','Bank of Uganda','Bank of Uganda','BOU'),
('Broadcast Service Providers','NULL','NULL','Broadcast Service Providers','BSPs'),
('BTVET','BTVET','Business, Technical and Vocational Training','Business, Technical and Vocational Training','BTVET'),
('CAA','NULL','NULL','CAA','CAA'),
('Cabinet','NULL','NULL','Cabinet','CAB'),
('Cabinet Secretariat','NULL','NULL','Cabinet Secretariat','CAS'),
('CDO','NULL','NULL','CDO','CDO'),
('Citizenry','NULL','NULL','Citizenry','CTZ'),
('Civil Society','NULL','NULL','Civil Society','CSOC'),
('CMA','CMA','Capital Markets Authority','Capital Markets Authority','CMA'),
('Communication Service Providers','NULL','NULL','Communication Service Providers','CSPs'),
('Communities','NULL','NULL','Communities','CMMs'),
('Cooperatives','NULL','NULL','Cooperatives','CPRs'),
('Cooperatives and Associations','NULL','NULL','Cooperatives and Associations','CPRAs'),
('Courts','NULL','NULL','Courts','CRTs'),
('CSOs','CSOs','Civil Society Organisations','Civil Society Organisations','CSOs'),
('Cultural and Religious Institutions','NULL','NULL','Cultural and Religious Institutions','CRIs'),
('Cultural Institutions','NULL','NULL','Cultural Institutions','CINs'),
('DCIC','NULL','NULL','DCIC','DCIC'),
('DDA','DDA','Dairy Development Authority','Dairy Development Authority','DDA'),
('DEI','DEI','Directorate of Ethics and Integrity','Directorate of Ethics and Integrity','DEI'),
('DGAL','NULL','NULL','DGAL','DGAL'),
('DIT','DIT','Directorate of Industrial Training','Directorate of Industrial Training','DIT'),
('DLBs','NULL','NULL','DLBs','DLBs'),
('DLG','DLG','District Local Government','District Local Government','DLG'),
('DPs','DPs','Development Partners','Development Partners','DPs'),
('EC','NULL','NULL','EC','EC'),
('Enterprise Uganda','NULL','NULL','Enterprise Uganda','ENU'),
('EOC','NULL','NULL','EOC','EOC'),
('EPRC','EPRC','Economic Policy Research Centre','Economic Policy Research Centre','EPRC'),
('ERA','ERA','Electricity Regulatory Authority','Electricity Regulatory Authority','ERA'),
('ESO','NULL','NULL','ESO','ESO'),
('Extension Service Providers','NULL','NULL','Extension Service Providers','ESPs'),
('Farmers','NULL','NULL','Farmers','FRMs'),
('Farmers Associations/Cooperatives','NULL','NULL','Farmers Associations/Cooperatives','FRMACs'),
('Farmers Groupings','NULL','NULL','Farmers Groupings','FRMGs'),
('FBOs','FBOs','Faith Based Organizations','Faith Based Organizations','FBOs'),
('FIA','NULL','NULL','FIA','FIA'),
('Financial Institutions','NULL','NULL','Financial Institutions','FINs'),
('FUFA','NULL','NULL','FUFA','FUFA'),
('FZA','NULL','NULL','FZA','FZA'),
('GCIC','GCIC','Government Citizen Interaction Centre','Government Citizen Interaction Centre','GCIC'),
('HDPs','NULL','NULL','HDPs','HDPs'),
('Health MDAs','NULL','NULL','Health MDAs','HMDAs'),
('Health Workers� Professional Associations','NULL','NULL','Health Workers� Professional Associations','HWPAs'),
('HEIs','NULL','NULL','HEIs','HEIs'),
('HESFEB','HESFEB','Higher Education Students Financing Board','Higher Education Students Financing Board','HESFEB'),
('Host LGs','NULL','NULL','Host LGs','HLGs'),
('Housing Finance','NULL','NULL','Housing Finance','HF'),
('Housing Finance Bank','NULL','NULL','Housing Finance Bank','HFB'),
('ICT','ICT','Information and Communication Technology','Information and Communication Technology','ICT'),
('ICT Entrepreneurs','NULL','NULL','ICT Entrepreneurs','ICTEs'),
('IG','IG','Inspectorate of Government','Inspectorate of Government','IG'),
('IGG','NULL','NULL','IGG','IGG'),
('Industry','NULL','NULL','Industry','IND'),
('IndustryL','NULL','NULL','IndustryL','INDL'),
('International Health Agencies','NULL','NULL','International Health Agencies','IHAs'),
('International Research Organizations','NULL','NULL','International Research Organizations','IROs'),
('IRA','IRA','Insurance Regulatory Authority','Insurance Regulatory Authority','IRA'),
('ISO','ISO','International Standards Organization','International Standards Organization','ISO'),
('JLOS','JLOS','Justice, Law and Order Sector','Justice, Law and Order Sector','JLOS'),
('Joint Venture Partners','NULL','NULL','Joint Venture Partners','JVPs'),
('JSC','NULL','NULL','JSC','JSC'),
('Judiciary','NULL','NULL','Judiciary','JUD'),
('KCCA','KCCA','Kampala Capital City Authority','Kampala Capital City Authority','KCCA'),
('LDC','NULL','NULL','LDC','LDC'),
('LGFC','NULL','NULL','LGFC','LGFC'),
('LGs','LGs','Local Governments','Local Governments','LGs'),
('Local Communities','NULL','NULL','Local Communities','LCMMs'),
('Local Council Women Leaders','NULL','NULL','Local Council Women Leaders','LCWLs'),
('LRC','NULL','NULL','LRC','LRC'),
('MA','NULL','NULL','MA','MA'),
('MDAs','MDAs','Ministries Departments and Agencies','Ministries Departments and Agencies','MDAs'),
('Media','NULL','NULL','Media','MED'),
('Media/UBC','NULL','NULL','Media/UBC','MEDUBC'),
('Medical Bureaus','NULL','NULL','Medical Bureaus','MEDBs'),
('Medical Related Manufacturers','NULL','NULL','Medical Related Manufacturers','MRMs'),
('Microfinance Support Centre','NULL','NULL','Microfinance Support Centre','MSC'),
('MoAAIF','MoAAIF','Ministry of Agriculture Animal Industry and Fisheries','Ministry of Agriculture Animal Industry and Fisheries','MoAAIFs'),
('MoDVA','MoDVA','Ministry of Defense and Veteran Affairs','Ministry of Defense and Veteran Affairs','MoDVAs'),
('MoEMD','MoEMD','Ministry of Energy and Mineral Development','Ministry of Energy and Mineral Development','MoEMD'),
('MoES','MoES','Ministry of Education and Sports','Ministry of Education and Sports','MoES'),
('MoFA','MoFA','Ministry of Foreign Affairs','Ministry of Foreign Affairs','MoFAs'),
('MoFPED','MoFPED','Ministry of Finance Planning and Economic Development','Ministry of Finance Planning and Economic Development','MoFPED'),
('MoGLSD','MoGLSD','Ministry of Gender, Labour and Social Development','Ministry of Gender, Labour and Social Development','MoGLSD'),
('MoH','MoH','Ministry of Health','Ministry of Health','MoH'),
('MoIA','MoIA','Ministry of Internal Affairs','Ministry of Internal Affairs','MoIAs'),
('MoICTNG','MoICTNG','Ministry of Information and Communication Technology and National Guidance','Ministry of Information and Communication Technology and National Guidance','MoICTNG'),
('MoJCA','MoJCA','Ministry of Justice and Constitutional Affairs','Ministry of Justice and Constitutional Affairs','MoJCAs'),
('MoLG','MoLG','Ministry of Local Government','Ministry of Local Government','MoLG'),
('MoLHUD','MoLHUD','Ministry of Lands, Housing and Urban Development','Ministry of Lands, Housing and Urban Development','MoLHUD'),
('MoPS','MoPS','Ministry of Public Service','Ministry of Public Service','MoPS'),
('MoSTI','MoSTI','Ministry of Science Technology and Innovation','Ministry of Science Technology and Innovation','MoSTI'),
('MoTIC','MoTIC','Ministry of Trade Industry and Cooperatives','Ministry of Trade Industry and Cooperatives','MoTICs'),
('MoTWA','MoTWA','Ministry of Tourism, Wildlife and Antiquities','Ministry of Tourism, Wildlife and Antiquities','MoTWAs'),
('MoWE','MoWE','Ministry of Water and Environment','Ministry of Water and Environment','MoWECCD'),
('MoWE (CCD)','NULL','NULL','MoWE (CCD)','MoWE (CCD)'),
('MoWT','MoWT','Ministry of Works and Transport','Ministry of Works and Transport','MoWT'),
('MUK','NULL','NULL','MUK','MUK'),
('NAADS','NAADS','National Agricultural Advisory Services','National Agricultural Advisory Services','NAADS'),
('NAC','NULL','NULL','NAC','NAC'),
('NAGRC','NULL','NULL','NAGRC','NAGRC'),
('NAGRCDB','NAGRCDB','National Animal Genetic Resource Centre and Data Bank','National Animal Genetic Resource Centre and Data Bank','NAGRCDB'),
('NaGRIC','NULL','NULL','NaGRIC','NaGRIC'),
('NARO','NARO','National Agricultural Research Organization','National Agricultural Research Organization','NARO'),
('National Women Councils','NULL','NULL','National Women Councils','NWCs'),
('NCDC','NCDC','National Curriculum Development Centre','National Curriculum Development Centre','NCDC'),
('NCHE','NCHE','National Council of Higher Education','National Council of Higher Education','NCHE'),
('NCRI','NULL','NULL','NCRI','NCRI'),
('NCS','NULL','NULL','NCS','NCS'),
('NDA','NULL','NULL','NDA','NDA'),
('NEMA','NEMA','National Environment Management Authority','National Environment Management Authority','NEMA'),
('NFA','NFA','National Forestry Authority','National Forestry Authority','NFA'),
('NGOs','NGOs','Non-Governmental Organizations','Non-Governmental Organizations','NGOs'),
('NIRA','NULL','NULL','NIRA','NIRA'),
('NITA','NITA','National Information Technology Authority','National Information Technology Authority','NITA'),
('NITAU','NULL','NULL','NITAU','NITAU'),
('NITA-U','NULL','NULL','NITA-U','NATI-U'),
('NMS / JMS','NULL','NULL','NMS / JMS','NMSJMS'),
('Non-State Actors','NULL','NULL','Non-State Actors','NSACs'),
('NPA','NPA','National Planning Authority','National Planning Authority','NPA'),
('NPC','NULL','NULL','NPC','NPC'),
('NSSF','NSSF','National Social Security Fund','National Social Security Fund','NSSF'),
('NUL','NULL','NULL','NUL','NUL'),
('NWSC','NULL','NULL','NWSC','NWSC'),
('OAG','OAG','Office of the Auditor General','Office of the Auditor General','OAG'),
('OP','OP','Office of the President','Office of the President','OP'),
('OP (Ethics & Integrity)','NULL','NULL','OP (Ethics & Integrity)','OPEI'),
('OPM','OPM','Office of the Prime Minister','Office of the Prime Minister','OPM'),
('Other MDAs','NULL','NULL','Other MDAs','OMDAs'),
('Other MDAs and Private Sector','NULL','NULL','Other MDAs and Private Sector','OMDAPSs'),
('Other Non-State Actors','NULL','NULL','Other Non-State Actors','ONSACs'),
('Other Utility Service Providers','NULL','NULL','Other Utility Service Providers','OUSPs'),
('OWC','OWC','Operation Wealth Creation','Operation Wealth Creation','OWC'),
('Parliament','NULL','NULL','Parliament','PRL'),
('PAU','PAU','Petroleum Authority of Uganda','Petroleum Authority of Uganda','PAU'),
('Post Bank','NULL','NULL','Post Bank','PB'),
('POSTA','NULL','NULL','POSTA','POSTA'),
('PPDA','PPDA','Public Procurement and Disposal of Public Assets','Public Procurement and Disposal of Public Assets','PPDAs'),
('Pride-Micro Finance','NULL','NULL','Pride-Micro Finance','PMF'),
('Private Health Providers','NULL','NULL','Private Health Providers','PHPs'),
('Private Sector','NULL','NULL','Private Sector','PS'),
('Private Sector Cultural','NULL','NULL','Private Sector Cultural','PSC'),
('Professional Associations','NULL','NULL','Professional Associations','PAs'),
('Professional Bodies','NULL','NULL','Professional Bodies','PBDs'),
('Professional Councils','NULL','NULL','Professional Councils','PCs'),
('PSFU','PSFU','Private Sector Foundation Uganda','Private Sector Foundation Uganda','PSFU'),
('Public Research Organizations','NULL','NULL','Public Research Organizations','PROs'),
('PWD Councils','NULL','NULL','PWD Councils','PWDCs'),
('REA','REA','Rural Electrification Agency','Rural Electrification Agency','REA'),
('Religious and Cultural institutions','NULL','NULL','Religious and Cultural institutions','RCIs'),
('Religious Entities','NULL','NULL','Religious Entities','REs'),
('Religious Leaders','NULL','NULL','Religious Leaders','RLs'),
('Research & Academic Institutions','NULL','NULL','Research & Academic Institutions','RAIs'),
('Research Institutions','NULL','NULL','Research Institutions','RIs'),
('Research Organs','NULL','NULL','Research Organs','ROs'),
('Sectors','NULL','NULL','Sectors','SECs'),
('Sectors and LGs','NULL','NULL','Sectors and LGs','SECLGs'),
('Security Agencies','NULL','NULL','Security Agencies','SAs'),
('Sports Clubs','NULL','NULL','Sports Clubs','SCs'),
('TBD','NULL','NULL','TBD','TBD'),
('Telecom Companies','NULL','NULL','Telecom Companies','TCs'),
('Tertiary Institutions','NULL','NULL','Tertiary Institutions','TEIs'),
('TGCU','NULL','NULL','TGCU','TGCU'),
('Tourism Police','NULL','NULL','Tourism Police','TP'),
('Training Institutions','NULL','NULL','Training Institutions','TRIs'),
('UAC','UAC','Uganda AIDS Commission','Uganda AIDS Commission','UAC'),
('UBC','UBC','Uganda Broadcasting Cooperation','Uganda Broadcasting Cooperation','UBC'),
('UBC/SIGNET','NULL','NULL','UBC/SIGNET','UBCS'),
('UBOS','UBOS','Uganda Bureau of Statistics','Uganda Bureau of Statistics','UBOS'),
('UCA','NULL','NULL','UCA','UCA'),
('UCAA','UCAA','Uganda Civil Aviation Authority','Uganda Civil Aviation Authority','UCAA'),
('UCC','UCC','Uganda Communications Commission','Uganda Communications Commission','UCC'),
('UCDA','UCDA','Uganda Coffee Development Authority','Uganda Coffee Development Authority','UCDA'),
('UCE','UCE','Uganda Commodity Exchange','Uganda Commodity Exchange','UCE'),
('UCI','NULL','NULL','UCI','UCI'),
('UCMP','NULL','NULL','UCMP','UCMP'),
('UCPC','NULL','NULL','UCPC','UCPC'),
('UCSC','NULL','NULL','UCSC','UCSC'),
('UDB','UDB','Uganda Development Bank','Uganda Development Bank','UDB'),
('UDC','UDC','Uganda Development Cooperation','Uganda Development Cooperation','UDC'),
('UECCC','NULL','NULL','UECCC','UECCC'),
('UEDCL','UEDCL','Uganda Electricity Distribution Company Limited','Uganda Electricity Distribution Company Limited','UEDCL'),
('UEGCL','UEGCL','Uganda Electricity Generation Company Limited','Uganda Electricity Generation Company Limited','UEGCL'),
('UEPB','UEPB','Uganda Export Promotions Board','Uganda Export Promotions Board','UEPB'),
('UETCL','UETCL','Uganda Electricity Transport Company Limited','Uganda Electricity Transport Company Limited','UETCL'),
('UFZA','UFZA','Uganda Free Zones Area','Uganda Free Zones Area','UFZA'),
('Uganda Airlines','NULL','NULL','Uganda Airlines','UAs'),
('Uganda Media Centre','NULL','NULL','Uganda Media Centre','UMC'),
('UHI','UHI','Uganda Heart Institute','Uganda Heart Institute','UHI'),
('UHRC','UHRC','Uganda Human Rights Commission','Uganda Human Rights Commission','UHRC'),
('UHTTI','NULL','NULL','UHTTI','UHTTI'),
('UIA','UIA','Uganda Investment Authority','Uganda Investment Authority','UIA'),
('UICT','UICT','Uganda Institute of Information and Communications Technology','Uganda Institute of Information and Communications Technology','UICT'),
('UIRA','NULL','NULL','UIRA','UIRA'),
('UIRI','UIRI','Uganda Industrial Research Institute','Uganda Industrial Research Institute','UIRI'),
('ULC','ULC','Uganda Land Commission','Uganda Land Commission','ULC'),
('ULRC','NULL','NULL','ULRC','ULRC'),
('UMA','UMA','Uganda Manufactures Association','Uganda Manufactures Association','UMA'),
('UMEME','NULL','NULL','UMEME','UMEME'),
('UMFSC','UMFSC','Uganda Microfinance Support Centre','Uganda Microfinance Support Centre','UMFSC'),
('UNBOS','NULL','NULL','UNBOS','UNBOS'),
('UNBS','UNBS','Uganda National Bureau of Standards','Uganda National Bureau of Standards','UNBS'),
('UNCE','NULL','NULL','UNCE','UNCE'),
('UNCSI','NULL','NULL','UNCSI','UNCSI'),
('UNCST','UNCST','Uganda National Council of Science and Technology','Uganda National Council of Science and Technology','UNCST'),
('UNEB','NULL','NULL','UNEB','UNEB'),
('UNES','NULL','NULL','UNES','UNES'),
('UNFFE','NULL','NULL','UNFFE','UNFFE'),
('UNHCC','UNHCC','Uganda National Housing and Construction Corporation','Uganda National Housing and Construction Corporation','UNHCC'),
('Universities','NULL','NULL','Universities','UNVs'),
('UNMA','UNMA','Uganda National Metrological Authority','Uganda National Metrological Authority','UNMA'),
('UNOC','UNOC','Uganda National Oil Company','Uganda National Oil Company','UNOC'),
('UNRA','UNRA','Uganda Road Authority','Uganda Road Authority','UNRA'),
('UPDF','NULL','NULL','UPDF','UPDF'),
('UPF','UPF','Uganda Police Force','Uganda Police Force','UPF'),
('UPS','NULL','NULL','UPS','UPS'),
('URA','URA','Uganda Revenue Authority','Uganda Revenue Authority','URA'),
('Urban Centres','NULL','NULL','Urban Centres','UCs'),
('URBRA','URBRA','Uganda Retirement Benefits Regulatory Authority','Uganda Retirement Benefits Regulatory Authority','URBRA'),
('URC','URC','Uganda Railway Cooperation','Uganda Railway Cooperation','URC'),
('URF','URF','Uganda Road Fund','Uganda Road Fund','URF'),
('URSB','URSB','Uganda Registration Service Bureau','Uganda Registration Service Bureau','URSB'),
('USE','USE','Uganda Securities Exchange','Uganda Securities Exchange','USE'),
('USSIA','USSIA','Uganda Small Scale Industries Association','Uganda Small Scale Industries Association','USSIA'),
('UTB','UTB','Uganda Tourism Board','Uganda Tourism Board','UTB'),
('UTL','UTL','Uganda Telecom','Uganda Telecom','UTL'),
('UVRI','UVRI','Uganda Virus Research Institute','Uganda Virus Research Institute','UVRI'),
('UWA','UWA','Uganda Wildlife Authority','Uganda Wildlife Authority','UWA'),
('UWEC','UWEC','Uganda Wildlife Education Centre','Uganda Wildlife Education Centre','UWEC'),
('UWRSA','UWRSA','Uganda Warehouse Receipt Systems Authority','Uganda Warehouse Receipt Systems Authority','UWRSA'),
('UWRTI','UWRTI','Uganda Wildlife Research and Training Institute','Uganda Wildlife Research and Training Institute','UWRTI'),
('Vocational Institutions','NULL','NULL','Vocational Institutions','VIs'),
('Youth Councils','NULL','NULL','Youth Councils','YCs');

update ndp3.Actors set Acronym = NULL where Acronym = 'NULL';
update ndp3.Actors set Description = NULL where Description = 'NULL';

select * from ndp3.Actors;