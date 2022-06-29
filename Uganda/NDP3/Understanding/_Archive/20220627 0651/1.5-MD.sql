use Understanding;
go

create table MD
(
	MinistryID nchar(25),
	DistrictID nchar(25),
	constraint PK_MD primary key (MinistryID, DistrictID),
	constraint FK_MD_M foreign key (MinistryID) references M (MinistryID),
	constraint FK_MD_D foreign key (DistrictID) references D (DistrictID)
);
go

insert MD (MinistryID, DistrictID) values
	('Ministry 1','District 1'),
	('Ministry 1','District 2'),
	('Ministry 2','District 1'),
	('Ministry 2','District 2');

--select * from MD;

select '1.5'
go