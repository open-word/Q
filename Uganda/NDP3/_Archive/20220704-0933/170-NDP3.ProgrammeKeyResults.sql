use Uganda;
go

create table NDP3.ProgrammeKeyResults
(
	ProgrammeKeyResultID int identity,
	Name nvarchar(250),
	NDP3Reference nchar(8),
	Baseline decimal (14,4),
	Units nvarchar(50),
	ProgrammeID int,
	constraint PK_ProgrammeKeyResults primary key (ProgrammeKeyResultID),
	constraint FK_ProgrammeKeyResults_Programmes foreign key (ProgrammeID) references NDP3.Programmes (ProgrammeID)
);
go

-- 1
insert NDP3.ProgrammeKeyResults (Name, NDP3Reference, ProgrammeID,Baseline, Units) values
	('Increase Agricultural Real GDP growth rate',																			'01.01.01',	1,		3.8,	'Percent'),
	('Increase total Export value of priority agricultural commodities (USD Billion) - Coffee',								'01.02.01',	1,	    0.492,	'USD Billion'),
	('Increase total Export value of priority agricultural commodities (USD Billion) - Tea',								'01.02.02',	1,	    0.091,	'USD Billion'),
	('Increase total Export value of priority agricultural commodities (USD Billion) - Fish',								'01.02.03',	1,	    0.146,	'USD Billion'),
	('Increase total Export value of priority agricultural commodities (USD Billion) - Dairy',								'01.02.04',	1,	    0.077,	'USD Billion'),
	('Increase total Export value of priority agricultural commodities (USD Billion) - Meat',								'01.02.05',	1,	    0.003,	'USD Billion'),
	('Increase total Export value of priority agricultural commodities (USD Billion) - Maize',								'01.02.06',	1,	    0.125,	'USD Billion'),
	('Increase the cumulative water for production storage capacity (Mcm)',													'01.03.01',	1,	   39.3,	'Mcm'),
	('Increase area under formal irrigation (ha)',																			'01.04.01',	1,	15147.0,	'ha'),
	('Increase the percentage of functional water for production facilities',												'01.05.01',	1,	   86.7,	'Percent'),
	('Increase the proportion of households that are food secure',															'01.06.01',	1,     69.0,	'Percent'),
	('Reduce the proportion of households dependent on subsistence agriculture as a main source of livelihood (percent)',	'01.07.01',	1,	   68.0,	'Percent'),
	('Number of jobs created in the agro-industrial value chain',															'01.08.01',	1,		0.0,	'Jobs'),
	('Labour productivity in agriculture (USD)',																			'01.09.01',	1,   2212.0,	'USD'),
	('Post-harvest losses for priority commodities (percent)',																'01.10.01',	1,	   37.0,	'Percent'),
	('Storage capacity (MT)',																								'01.11.01',	1, 550000.0,	'MT');
go
-- 2
insert NDP3.ProgrammeKeyResults (Name, NDP3Reference, ProgrammeID,Baseline, Units) values
	('Increase volume of copper produced (metric tonnes)',												'02.01.01',	2,		0.0,	'Metric Tonnes'),
	('Increase the value of refined Gold exports',														'02.02.01',	2,	  450.0,	'?'),
	('Increase the number of trained and skilled Geoscientists',										'02.03.01',	2,	  108.0,	'Persons'),
	('Increase the value of investment into the exploration and processing of the selected minerals',	'02.04.01',	2,		0.8,	'?'),
	('Contribution of processed minerals to total manufactured exports (percent)',						'02.05.01',	2,		5.0,	'Percent'),
	('Number of people employed mineral sector (million)',												'02.06.01',	2,		1.6,	'Million Persons'),
	('Increase the Volume of imported Iron and Steel (tonnes)',											'02.07.01',	2, 700000.0,	'Tonnes'),
	('Reduce the value of imported Iron and Steel (USD Mn)',											'02.08.01',	2,	  370.0,	'USD Mn'),
	('Reduce the volume of imported inorganic fertilizers (tonnes)',									'02.09.01',	2,	75000.0,	'Tonnes'),
	('Reduce the Value of imported inorganic fertilizers (USD Mn)',										'02.10.01',	2,	   26.0,	'USD Mn')
