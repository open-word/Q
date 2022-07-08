use Uganda;
go

create table A
(
	ActorID int,
	Name nvarchar(250),
	ShortName nvarchar(25),
	Reference as format(ActorID,'D2'),
	ReferenceName as format(ActorID,'D2') + ' - ' + Name,
	ReferenceShortName as format(ActorID,'D2') + ' - ' + ShortName,
	constraint PK_A primary key (ActorID),
	constraint UQ_A_Name unique (Name),
	constraint UQ_A_ShortName unique (ShortName)
);
go

insert A (ActorID, Name, ShortName) values
(1  ,'Acade'                                                                          ,'ACA'           ),
(2  ,'Academic and Research Institutions'                                             ,'ARIs'          ),
(3  ,'Academic and Vocational Institutions'                                           ,'AVIs'          ),
(4  ,'Academic Institutions'                                                          ,'ACAIs'         ),
(5  ,'Accreditation Bodies'                                                           ,'ACBs'          ),
(6  ,'AGO'                                                                            ,'AGO'           ),
(7  ,'All MDAs'                                                                       ,'ALLMDAs'       ),
(8  ,'All Programme Leads'                                                            ,'ALLPLs'        ),
(9  ,'All Sectors'                                                                    ,'ALLS'          ),
(10 ,'Anti-corruption Institutions'                                                   ,'ACIs'          ),
(11 ,'Bank of Uganda'                                                                 ,'BOU'           ),
(12 ,'Broadcast Service Providers'                                                    ,'BSPs'          ),
(13 ,'Business, Technical and Vocational Training'                                    ,'BTVET'         ),
(14 ,'CAA'                                                                            ,'CAA'           ),
(15 ,'Cabinet'                                                                        ,'CAB'           ),
(16 ,'Cabinet Secretariat'                                                            ,'CAS'           ),
(17 ,'CDO'                                                                            ,'CDO'           ),
(18 ,'Citizenry'                                                                      ,'CTZ'           ),
(19 ,'Civil Society'                                                                  ,'CSOC'          ),
(20 ,'Capital Markets Authority'                                                      ,'CMA'           ),
(21 ,'Communication Service Providers'                                                ,'CSPs'          ),
(22 ,'Communities'                                                                    ,'CMMs'          ),
(23 ,'Cooperatives'                                                                   ,'CPRs'          ),
(24 ,'Cooperatives and Associations'                                                  ,'CPRAs'         ),
(25 ,'Courts'                                                                         ,'CRTs'          ),
(26 ,'Civil Society Organisations'                                                    ,'CSOs'          ),
(27 ,'Cultural and Religious Institutions'                                            ,'CRIs'          ),
(28 ,'Cultural Institutions'                                                          ,'CINs'          ),
(29 ,'DCIC'                                                                           ,'DCIC'          ),
(30 ,'Dairy Development Authority'                                                    ,'DDA'           ),
(31 ,'Directorate of Ethics and Integrity'                                            ,'DEI'           ),
(32 ,'DGAL'                                                                           ,'DGAL'          ),
(33 ,'Directorate of Industrial Training'                                             ,'DIT'           ),
(34 ,'DLBs'                                                                           ,'DLBs'          ),
(35 ,'District Local Government'                                                      ,'DLG'           ),
(36 ,'Development Partners'                                                           ,'DPs'           ),
(37 ,'EC'                                                                             ,'EC'            ),
(38 ,'Enterprise Uganda'                                                              ,'ENU'           ),
(39 ,'EOC'                                                                            ,'EOC'           ),
(40 ,'Economic Policy Research Centre'                                                ,'EPRC'          ),
(41 ,'Electricity Regulatory Authority'                                               ,'ERA'           ),
(42 ,'ESO'                                                                            ,'ESO'           ),
(43 ,'Extension Service Providers'                                                    ,'ESPs'          ),
(44 ,'Farmers'                                                                        ,'FRMs'          ),
(45 ,'Farmers Associations/Cooperatives'                                              ,'FRMACs'        ),
(46 ,'Farmers Groupings'                                                              ,'FRMGs'         ),
(47 ,'Faith Based Organizations'                                                      ,'FBOs'          ),
(48 ,'FIA'                                                                            ,'FIA'           ),
(49 ,'Financial Institutions'                                                         ,'FINs'          ),
(50 ,'FUFA'                                                                           ,'FUFA'          ),
(51 ,'FZA'                                                                            ,'FZA'           ),
(52 ,'Government Citizen Interaction Centre'                                          ,'GCIC'          ),
(53 ,'HDPs'                                                                           ,'HDPs'          ),
(54 ,'Health MDAs'                                                                    ,'HMDAs'         ),
(55 ,'Health Workers� Professional Associations'                                      ,'HWPAs'         ),
(56 ,'HEIs'                                                                           ,'HEIs'          ),
(57 ,'Higher Education Students Financing Board'                                      ,'HESFEB'        ),
(58 ,'Host LGs'                                                                       ,'HLGs'          ),
(59 ,'Housing Finance'                                                                ,'HF'            ),
(60 ,'Housing Finance Bank'                                                           ,'HFB'           ),
(61 ,'Information and Communication Technology'                                       ,'ICT'           ),
(62 ,'ICT Entrepreneurs'                                                              ,'ICTEs'         ),
(63 ,'Inspectorate of Government'                                                     ,'IG'            ),
(64 ,'IGG'                                                                            ,'IGG'           ),
(65 ,'Industry'                                                                       ,'IND'           ),
(66 ,'IndustryL'                                                                      ,'INDL'          ),
(67 ,'International Health Agencies'                                                  ,'IHAs'          ),
(68 ,'International Research Organizations'                                           ,'IROs'          ),
(69 ,'Insurance Regulatory Authority'                                                 ,'IRA'           ),
(70 ,'International Standards Organization'                                           ,'ISO'           ),
(71 ,'Justice, Law and Order Sector'                                                  ,'JLOS'          ),
(72 ,'Joint Venture Partners'                                                         ,'JVPs'          ),
(73 ,'JSC'                                                                            ,'JSC'           ),
(74 ,'Judiciary'                                                                      ,'JUD'           ),
(75 ,'Kampala Capital City Authority'                                                 ,'KCCA'          ),
(76 ,'LDC'                                                                            ,'LDC'           ),
(77 ,'LGFC'                                                                           ,'LGFC'          ),
(78 ,'Local Governments'                                                              ,'LGs'           ),
(79 ,'Local Communities'                                                              ,'LCMMs'         ),
(80 ,'Local Council Women Leaders'                                                    ,'LCWLs'         ),
(81 ,'LRC'                                                                            ,'LRC'           ),
(82 ,'MA'                                                                             ,'MA'            ),
(83 ,'Ministries Departments and Agencies'                                            ,'MDAs'          ),
(84 ,'Media'                                                                          ,'MED'           ),
(85 ,'Media/UBC'                                                                      ,'MEDUBC'        ),
(86 ,'Medical Bureaus'                                                                ,'MEDBs'         ),
(87 ,'Medical Related Manufacturers'                                                  ,'MRMs'          ),
(88 ,'Microfinance Support Centre'                                                    ,'MSC'           ),
(89 ,'Ministry of Agriculture Animal Industry and Fisheries'                          ,'MoAAIFs'       ),
(90 ,'Ministry of Defense and Veteran Affairs'                                        ,'MoDVAs'        ),
(91 ,'Ministry of Energy and Mineral Development'                                     ,'MoEMD'         ),
(92 ,'Ministry of Education and Sports'                                               ,'MoES'          ),
(93 ,'Ministry of Foreign Affairs'                                                    ,'MoFAs'         ),
(94 ,'Ministry of Finance Planning and Economic Development'                          ,'MoFPED'        ),
(95 ,'Ministry of Gender, Labour and Social Development'                              ,'MoGLSD'        ),
(96 ,'Ministry of Health'                                                             ,'MoH'           ),
(97 ,'Ministry of Internal Affairs'                                                   ,'MoIAs'         ),
(98 ,'Ministry of Information and Communication Technology and National Guidance'     ,'MoICTNG'       ),
(99 ,'Ministry of Justice and Constitutional Affairs'                                 ,'MoJCAs'        ),
(100,'Ministry of Local Government'                                                   ,'MoLG'          ),
(101,'Ministry of Lands, Housing and Urban Development'                               ,'MoLHUD'        ),
(102,'Ministry of Public Service'                                                     ,'MoPS'          ),
(103,'Ministry of Science Technology and Innovation'                                  ,'MoSTI'         ),
(104,'Ministry of Trade Industry and Cooperatives'                                    ,'MoTICs'        ),
(105,'Ministry of Tourism, Wildlife and Antiquities'                                  ,'MoTWAs'        ),
(106,'Ministry of Water and Environment'                                              ,'MoWECCD'       ),
(107,'MoWE (CCD)'                                                                     ,'MoWE (CCD)'    ),
(108,'Ministry of Works and Transport'                                                ,'MoWT'          ),
(109,'MUK'                                                                            ,'MUK'           ),
(110,'National Agricultural Advisory Services'                                        ,'NAADS'         ),
(111,'NAC'                                                                            ,'NAC'           ),
(112,'NAGRC'                                                                          ,'NAGRC'         ),
(113,'National Animal Genetic Resource Centre and Data Bank'                          ,'NAGRCDB'       ),
(114,'NaGRIC'                                                                         ,'NaGRIC'        ),
(115,'National Agricultural Research Organization'                                    ,'NARO'          ),
(116,'National Women Councils'                                                        ,'NWCs'          ),
(117,'National Curriculum Development Centre'                                         ,'NCDC'          ),
(118,'National Council of Higher Education'                                           ,'NCHE'          ),
(119,'NCRI'                                                                           ,'NCRI'          ),
(120,'NCS'                                                                            ,'NCS'           ),
(121,'NDA'                                                                            ,'NDA'           ),
(122,'National Environment Management Authority'                                      ,'NEMA'          ),
(123,'National Forestry Authority'                                                    ,'NFA'           ),
(124,'Non-Governmental Organizations'                                                 ,'NGOs'          ),
(125,'NIRA'                                                                           ,'NIRA'          ),
(126,'National Information Technology Authority'                                      ,'NITA'          ),
(127,'NITAU'                                                                          ,'NITAU'         ),
(128,'NITA-U'                                                                         ,'NATI-U'        ),
(129,'NMS / JMS'                                                                      ,'NMSJMS'        ),
(130,'Non-State Actors'                                                               ,'NSACs'         ),
(131,'National Planning Authority'                                                    ,'NPA'           ),
(132,'NPC'                                                                            ,'NPC'           ),
(133,'National Social Security Fund'                                                  ,'NSSF'          ),
(134,'NUL'                                                                            ,'NUL'           ),
(135,'NWSC'                                                                           ,'NWSC'          ),
(136,'Office of the Auditor General'                                                  ,'OAG'           ),
(137,'Office of the President'                                                        ,'OP'            ),
(138,'OP (Ethics & Integrity)'                                                        ,'OPEI'          ),
(139,'Office of the Prime Minister'                                                   ,'OPM'           ),
(140,'Other MDAs'                                                                     ,'OMDAs'         ),
(141,'Other MDAs and Private Sector'                                                  ,'OMDAPSs'       ),
(142,'Other Non-State Actors'                                                         ,'ONSACs'        ),
(143,'Other Utility Service Providers'                                                ,'OUSPs'         ),
(144,'Operation Wealth Creation'                                                      ,'OWC'           ),
(145,'Parliament'                                                                     ,'PRL'           ),
(146,'Petroleum Authority of Uganda'                                                  ,'PAU'           ),
(147,'Post Bank'                                                                      ,'PB'            ),
(148,'POSTA'                                                                          ,'POSTA'         ),
(149,'Public Procurement and Disposal of Public Assets'                               ,'PPDAs'         ),
(150,'Pride-Micro Finance'                                                            ,'PMF'           ),
(151,'Private Health Providers'                                                       ,'PHPs'          ),
(152,'Private Sector'                                                                 ,'PS'            ),
(153,'Private Sector Cultural'                                                        ,'PSC'           ),
(154,'Professional Associations'                                                      ,'PAs'           ),
(155,'Professional Bodies'                                                            ,'PBDs'          ),
(156,'Professional Councils'                                                          ,'PCs'           ),
(157,'Private Sector Foundation Uganda'                                               ,'PSFU'          ),
(158,'Public Research Organizations'                                                  ,'PROs'          ),
(159,'PWD Councils'                                                                   ,'PWDCs'         ),
(160,'Rural Electrification Agency'                                                   ,'REA'           ),
(161,'Religious and Cultural institutions'                                            ,'RCIs'          ),
(162,'Religious Entities'                                                             ,'REs'           ),
(163,'Religious Leaders'                                                              ,'RLs'           ),
(164,'Research & Academic Institutions'                                               ,'RAIs'          ),
(165,'Research Institutions'                                                          ,'RIs'           ),
(166,'Research Organs'                                                                ,'ROs'           ),
(167,'Sectors'                                                                        ,'SECs'          ),
(168,'Sectors and LGs'                                                                ,'SECLGs'        ),
(169,'Security Agencies'                                                              ,'SAs'           ),
(170,'Sports Clubs'                                                                   ,'SCs'           ),
(171,'TBD'                                                                            ,'TBD'           ),
(172,'Telecom Companies'                                                              ,'TCs'           ),
(173,'Tertiary Institutions'                                                          ,'TEIs'          ),
(174,'TGCU'                                                                           ,'TGCU'          ),
(175,'Tourism Police'                                                                 ,'TP'            ),
(176,'Training Institutions'                                                          ,'TRIs'          ),
(177,'Uganda AIDS Commission'                                                         ,'UAC'           ),
(178,'Uganda Broadcasting Cooperation'                                                ,'UBC'           ),
(179,'UBC/SIGNET'                                                                     ,'UBCS'          ),
(180,'Uganda Bureau of Statistics'                                                    ,'UBOS'          ),
(181,'UCA'                                                                            ,'UCA'           ),
(182,'Uganda Civil Aviation Authority'                                                ,'UCAA'          ),
(183,'Uganda Communications Commission'                                               ,'UCC'           ),
(184,'Uganda Coffee Development Authority'                                            ,'UCDA'          ),
(185,'Uganda Commodity Exchange'                                                      ,'UCE'           ),
(186,'UCI'                                                                            ,'UCI'           ),
(187,'UCMP'                                                                           ,'UCMP'          ),
(188,'UCPC'                                                                           ,'UCPC'          ),
(189,'UCSC'                                                                           ,'UCSC'          ),
(190,'Uganda Development Bank'                                                        ,'UDB'           ),
(191,'Uganda Development Cooperation'                                                 ,'UDC'           ),
(192,'UECCC'                                                                          ,'UECCC'         ),
(193,'Uganda Electricity Distribution Company Limited'                                ,'UEDCL'         ),
(194,'Uganda Electricity Generation Company Limited'                                  ,'UEGCL'         ),
(195,'Uganda Export Promotions Board'                                                 ,'UEPB'          ),
(196,'Uganda Electricity Transport Company Limited'                                   ,'UETCL'         ),
(197,'Uganda Free Zones Area'                                                         ,'UFZA'          ),
(198,'Uganda Airlines'                                                                ,'UAs'           ),
(199,'Uganda Media Centre'                                                            ,'UMC'           ),
(200,'Uganda Heart Institute'                                                         ,'UHI'           ),
(201,'Uganda Human Rights Commission'                                                 ,'UHRC'          ),
(202,'UHTTI'                                                                          ,'UHTTI'         ),
(203,'Uganda Investment Authority'                                                    ,'UIA'           ),
(204,'Uganda Institute of Information and Communications Technology'                  ,'UICT'          ),
(205,'UIRA'                                                                           ,'UIRA'          ),
(206,'Uganda Industrial Research Institute'                                           ,'UIRI'          ),
(207,'Uganda Land Commission'                                                         ,'ULC'           ),
(208,'ULRC'                                                                           ,'ULRC'          ),
(209,'Uganda Manufactures Association'                                                ,'UMA'           ),
(210,'UMEME'                                                                          ,'UMEME'         ),
(211,'Uganda Microfinance Support Centre'                                             ,'UMFSC'         ),
(212,'UNBOS'                                                                          ,'UNBOS'         ),
(213,'Uganda National Bureau of Standards'                                            ,'UNBS'          ),
(214,'UNCE'                                                                           ,'UNCE'          ),
(215,'UNCSI'                                                                          ,'UNCSI'         ),
(216,'Uganda National Council of Science and Technology'                              ,'UNCST'         ),
(217,'UNEB'                                                                           ,'UNEB'          ),
(218,'UNES'                                                                           ,'UNES'          ),
(219,'UNFFE'                                                                          ,'UNFFE'         ),
(220,'Uganda National Housing and Construction Corporation'                           ,'UNHCC'         ),
(221,'Universities'                                                                   ,'UNVs'          ),
(222,'Uganda National Metrological Authority'                                         ,'UNMA'          ),
(223,'Uganda National Oil Company'                                                    ,'UNOC'          ),
(224,'Uganda Road Authority'                                                          ,'UNRA'          ),
(225,'UPDF'                                                                           ,'UPDF'          ),
(226,'Uganda Police Force'                                                            ,'UPF'           ),
(227,'UPS'                                                                            ,'UPS'           ),
(228,'Uganda Revenue Authority'                                                       ,'URA'           ),
(229,'Urban Centres'                                                                  ,'UCs'           ),
(230,'Uganda Retirement Benefits Regulatory Authority'                                ,'URBRA'         ),
(231,'Uganda Railway Cooperation'                                                     ,'URC'           ),
(232,'Uganda Road Fund'                                                               ,'URF'           ),
(233,'Uganda Registration Service Bureau'                                             ,'URSB'          ),
(234,'Uganda Securities Exchange'                                                     ,'USE'           ),
(235,'Uganda Small Scale Industries Association'                                      ,'USSIA'         ),
(236,'Uganda Tourism Board'                                                           ,'UTB'           ),
(237,'Uganda Telecom'                                                                 ,'UTL'           ),
(238,'Uganda Virus Research Institute'                                                ,'UVRI'          ),
(239,'Uganda Wildlife Authority'                                                      ,'UWA'           ),
(240,'Uganda Wildlife Education Centre'                                               ,'UWEC'          ),
(241,'Uganda Warehouse Receipt Systems Authority'                                     ,'UWRSA'         ),
(242,'Uganda Wildlife Research and Training Institute'                                ,'UWRTI'         ),
(243,'Vocational Institutions'                                                        ,'VIs'           ),
(244,'Youth Councils'                                                                 ,'YCs'           );

--select * from A;

select '1.4'
go

--select 
--	'(' +
--	convert(nchar(3),ActorID) +','+ 
--	char(39) + convert(nchar(80),Name + char(39)) +','+
--	char(39) + convert(nchar(15),ShortName + char(39)) +
--	'),'
--from 
--	ndp3.Actors 
--order by 
--	ActorID;