use Uganda;
go

insert NDP3.ProgrammeKeyResults (Name, NDP3Reference, ProgrammeID,Baseline, Units) values
	('Increase Quality adjusted years of schooling',															'12.01',	12,		4.5, 'Years'),
	('Increase average years of schooling',																		'12.02',	12,		6.1, 'Years'),
	('Reduced prevalence of under 5 Stunting, percent',															'12.03',	12,	   28.9, 'Percent'),
    ('Improve unionization density, percent',																	'12.04',	12,	    6.0, 'Percent'),
	('Increase proportion of labour force transitioning into decent employment, percent',						'12.05',	12,	   34.5, 'Percent'),

	('Increase percentage of employers satisfied with the training provided by the TVET institutions, percent',	'12.06',	12,	   40.0, 'Percent'),	
	('Increase ratio of STEI/ STEM graduates to Humanities',													'12.07',	12,	  2./7., 'Ratio'),	-- 2:5
	('Reduce Maternal Mortality ratio (Per 100,000)',															'12.08',	12,	  336.0, 'Per 100,000'),
	('Reduced Under 5 Mortality Rate (Per 1,000)',																'12.09',	12,	   64.0, 'Per 100,000'),
	('Total Fertility Rate',																					'12.10',	12,	    5.4, 'Children?'),

	('Reduce mortality due to Malaria, AIDS and TB',															'12.11',	12,	   22.0, '?'),
	('Reduce NCD rates',																						'12.12',	12,	   13.3, '?'),
	('Reduce teenage Pregnancy',																				'12.13',	12,	   25.0, '?'),
    ('Increase access to safe water supply',																	'12.14',	12,	  147.0, '?'),
	('Increase access to basic sanitation',																		'12.15',	12,	   53.0, '?'),

	('Reduce prevalence of child disability',																	'12.16',	12,	   13.0,	'?'),
	('Reduce unmet need for Family Planning',																	'12.17',	12,	   28.0,	'?'),
	('Increase proportion of workplaces with occupational health services',										'12.18',	12,	   20.0,	'?'),
    ('Increase Gender gap index',																				'12.19',	12,	    0.523,	'?'),
	('Reduce GBV prevalence',																					'12.20',	12,	   56.0,	'?'),

	('Improve compliance to the gender & equity certificate',													'12.21',	12,	   95.0, '?'),
	('Increase proportion of population with access to Universal health care, percent',							'12.22',	12,	   44.0, 'Percent'),
	('Proportion of population with access to social insurance, percent',										'12.23',	12,	    5.0, 'Percent'),
    ('Improve Uganda’s ranking in niche sports (football, athletics, netball, boxing, rugby etc.)',				'12.24',	12,	  110.0, '?'),
	('Increase proportion of workplaces with health wellness programme, percent',								'12.25',	12,	   53.0, 'Percent'),

	('Percentage share of national labour force engaged in subsistence',										'12.26',	12,	   39.5, '?');
go

select '04.12';
go