go
-- 3
insert NDP3.ProgrammeKeyResults (Name, NDP3Reference, ProgrammeID,Baseline, Units) values
	('Amount of revenue from oil and gas sector (UGX Bn)',							'03.01.01',	3,	 62.98,	'UGX Bn'),
	('Increase the contribution of the Oil & Gas to GDP (percent)',					'03.02.01',	3,	  3.0,	'Percent'),
	('Increase the proportion of investment in oil and gas to GDP (percent)',		'03.03.01',	3,	 20.0,	'Percent'),
	('Increase Ugandans employed in the oil and gas and gas related industries',	'03.04.01',	3, 3400.0,	'Persons'),
	('Increase contracts awarded to local companies',								'03.05.01',	3,	 50.0,	'?'),
	('Investment in Oil and Gas (Bn)',												'03.06.01',	3,	  0.0,	'Bn'),
	('Local Content (percent)',														'03.07.01',	3,   0.0,	'Percent');
-- 4
insert NDP3.ProgrammeKeyResults (Name, NDP3Reference, ProgrammeID,Baseline, Units) values
	('Increase the contribution of Tourism to GDP (percent)',														'04.01.01',	4,	      7.3,	'Percent'),
	('Increase annual Foreign exchange earnings (USD - Bn)',														'04.02.01',	4,	      1.45,	'USD - Bn'),
	('More Ugandans visiting key tourist attractions (Museums, National Parks, Source of the Nile and UWEC)',		'04.03.01',	4,	 646099.0,	'Persons'),
	('Increase average Inbound tourism revenues per leisure tourist (USD)',											'04.04.01',	4,	   1036.0,	'USD'),
	('Increase the number of International Tourist arrivals from the U.S., Europe, Middle East, Japan and China',	'04.05.01',	4,   212616.0,	'Arrivals'),
	('Increase the number of direct flight routes to Europe and Asia',												'04.06.01',	4,	      6.0,	'Flights'),
	('Increase tourism arrivals',																					'04.07.01',	4,	1402409.0,	'Arrivals'),
	('Increase contribution of tourism to total employment, percent',												'04.08.01',	4,	      6.3,	'Percent');
-- 5
insert NDP3.ProgrammeKeyResults (Name, NDP3Reference, ProgrammeID,Baseline, Units) values
	('Percentage of titled land',																											'05.01.01',	5,	 21.0,	'Percent'),
	('Increase water permit holders complying with permit conditions at the time of spot check - Ground water',								'05.02.01',	5,	 76.0,	'?'),
	('Increase water permit holders complying with permit conditions at the time of spot check - Surface water',							'05.02.02',	5,	 78.0,	'?'),
	('Increase water permit holders complying with permit conditions at the time of spot check - Waste water discharge permit conditions',	'05.02.03',	5,	 63.0,	'?'),
	('Increase water samples complying with national standards - Water bodies',																'05.03.01',	5,	  0.0,	'?'),
	('Increase water samples complying with national standards - Supplies/water collection points',											'05.03.02',	5,	  0.0,	'?'),
	('Increase land area covered by forests, percent',																						'05.04.01',	5,	  9.1,	'Percent'),
	('Increase the proportion of land area covered by wetlands, percent',																	'05.05.01',	5,	  8.9,	'Percent'),
	('Increase permit holders complying with ESIA conditions at the time of spot check, percent',											'05.06.01',	5,	 40.0,	'Percent'),
	('Increase accuracy of Meteorological Information, percent',																			'05.07.01',	5,	 60.0,	'Percent'),
	('Increase the percentage of automation of weather and climate network',																'05.08.01',	5,	 30.0,	'Percent'),
	('Average Annual Change in a Green House Gas (GHG) emissions (MtCO2e)',																	'05.09.01',	5,	  1.39,	'MtCO2e'),
	('Reduce the number of deaths and missing persons and directly affected persons attributed to disasters per 100,000 population',		'05.10.01',	5,  150.0,	'Per 100,000'),
	('Increase the proportion of green jobs to total jobs',																					'05.11.01',	5,	 25.0,	'Percent');
