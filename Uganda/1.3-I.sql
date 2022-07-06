use Uganda;
go

create table I
(
	IndicatorID int,
	Name nvarchar(250),
	Reference nvarchar(10),
	ReferenceName as Reference + '-' + Name,
	constraint PK_I primary key (IndicatorID)
);

insert I (IndicatorID, Name, Reference) values
	(1  , 'Indicator 01.01', '01.01' ),
	(2  , 'Indicator 01.02', '01.02' ),
	(3  , 'Indicator 02.01', '02.01' ),
	(4  , 'Indicator 02.02', '02.02' ),
	(5  , 'Indicator 03.01', '03.01' ),
	(6  , 'Indicator 03.02', '03.02' ),
	(7  , 'Indicator 04.01', '04.01' ),
	(8  , 'Indicator 04.02', '04.02' );

--select * from I;

select '1.3'
go