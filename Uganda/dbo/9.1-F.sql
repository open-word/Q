use Uganda;
go

create table F
(
	FrameworkID int,
	Name nvarchar(250),
	Ref nchar(2),
	constraint PK_F primary key (FrameworkID),
	constraint UQ_F_Name unique (Name),
	constraint UQ_F_Ref unique (Ref)
);
go

insert F (FrameworkID, Name, Ref) values
(1  ,'UN 2030 Agenda for Sustainable Development',	'UN'),
(2  ,'African Union Agenda 2063',					'AU'),
(3  ,'East African Community Vision 2050',			'EA');
go

--select * from F;

select '9.1'
go