-- 6
insert NDP3.ProgrammeKeyResults (Name, NDP3Reference, ProgrammeID,Baseline, Units) values
	('Reduce the informal sector',																		'06.01.01',	6,	 56.6,	'?'),
	('Increase in non-commercial lending to the private sector in key growth sectors',					'06.02.01',	6,	  1.5,	'?'),
	('Increase the proportion of public contracts and sub-contracts that are awarded to local firms',	'06.03.01',	6,   30.0,	'Percent'),
	('Increase the value of exports',																	'06.04.01',	6, 5390.0,	'?');
-- 7
insert NDP3.ProgrammeKeyResults (Name, NDP3Reference, ProgrammeID,Baseline, Units) values
	('Increase the share of manufactured exports to total exports, percent',		'07.01.01',	7, 12.3,	'Percent'),
	('Increase the industrial sector contribution to GDP (percent)',				'07.02.01',	7, 26.5,	'Percent'),
	('Increase contribution of manufacturing to industrial GDP',					'07.03.01',	7, 15.8,	'?'),
	('Increase the share of manufacturing jobs to total formal jobs (percent)',		'07.04.01',	7,	9.0,	'Percent'),
	('Increase share of labour force employed in the industrial sector (percent)',	'07.05.01',	7, 12.6,	'Percent'),
	('Increase manufacturing value added (percent of GDP)',							'07.06.01',	7,	8.3,	'Percent of GDP');
-- 8
insert NDP3.ProgrammeKeyResults (Name, NDP3Reference, ProgrammeID,Baseline, Units) values
	('Reduce average travel time - within GKM',																	'08.01.01',	8,	   4.14,	'min/km'),
	('Reduce average travel time - within other cities',														'08.01.02',	8,	   0.0,		'min/km'),
	('Reduce average travel time - National Roads',																'08.01.03',	8,	   1.13,	'min/km'),
	('Reduce average travel time - District Roads',																'08.01.04',	8,	   1.0,		'min/km'),
	('Reduce average travel time - Inland water transport MW to PB',											'08.01.05',	8,	  18.0,		'hrs'),
	('Reduce average travel time - Passenger rail services',													'08.01.06',	8,	   0.75,	'min/km'),
	('Reduce average travel time - Freight rail services Mombasa to Kampala',									'08.01.07',	8,	  19.0,		'Days'),
	('Freight transportation costs - Inland (on Road): Murrum',													'08.02.01',	8,	1130.0,		'UGX'),
	('Freight transportation costs - Inland (on Road): Tarmac',													'08.02.02',	8,	 802.0,		'?'),
	('Freight transportation costs - Inland (on Rail)',															'08.02.03',	8,	   0.04,	'USD'),
	('Freight transportation costs - Inland (on Water)',														'08.02.04',	8,	 500.0,		'UGX'),
	('Freight transportation costs - From coast to Kampala (on Road)',											'08.02.05',	8,	   0.77,	'USD'),
	('Freight transportation costs - From coast to Kampala (on Rail)',											'08.02.06',	8,	   0.05,	'USD'),
	('Freight transportation costs - From coast (MW) to Kampala (PB) (on Water)',								'08.02.07',	8,	   0.06,	'USD'),
	('Stock of transport infrastructure - Paved National Roads',												'08.03.01',	8,	4971.0,		'km'),
	('Stock of transport infrastructure - Paved urban roads',													'08.03.02',	8,	1253.0,		'km'),
	('Stock of transport infrastructure - Permanent way/railway road',											'08.03.03',	8,	 262.0,		'km'),
	('Freight Cargo - Central Corridor - Export',																'08.04.01',	8,	9168.0,		'?'),
	('Freight Cargo - Central Corridor - Import',																'08.04.02',	8,	4142.0,		'?'),
	('Freight Cargo - Northern Corridor - Export',																'08.05.01',	8, 10243.0,		'?'),
	('Freight Cargo - Northern Corridor - Import',																'08.05.02',	8, 25360.0,		'?'),
	('Construction of Roll-on Roll-off vessels (international)',												'08.06.01',	8,	   5.0,		'Vessels'),
	('Construction of domestic (Ro’Pax) passenger ferries',														'08.07.01',	8,	  10.0,		'Ferries'),
	('Unit cost of building transport infrastructure - Upgrading roads to paved standard',						'08.08.01',	8,	   3.1,		'Mn per km'),
	('Unit cost of building transport infrastructure - Rehabilitation/reconstruction of paved roads',			'08.08.02',	8,	   1.8,		'Mn per km'),
	('Unit cost of building transport infrastructure - Average cost for construction of unpaved/ gravel road',	'08.08.03',	8,	  40.0,		'Mn per km'),
	('Unit cost of building transport infrastructure - Rehabilitation of metre gauge rail infrastructure',		'08.08.04',	8,	   5.0,		'Mn per km'),
	('Development of Aids to Navigation',																		'08.09.01',	8,	   0.0,		'?'),
	('Development of search and rescue facilities (USD)',														'08.10.01',	8,200000.0,		'USD'),
	('Average infrastructure life span - Tarmac roads',															'08.11.01',	8,	  18.0,		'Years'),
	('Average infrastructure life span - First class murram',													'08.11.02',	8,	   2.0,		'Years'),
	('Fatality per 100,000 vehicles (road transport)',															'08.12.01',	8,	  26.0,		'Fatalities'),
	('Total fatalities (Water transport)',																		'08.13.01',	8,	 160.0,		'Fatalities');
