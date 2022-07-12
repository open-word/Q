use Uganda;
go

create table Plans
(
	PlanID int,
	Name nvarchar(100),
	ShortName nvarchar(25),
	Reference as format(PlanID,'D2'),
	ReferenceName as format(PlanID,'D2') + ' - ' + Name,
	ReferenceShortName as format(PlanID,'D2') + ' - ' + ShortName,
	constraint PK_Plans primary key (PlanID),
	constraint UQ_Plans_Name unique (Name),
	constraint UQ_Plans_ShortName unique (ShortName)
);
go

insert Plans (PlanID, Name, ShortName) values
 ( 3,'Third National Development Plan', 'NDPIII');
go

--select * from Plans;

select '1.1'
go