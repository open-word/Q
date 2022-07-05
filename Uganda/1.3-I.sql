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
	(4  , 'Indicator 02.02', '02.02' );

--select * from I;

select '1.3'
go