-- 9
insert NDP3.ProgrammeKeyResults (Name, NDP3Reference, ProgrammeID,Baseline, Units) values
	('Increase proportion of the population with access to electricity',		'09.01.01',	9,	  24.0,		'Percent'),
	('Increase primary energy consumption (million tonnes of oil equivalent)',	'09.02.01',	9,	  15.20,	'Million tonnes of oil equivalent'),
	('Increase per capita electricity consumption (kwh per capita)',			'09.03.01',	9,	 100.0,		'kwh per capita'),
	('Increase transmission capacity of High voltage transmission lines (km)',	'09.04.01',	9,	2354.0,		'kw'),
	('Increase grid reliability (percent)',										'09.05.01',	9,	   0.0,		'Percent'),
	('Increase energy generation capacity (MW)',								'09.06.01',	9,	 984.0,		'MW'),
	('Increase the share of clean energy used for cooking ',					'09.07.01',	9,	  15.0,		'Percent'),
	('Reduce share of biomass Energy used for cooking (percent)',				'09.08.01',	9,	  85.0,		'Percent');
-- 10
insert NDP3.ProgrammeKeyResults (Name, NDP3Reference, ProgrammeID,Baseline, Units) values
	('Increase ICT penetration - Internet penetration',											'10.01.01',	10,	25.0,		'Percent'),
	('Increase ICT penetration - Digital Terrestrial TV signal coverage',						'10.01.02',	10,	56.0,		'Percent'),
	('Increase ICT penetration - Population covered by broadband services (percent)',			'10.01.03',	10,	74.0,		'Percent'),
	('Reduce the cost of ICT devices and services - Unit cost of 1Mbps/month of internet',		'10.02.01',	10,	237.0,		'?'),
	('Reduce the cost of ICT devices and services - Unit cost of low entry smart phones (UGX)',	'10.02.02',	10,	100000.0,	'UGX'),
	('Reduce the cost of ICT devices and services - Cost of a computer (UGX)',					'10.02.03',	10,	1600000.0,	'UGX'),
	('Increase fixed broad band connectivity',													'10.03.01',	10,	167000.0,	'?'),
	('ICT contribution to GDP',																	'10.04.01',	10,	2.0,		'?'),
	('ICT directly and indirectly created jobs',												'10.05.01',	10,	0.0,		'Jobs'),
	('Proportion of government services online',												'10.06.01',	10,	20.0,		'Percent'),
	('National broadband coverage with minimum speed of 8 Mbps',								'10.07.01',	10,	31.0,		'Percent');
-- 11
insert NDP3.ProgrammeKeyResults (Name, NDP3Reference, ProgrammeID,Baseline, Units) values
	('Decrease the average travel time per km in GKMA (min/km)',					'11.01.01',	11,	   4.14,	'min/km'),
	('Increase the proportion of titled land, percent',								'11.02.01',	11,	  21.0,		'Percent'),
	('Increase paved urban roads',													'11.03.01',	11,	1253.69,	'?'),
	('Increase proportion of paved urban roads to total urban roads, percent',		'11.04.01',	11,	   6.1,		'Percent'),
	('Decrease urban unemployment rate (percent)',									'11.05.01',	11,	  14.41,	'Percent'),
	('Proportion of urban population living in slums and informal settlements ',	'11.06.01',	11,	  60.0,		'Percent'),
	('Reduce the acute Housing deficit (Million)',									'11.07.01',	11,	   2.2,		'?'),
	('Improve the efficiency of solid waste collection',							'11.08.01',	11,	  30.0,		'?');
-- 12
insert NDP3.ProgrammeKeyResults (Name, NDP3Reference, ProgrammeID,Baseline, Units) values
	('Increase Quality adjusted years of schooling',															'12.01.01',	12,		4.5,	'Years'),
	('Increase average years of schooling',																		'12.02.01',	12,		6.1,	'Years'),
	('Reduced prevalence of under 5 Stunting, percent',															'12.03.01',	12,	   28.9,	'Percent'),
    ('Improve unionization density, percent',																	'12.04.01',	12,	    6.0,	'Percent'),
	('Increase proportion of labour force transitioning into decent employment, percent',						'12.05.01',	12,	   34.5,	'Percent'),
	('Increase percentage of employers satisfied with the training provided by the TVET institutions, percent',	'12.06.01',	12,	   40.0,	'Percent'),	
	('Increase ratio of STEI/STEM graduates to Humanities',														'12.07.01',	12,	  2./7.,	'Ratio'),	-- 2:5
	('Reduce Maternal Mortality ratio (Per 100,000)',															'12.08.01',	12,	  336.0,	'Per 100,000'),
	('Reduced Under 5 Mortality Rate (Per 1,000)',																'12.09.01',	12,	   64.0,	'Per 100,000'),
	('Total Fertility Rate',																					'12.10.01',	12,	    5.4,	'Children?'),	
	('Reduce mortality due to Malaria, AIDS and TB - Malaria',													'12.11.01',	12,	   13.0,	'?'),
	('Reduce mortality due to Malaria, AIDS and TB - AIDS related',												'12.11.02',	12,	    5.0,	'?'),
	('Reduce mortality due to Malaria, AIDS and TB - TB',														'12.11.03',	12,	    4.0,	'?'),	
	('Reduce NCD rates - Hypertension',																			'12.12.01',	12,	    3.2,	'?'),
	('Reduce NCD rates - Diabetic rate',																		'12.12.02',	12,	    2.5,	'?'),
	('Reduce NCD rates - Cancer',																				'12.12.03',	12,	    1.8,	'?'),
	('Reduce NCD rates - Alcohol abuse',																		'12.12.04',	12,	    5.8,	'?'),		
	('Reduce teenage Pregnancy',																				'12.13.01',	12,	   25.0,	'?'),
    ('Increase access to safe water supply - Rural',															'12.14.01',	12,	   73.0,	'?'),
    ('Increase access to safe water supply - Urban',															'12.14.02',	12,	   74.0,	'?'),
	('Increase access to basic sanitation - Improved toilet coverage',											'12.15.01',	12,	   19.0,	'?'),
	('Increase access to basic sanitation - Improved handwashing facility',										'12.15.02',	12,	   34.0,	'?'),
	('Reduce prevalence of child disability',																	'12.16.01',	12,	   13.0,	'?'),
	('Reduce unmet need for Family Planning',																	'12.17.01',	12,	   28.0,	'?'),
	('Increase proportion of workplaces with occupational health services',										'12.18.01',	12,	   20.0,	'?'),
    ('Increase Gender gap index',																				'12.19.01',	12,	    0.523,	'?'),
	('Reduce GBV prevalence',																					'12.20.01',	12,	   56.0,	'?'),
	('Improve compliance to the gender & equity certificate',													'12.21.01',	12,	   95.0,	'?'),
	('Increase proportion of population with access to Universal health care, percent',							'12.22.01',	12,	   44.0,	'Percent'),
	('Proportion of population with access to social insurance, percent',										'12.23.01',	12,	    5.0,	'Percent'),
    ('Improve Uganda’s ranking in niche sports - Football',														'12.24.01',	12,	   77.0,	'Ranking'),
	('Improve Uganda’s ranking in niche sports - Netball',														'12.24.02',	12,	    6.0,	'Ranking'),
	('Improve Uganda’s ranking in niche sports - Athletics',													'12.24.03',	12,	    9.0,	'Ranking'),
	('Improve Uganda’s ranking in niche sports - Rugby',														'12.24.04',	12,	   18.0,	'Ranking'),
	('Increase proportion of workplaces with health wellness programme, percent',								'12.25.01',	12,	   53.0,	'Percent'),
	('Percentage share of national labour force engaged in subsistence',										'12.26.01',	12,	   39.5,	'?');
-- 13
insert NDP3.ProgrammeKeyResults (Name, NDP3Reference, ProgrammeID,Baseline, Units) values
	('Global Innovation Index (percent)',																		'13.01.01',	13,	   25.32,	'Percent'),
	('Gross Expenditure on R&D (GERD) as a percent of GDP',														'13.02.01',	13,		0.4,	'Percent of GDP'),
	('Business enterprise sector spending on R&D (percent of GDP)',												'13.03.01',	13,	    0.01,	'Percent of GDP');
-- 14
insert NDP3.ProgrammeKeyResults (Name, NDP3Reference, ProgrammeID,Baseline, Units) values
	('Increase percentage of Households participating in public development initiatives',									'14.01.01',	14,		60.0,	'Percent'),
	('Increase proportion of the population informed about national programmes',											'14.02.01',	14,		30.0,	'Percent'),
	('Improve percentage of vulnerable and marginalized persons empowered',													'14.03.01',	14,		 1.5,	'Percent'),
	('Increase participation in government programmes - Level of participation in electoral processes (voter turnout)',		'14.04.01',	14,		69.0,	'Percent'),
	('Increase participation in government programmes - Households’ participation in saving schemes (percent)',				'14.04.02',	14,		10.0,	'Percent'),
	('Improve staffing levels for national guidance and community mobilization functions at all levels - Central Level',	'14.05.01',	14,		84.0,	'?'),
	('Improve staffing levels for national guidance and community mobilization functions at all levels - LG Level',			'14.05.02',	14,		86.0,	'?'),
	('Reduce incidence of unethical behavior (corruption, crime rate, theft, immorality) - Corruption perception index',	'14.06.01',	14,		26.0,	'?'),
	('Reduce incidence of unethical behavior (corruption, crime rate, theft, immorality) - Crime rate per 100,000 persons',	'14.06.02',	14,	   612.0,	'Crimes per 100,000 Persons'),
	('Level of satisfaction with public service delivery',																	'14.07.01',	14,		50.0,	'?'),
	('Government effectiveness index',																						'14.08.01',	14,		-0.5,	'?');
-- 15
insert NDP3.ProgrammeKeyResults (Name, NDP3Reference, ProgrammeID,Baseline, Units) values
	('Reduce percentage of backlog cases in the system',									'15.01.01',	15,		18.0,	'Percent'),
	('Increase disposal rate of cases',														'15.02.01',	15,		60.0,	'?'),
	('Increase percentage of districts with one stop frontline JLOS service points',		'15.03.01',	15,		67.5,	'Percent'),
	('Improve Corruption Perception Index',													'15.04.01',	15,		26.0,	'?'),
	('Increase percentage expenditure on R&D',												'15.05.01',	15,		 0.01,	'?'),
	('Increase expenditure on R&D by Security Sector (UGX Billion)',						'15.06.01',	15,		 7.0,	'UGX Billion'),
	('Increase Democratic index',															'15.07.01',	15,		 6.5,	'?'),
	('Attain a 25 percent enrolment in the National service',								'15.08.01',	15,		 0.0,	'Enrolment (Percent)'),
	('Proportion of eligible voters registered',											'15.09.01',	15,		80.0,	'Percent'),	-- Empty in NDP3, copy 15.10.01
	('Increase percentage of citizens engaged in electoral process',						'15.10.01',	15,		80.0,	'Percent'),
	('Improve Peace Index',																	'15.11.01',	15,		 2.196,	'?'),
	('Improve level of implementation of the Settlement Transformative Agenda, percent',	'15.12.01',	15,		40.0,	'Percent');
-- 16
insert NDP3.ProgrammeKeyResults (Name, NDP3Reference, ProgrammeID,Baseline, Units) values
	('Increase Government effectiveness index',	'16.01.01',	16, -0.58,	'?'),
	('Improve Global competitiveness index',	'16.02.01',	16, 48.9,	'?'),
	('Reduce corruption perception index',		'16.03.01',	16,	26.0,	'?');
-- 17
insert NDP3.ProgrammeKeyResults (Name, NDP3Reference, ProgrammeID,Baseline, Units) values
	('Reduce poverty in the lagging regions of Uganda - Bukedi',						'17.01.01',	17,     43.7,	'?'),
	('Reduce poverty in the lagging regions of Uganda - Busoga',						'17.01.02',	17,     37.5,	'?'),
	('Reduce poverty in the lagging regions of Uganda - Elgon',							'17.01.03',	17,     34.5,	'?'),
	('Reduce poverty in the lagging regions of Uganda - West Nile',						'17.01.04',	17,     34.9,	'?'),
	('Reduce poverty in the lagging regions of Uganda - Karamoja',						'17.01.05',	17,     60.2,	'?'),
	('Reduce poverty in the lagging regions of Uganda - Acholi',						'17.01.06',	17,     33.4,	'?'),
	('Reduce poverty in the lagging regions of Uganda - Teso',							'17.01.07',	17,     25.1,	'?'),
	('Reduce poverty in the lagging regions of Uganda - Bunyoro',						'17.01.08',	17,     17.3,	'?'),
	('Increase average monthly household income (UGX)',									'17.02.01',	17, 416000.0,	'UGX'),		-- 17.1 in NDP3, typo.
	('Improve proportion of households reporting better living conditions, percent',	'17.03.01',	17,     45.0,	'Percent');	-- 17.2 in NDP3, typo.
-- 18
insert NDP3.ProgrammeKeyResults (Name, NDP3Reference, ProgrammeID,Baseline, Units) values
	('Attain maximum alignment between the Annual Budgets and the NDPIII at national and programme level',	'18.01.01',	18,    60.0,	'?'),
	('Improve achievement of NDPIII targets, percent',														'18.02.01',	18,     0.0,	'Percent'),
	('Maintain single digit Inflation rate',																'18.03.01',	18,     3.4,	'Percent'),
	('Improve Private sector credit (percent GDP)',															'18.04.01',	18,    11.2,	'Percent GDP'),
	('Increase GDP growth rate',																			'18.05.01',	18,     6.2,	'Percent'),
	('Increase Revenue to GDP ratio',																		'18.06.01',	18,    12.95,	'?'),
	('Increase Proportion of direct budget transfers to local government ',									'18.07.01',	18,    12.0,	'Percent'),
	('Improve on World Bank Statistical Capacity Indicator (WBSCI) score',									'18.08.01',	18,    74.4,	'?'),
	('Government Effectiveness index',																		'18.09.01',	18,    -0.5,	'?'),
	('Proportion of NDPIII baseline indicators up-to-date & updated',										'18.10.01',	18,    60.0,	'Percent');
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

select '170';
go